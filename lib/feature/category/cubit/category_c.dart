// ignore_for_file: public_member_api_docs, sort_constructors_first, lines_longer_than_80_chars

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
    Navigator.pop(context, state.categoryActive);
  }

  void selected({required SelectedCategoryModel category, bool? value}) {
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
        categoryActive: newActiveCategory.name,
      ),
    );
  }
}

@immutable
class CategoryState {
  final List<SelectedCategoryModel> categories;
  final String categoryActive;
  final bool isLoad;

  const CategoryState({
    this.categories = const [],
    this.categoryActive = '',
    this.isLoad = false,
  });

  CategoryState copyWith({
    List<SelectedCategoryModel>? categories,
    String? categoryActive,
    bool? isLoad,
  }) {
    return CategoryState(
      categories: categories ?? this.categories,
      categoryActive: categoryActive ?? this.categoryActive,
      isLoad: isLoad ?? this.isLoad,
    );
  }

  @override
  String toString() =>
      'CategoryState(categories: $categories, categoryActive: $categoryActive, isLoad: $isLoad)';

  @override
  bool operator ==(covariant CategoryState other) {
    if (identical(this, other)) return true;

    return listEquals(other.categories, categories) &&
        other.categoryActive == categoryActive &&
        other.isLoad == isLoad;
  }

  @override
  int get hashCode =>
      categories.hashCode ^ categoryActive.hashCode ^ isLoad.hashCode;
}
