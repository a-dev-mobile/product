// ignore_for_file: public_member_api_docs, sort_constructors_first, lines_longer_than_80_chars

import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

import 'package:product/core/storage/local_storage.dart';
import 'package:product/feature/search/search.dart';
import 'package:product/navigation/app_router.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit({required AppRouter router, required LocalStorage storage})
      : _go = router,
        _storage = storage,
        super(const CategoryState());

  final LocalStorage _storage;
  final AppRouter _go;

  Future<void> load() async {
    emit(state.copyWith(isLoad: true));
    final categories = await _storage.getSelectedCategories();
    emit(state.copyWith(isLoad: false, categories: categories));
  }

  void closePage() {
    _go.router.pop();
  }

  void goBack(BuildContext context) {
    Navigator.pop(context, state.idActive);
  }

  void selected({required CategoryModel category, bool? value}) {
    final categories = state.categories;
    final newActiveindex = categories.indexOf(category);
    final oldActiveIndex = categories.indexWhere((i) => i.isActive);

    final oldActiveCategory = categories[oldActiveIndex];
    final newActiveCategory = categories[newActiveindex];
    categories[oldActiveIndex] = oldActiveCategory.copyWith(isActive: false);

    categories[newActiveindex] =
        categories[newActiveindex].copyWith(isActive: value);

    emit(
      state.copyWith(
        categories: categories,
        idActive: newActiveCategory.id,
      ),
    );
  }
}

@immutable
class CategoryState {
  final List<CategoryModel> categories;
  final int idActive;
  final bool isLoad;

  const CategoryState({
    this.categories = const [],
    this.idActive = -1,
    this.isLoad = false,
  });

  CategoryState copyWith({
    List<CategoryModel>? categories,
    int? idActive,
    bool? isLoad,
  }) {
    return CategoryState(
      categories: categories ?? this.categories,
      idActive: idActive ?? this.idActive,
      isLoad: isLoad ?? this.isLoad,
    );
  }

  @override
  String toString() =>
      'CategoryState(categories: $categories, idActive: $idActive, isLoad: $isLoad)';

  @override
  bool operator ==(covariant CategoryState other) {
    if (identical(this, other)) return true;

    return listEquals(other.categories, categories) &&
        other.idActive == idActive &&
        other.isLoad == isLoad;
  }

  @override
  int get hashCode => categories.hashCode ^ idActive.hashCode ^ isLoad.hashCode;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categories': categories.map((x) => x.toMap()).toList(),
      'idActive': idActive,
      'isLoad': isLoad,
    };
  }

  factory CategoryState.fromMap(Map<String, dynamic> map) {
    return CategoryState(
      categories: List<CategoryModel>.from(
        (map['categories'] as List<int>).map<CategoryModel>(
          (x) => CategoryModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
      idActive: map['idActive'] as int,
      isLoad: map['isLoad'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryState.fromJson(String source) =>
      CategoryState.fromMap(json.decode(source) as Map<String, dynamic>);
}
