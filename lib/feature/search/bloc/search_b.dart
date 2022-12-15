// ignore_for_file: unused_field, lines_longer_than_80_chars

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:product/app/common_cubits/common_cubits.dart';

import 'package:product/core/storage/storage.dart';
import 'package:product/core/utils/utils.dart';

import 'package:product/data_base/data_base.dart';
import 'package:product/feature/category/view/category_p.dart';
import 'package:product/feature/common/enum.dart';
import 'package:product/feature/search/search.dart';
import 'package:product/l10n/l10n.dart';
import 'package:product/navigation/navigation.dart';

part 'search_e.dart';
part 'search_s.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc({
    required LocalStorage storage,
    required AppDatabase db,
    required AppRouter router,
    required LocaleCubit cubitLocale,
  })  : _storage = storage,
        _db = db,
        _cubitLocale = cubitLocale,
        _go = router,
        super(const SearchState()) {
    on<SearchEventStarted>(_onStarted);
    on<SearchEventFind>(_onFind, transformer: restartable());
    on<SearchEventFindSelectedCategory>(_onFindSelectedCategory);
    on<SearchEventClean>(_onClean);

    on<SearchEventDecrementWeight>(_onDecrementWeight);
    on<SearchEventIncrementWeight>(_onIncrementWeight);
    on<SearchEventProductsFileredPosition>(_onProductsFileredPosition);
    on<SearchEventUpdateUnfocusWeight>(_onUpdateUnfocusWeight);
  }
  static const int _incrDecrValue = 10;
  final AppDatabase _db;
  final AppRouter _go;
  final LocalStorage _storage;
  final LocaleCubit _cubitLocale;

  //
  Future<void> _onStarted(
    SearchEventStarted event,
    Emitter<SearchState> emit,
  ) async {
    await _db.copyDb();
    await _checkLastSearch(emit);
    _statusInit(emit);
  }

  Future<void> _checkLastSearch(Emitter<SearchState> emit) async {
    final listSearch = await _storage.getListSearch();

    emit(state.copyWith(lastEnterTexts: listSearch.reversed.toList()));
  }

  void _statusInit(Emitter<SearchState> emit) =>
      emit(state.copyWith(statusSearch: SearchStatus.initial));

  void _statusLoad(Emitter<SearchState> emit) =>
      emit(state.copyWith(statusSearch: SearchStatus.loading));

  void _statusSuccess(Emitter<SearchState> emit) =>
      emit(state.copyWith(statusSearch: SearchStatus.success));

  void _statusEmpty(Emitter<SearchState> emit) =>
      emit(state.copyWith(statusSearch: SearchStatus.empty));

  void _statusError(Emitter<SearchState> emit, [String msg = '']) =>
      emit(state.copyWith(statusSearch: SearchStatus.empty, msgError: msg));

  Future<void> _onFind(
    SearchEventFind event,
    Emitter<SearchState> emit,
  ) async {
    _statusLoad(emit);
    final find = event.find;

    final isValid = _isValidAndCheck(emit: emit, value: find);

    if (!isValid) {
      await _checkLastSearch(emit);
      _statusInit(emit);

      return;
    }

    // выдержка перед поиском для ввода текста поиска

    await Future<void>.delayed(const Duration(milliseconds: 1000));
    // чтобы запросы пропускались если время не прошло
    // https://github.com/felangel/bloc/issues/3349#issuecomment-1128950124
    if (emit.isDone) return;

    final locale = _cubitLocale.state.name;

    try {
      final result = await _db.getProduct(
        find: find,
        locale: locale,
      );
      final products = result.products;
      final categories = result.categories;

      //  поиск во всех категориях
      final selectedCategory = <SelectedCategoryModel>[
        SelectedCategoryModel(name: event.l.all_product, isActive: true),
      ];
      var isShowMenuSelectedCategory = false;

      for (final e in categories) {
        selectedCategory.add(SelectedCategoryModel(name: e.name, id: e.id));
      }
      // если категорий меньше 2 убираем первый элемент - все категории
      if (selectedCategory.length == 2) {
        final _ = selectedCategory.removeAt(0);
        // если у нас 1 категория, то делаю ее активной
        selectedCategory.first =
            selectedCategory.first.copyWith(isActive: true);

        isShowMenuSelectedCategory = false;
      } else if (selectedCategory.length == 3) {
        isShowMenuSelectedCategory = false;
      } else {
        isShowMenuSelectedCategory = true;
      }
      // сохраняю для страницы выбор категории
      await _storage.setSelectedCategories(selectedCategory);

      if (products.isEmpty) {
        _statusEmpty(emit);

        return;
      } else {
        unawaited(_storage.setLastSearch(find));
        emit(
          state.copyWith(
            isShowMenuSelectedCategory: isShowMenuSelectedCategory,
            categories: selectedCategory,
            productsBase: products,
            productsFiltered: products,
            productsFileredLength: products.length,
          ),
        );
        _statusSuccess(emit);
      }
    } on Exception catch (e) {
      addError(e);

      _statusError(emit, e.toString());
    }
  }

  FutureOr<void> _onClean(SearchEventClean event, Emitter<SearchState> emit) {
    _checkLastSearch(emit);
    emit(
      state.copyWith(
        validSearch: const ValidSearch.pure(),
        statusValid: FormzStatus.pure,
        categories: [],
      ),
    );
    _statusInit(emit);
  }

  bool _isValidAndCheck({
    required Emitter<SearchState> emit,
    required String value,
  }) {
    final validSearch = ValidSearch.dirty(value: value);
    emit(
      state.copyWith(
        validSearch: validSearch,
        statusValid: Formz.validate([validSearch]),
      ),
    );

    return state.statusValid.isValidated;
  }

  FutureOr<void> _onDecrementWeight(
    SearchEventDecrementWeight event,
    Emitter<SearchState> emit,
  ) {
    _calculateWeight(
      emit: emit,
      typeCalculate: WeightCalculationType.decrement,
      id: event.id,
    );
  }

  FutureOr<void> _onIncrementWeight(
    SearchEventIncrementWeight event,
    Emitter<SearchState> emit,
  ) {
    _calculateWeight(
      emit: emit,
      typeCalculate: WeightCalculationType.increment,
      id: event.id,
    );
  }

  void _calculateWeight({
    required Emitter<SearchState> emit,
    required int id,
    int customWeight = 0,
    required WeightCalculationType typeCalculate,
  }) {
    final listProduct = state.productsFiltered;

    final currentIndex = listProduct.indexWhere((e) => e.id == id);
    final currentProduct = listProduct[currentIndex];

    var weight = 0;

    typeCalculate.map(
      increment: () {
        weight = currentProduct.weight + _incrDecrValue;
      },
      decrement: () {
        weight = currentProduct.weight - _incrDecrValue;
      },
      custom: () {
        weight = customWeight;
      },
    );

    if (weight < 0) weight = 0;

    final newListNutrients = <NutrientModel>[];
    //
    // ignore: omit_local_variable_types
    double result = 0;
    
    for (final i in currentProduct.nutrients) {
      result = double.parse(i.valueBase) * weight / 100;
      newListNutrients.add(
        i.copyWith(
          value: MyNumberFormat.nutrient(result),
        ),
      );
    }

    listProduct[currentIndex] =
        currentProduct.copyWith(weight: weight, nutrients: newListNutrients);

    emit(
      state.copyWith(
        productsFiltered: listProduct,
        isUpdateListProduct: true,
      ),
    );
    emit(state.copyWith(isUpdateListProduct: false));
  }

  List<SelectedCategoryModel> _changeActiveCategory(int activeCategory) {
    final categories = state.categories;
    final newActiveindex = categories.indexWhere((i) => i.id == activeCategory);

    final oldActiveIndex = categories.indexWhere((i) => i.isActive);

    final oldActiveCategory = categories[oldActiveIndex];

    categories[oldActiveIndex] = oldActiveCategory.copyWith(isActive: false);

    categories[newActiveindex] =
        categories[newActiveindex].copyWith(isActive: true);

    return categories;
  }

  Future<FutureOr<void>> _onFindSelectedCategory(
    SearchEventFindSelectedCategory event,
    Emitter<SearchState> emit,
  ) async {
    final context = event.context;

    var categoriesNew = <SelectedCategoryModel>[];
    int? idCategory;

    if (event.isOpenPageCategories) {
      await _storage.setSelectedCategories(state.categories);
      // ignore: use_build_context_synchronously
      idCategory = await Navigator.push<int>(
        context,
        MaterialPageRoute(
          builder: (context) => const CategoryPage(),
        ),
      );
    }

    // if id category is null, use from event
    final categoryActual = idCategory ?? event.idCategory;

    categoriesNew = _changeActiveCategory(categoryActual);

    // product selection always from a base database
    var products = state.productsBase;
    if (!categoryActual.isNegative) {
      products = products.where((e) => e.idCategory == categoryActual).toList();
    }

    emit(
      state.copyWith(
        categories: categoriesNew,
        productsFiltered: products,
        productsFileredLength: products.length,
        productsFileredPosition: 1,
      ),
    );
  }

  FutureOr<void> _onProductsFileredPosition(
    SearchEventProductsFileredPosition event,
    Emitter<SearchState> emit,
  ) {
    final index = event.index;

    emit(state.copyWith(productsFileredPosition: index));
  }

  FutureOr<void> _onUpdateUnfocusWeight(
    SearchEventUpdateUnfocusWeight event,
    Emitter<SearchState> emit,
  ) {
    _calculateWeight(
      emit: emit,
      typeCalculate: WeightCalculationType.custom,
      id: event.id,
      customWeight: event.weight,
    );
  }
}
