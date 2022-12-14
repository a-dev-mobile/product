// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: lines_longer_than_80_chars


part of 'search_b.dart';

enum SearchStatus { initial, loading, success, failure, empty }

extension SearchStatusX on SearchStatus {
  bool get isInitial => this == SearchStatus.initial;
  bool get isLoading => this == SearchStatus.loading;
  bool get isSuccess => this == SearchStatus.success;
  bool get isFailure => this == SearchStatus.failure;
  bool get isEmpty => this == SearchStatus.empty;
}

@immutable
class SearchState {
  const SearchState({
    this.isUpdateListProduct = false,
    this.msgError = '',
    this.statusSearch = SearchStatus.loading,
    this.statusValid = FormzStatus.pure,
    this.validSearch = const ValidSearch.pure(),
    this.productsBase = const [],
    this.productsFiltered = const [],
    this.productsFileredLength = 0,
    this.lastEnterTexts = const [],
    this.categories = const [],
    this.isUpdateSelectedCategory = false,
    this.isShowMenuSelectedCategory = false,
  });

  final bool isUpdateListProduct;

  final String msgError;

  // enum
  final SearchStatus statusSearch;
  // enum
  final FormzStatus statusValid;

  final ValidSearch validSearch;
  final List<ProductModel> productsBase;
  final List<ProductModel> productsFiltered;
  final int productsFileredLength;
  final List<String> lastEnterTexts;

  final List<SelectedCategoryModel> categories;
  final bool isUpdateSelectedCategory;
  final bool isShowMenuSelectedCategory;

  SearchState copyWith({
    bool? isUpdateListProduct,
    String? msgError,
    SearchStatus? statusSearch,
    FormzStatus? statusValid,
    ValidSearch? validSearch,
    List<ProductModel>? productsBase,
    List<ProductModel>? productsFiltered,
    int? productsFileredLength,
    List<String>? lastEnterTexts,
    List<SelectedCategoryModel>? categories,
    bool? isUpdateSelectedCategory,
    bool? isShowMenuSelectedCategory,
  }) {
    return SearchState(
      isUpdateListProduct: isUpdateListProduct ?? this.isUpdateListProduct,
      msgError: msgError ?? this.msgError,
      statusSearch: statusSearch ?? this.statusSearch,
      statusValid: statusValid ?? this.statusValid,
      validSearch: validSearch ?? this.validSearch,
      productsBase: productsBase ?? this.productsBase,
      productsFiltered: productsFiltered ?? this.productsFiltered,
      productsFileredLength: productsFileredLength ?? this.productsFileredLength,
      lastEnterTexts: lastEnterTexts ?? this.lastEnterTexts,
      categories: categories ?? this.categories,
      isUpdateSelectedCategory: isUpdateSelectedCategory ?? this.isUpdateSelectedCategory,
      isShowMenuSelectedCategory: isShowMenuSelectedCategory ?? this.isShowMenuSelectedCategory,
    );
  }

  @override
  String toString() {
    return 'SearchState(isUpdateListProduct: $isUpdateListProduct, msgError: $msgError, statusSearch: $statusSearch, statusValid: $statusValid, validSearch: $validSearch, productsBase: $productsBase, productsFiltered: $productsFiltered, productsFileredLength: $productsFileredLength, lastEnterTexts: $lastEnterTexts, categories: $categories, isUpdateSelectedCategory: $isUpdateSelectedCategory, isShowMenuSelectedCategory: $isShowMenuSelectedCategory)';
  }

  @override
  bool operator ==(covariant SearchState other) {
    if (identical(this, other)) return true;
  
    return 
      other.isUpdateListProduct == isUpdateListProduct &&
      other.msgError == msgError &&
      other.statusSearch == statusSearch &&
      other.statusValid == statusValid &&
      other.validSearch == validSearch &&
      listEquals(other.productsBase, productsBase) &&
      listEquals(other.productsFiltered, productsFiltered) &&
      other.productsFileredLength == productsFileredLength &&
      listEquals(other.lastEnterTexts, lastEnterTexts) &&
      listEquals(other.categories, categories) &&
      other.isUpdateSelectedCategory == isUpdateSelectedCategory &&
      other.isShowMenuSelectedCategory == isShowMenuSelectedCategory;
  }

  @override
  int get hashCode {
    return isUpdateListProduct.hashCode ^
      msgError.hashCode ^
      statusSearch.hashCode ^
      statusValid.hashCode ^
      validSearch.hashCode ^
      productsBase.hashCode ^
      productsFiltered.hashCode ^
      productsFileredLength.hashCode ^
      lastEnterTexts.hashCode ^
      categories.hashCode ^
      isUpdateSelectedCategory.hashCode ^
      isShowMenuSelectedCategory.hashCode;
  }
}
