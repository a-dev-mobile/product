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
import 'package:product/feature/search/search.dart';
import 'package:product/l10n/l10n.dart';
import 'package:product/navigation/navigation.dart';

part 'search_e.dart';
part 'search_s.dart';

// ignore: constant_identifier_names

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
    on<SearchEventClean>(_onClean);

    on<SearchEventDecrementWeight>(_onDecrementWeight);
    on<SearchEventIncrementWeight>(_onIncrementWeight);
    on<SearchEventGoToCategories>(_onGoToCategories);
    on<SearchEventChangeActiveCategory>(_onChangeActiveCategory);
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

  // ignore: long-method
  Future<void> _onFind(
    SearchEventFind event,
    Emitter<SearchState> emit,
  ) async {
    _statusLoad(emit);
    final find = event.find;

    final isValid = _isValidAndCheck(emit: emit, value: find);

    if (!isValid) {
      await _checkLastSearch(emit);

      return;
    }

    // ???????????????? ?????????? ?????????????? ?????? ?????????? ???????????? ????????????
    await Future<void>.delayed(const Duration(milliseconds: 500));
    // ?????????? ?????????????? ???????????????????????? ???????? ?????????? ???? ????????????
    // https://github.com/felangel/bloc/issues/3349#issuecomment-1128950124
    if (emit.isDone) return;
    final locale = _cubitLocale.state.name;

    try {
      final result = await _db.getProduct(find: find, locale: locale);
      final products = result.products;
      final categories = result.categories;

      //  ?????????? ???? ???????? ????????????????????
      final selectedCategory = <SelectedCategoryModel>[
        SelectedCategoryModel(name: event.l.all_product, isActive: true),
      ];
      var isShowMenuSelectedCategory = false;

      if (event.isSearchInAllCategories) {
        for (final e in categories) {
          selectedCategory.add(SelectedCategoryModel(name: e.name));
        }
        // ???????? ?????????????????? ???????????? 2 ?????????????? ???????????? ?????????????? - ?????? ??????????????????
        if (selectedCategory.length == 2) {
          final _ = selectedCategory.removeAt(0);
          isShowMenuSelectedCategory = false;
        } else if (selectedCategory.length == 3) {
          isShowMenuSelectedCategory = false;
        } else {
          isShowMenuSelectedCategory = true;
        }
        // ???????????????? ?????? ???????????????? ?????????? ??????????????????
        await _storage.setSelectedCategories(selectedCategory);
      }

      if (products.isEmpty) {
        _statusEmpty(emit);

        return;
      } else {
        unawaited(_storage.setLastSearch(find));
        emit(
          state.copyWith(
            isShowMenuSelectedCategory: isShowMenuSelectedCategory,
            categories: selectedCategory,
            listProducts: products,
            listProductsLength: products.length,
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
    _calculateWeight(emit, isIncrement: false, id: event.id);
  }

  FutureOr<void> _onIncrementWeight(
    SearchEventIncrementWeight event,
    Emitter<SearchState> emit,
  ) {
    _calculateWeight(emit, isIncrement: true, id: event.id);
  }

  void _calculateWeight(
    Emitter<SearchState> emit, {
    required int id,
    required bool isIncrement,
  }) {
    final listProduct = state.listProducts;

    final currentIndex = listProduct.indexWhere((e) => e.id == id);
    final currentProduct = listProduct[currentIndex];

    var weight = isIncrement
        ? currentProduct.weight + _incrDecrValue
        : currentProduct.weight - _incrDecrValue;
    if (weight < 0) weight = 0;

    final newListNutrients = <NutrientModel>[];
    //
    for (final i in currentProduct.nutrients) {
      newListNutrients.add(
        i.copyWith(
          value: AppUtilsNumber.getFormatNumber(
            double.parse(i.valueBase) * weight / 100,
            2,
          ),
        ),
      );
    }

    listProduct[currentIndex] =
        currentProduct.copyWith(weight: weight, nutrients: newListNutrients);

    emit(state.copyWith(listProducts: listProduct, isUpdateListProduct: true));
    emit(state.copyWith(isUpdateListProduct: false));
  }

  Future<FutureOr<void>> _onGoToCategories(
    SearchEventGoToCategories event,
    Emitter<SearchState> emit,
  ) async {
    await _storage.setSelectedCategories(state.categories);

    final context = event.context;

    // ignore: use_build_context_synchronously
    final activeCategory = await Navigator.push<String>(
      context,
      MaterialPageRoute(
        builder: (context) => const CategoryPage(),
      ),
    );

    if (activeCategory != null) {
      final categories = _changeActiveCategory(activeCategory);

      emit(
        state.copyWith(
          categories: categories,
          isUpdateSelectedCategory: true,
        ),
      );
      emit(state.copyWith(isUpdateSelectedCategory: false));
    }
  }

  List<SelectedCategoryModel> _changeActiveCategory(String activeCategory) {
    final categories = state.categories;
    final newActiveindex =
        categories.indexWhere((i) => i.name == activeCategory);

    final oldActiveIndex = categories.indexWhere((i) => i.isActive);

    final oldActiveCategory = categories[oldActiveIndex];

    categories[oldActiveIndex] = oldActiveCategory.copyWith(isActive: false);

    categories[newActiveindex] =
        categories[newActiveindex].copyWith(isActive: true);
    return categories;
  }

  FutureOr<void> _onChangeActiveCategory(
    SearchEventChangeActiveCategory event,
    Emitter<SearchState> emit,
  ) {
    final categories = _changeActiveCategory(event.activeCategory);

    emit(
      state.copyWith(
        categories: categories,
        isUpdateSelectedCategory: true,
      ),
    );
    emit(state.copyWith(isUpdateSelectedCategory: false));
  }
}
