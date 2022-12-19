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
    this.forceUpdateState = 0,
    this.msgError = '',
    this.statusSearch = SearchStatus.loading,
    this.statusValid = FormzStatus.pure,
    this.validSearch = const ValidSearch.pure(),
    this.productsBase = const [],
    this.productsFiltered = const [],
    this.productsFileredLength = 0,
    this.productsFileredPosition = 1,
    this.lastEnterTexts = const [],
    this.categories = const [],
    this.isShowMenuSelectedCategory = false,
  });

  final double forceUpdateState;

  final String msgError;

  // enum
  final SearchStatus statusSearch;
  // enum
  final FormzStatus statusValid;

  final ValidSearch validSearch;
  final List<ProductDbModel> productsBase;
  final List<ProductDbModel> productsFiltered;
  final int productsFileredLength;
  final int productsFileredPosition;
  final List<String> lastEnterTexts;

  final List<CategoryModel> categories;

  final bool isShowMenuSelectedCategory;

  SearchState copyWith({
    double? forceUpdateState,
    String? msgError,
    SearchStatus? statusSearch,
    FormzStatus? statusValid,
    ValidSearch? validSearch,
    List<ProductDbModel>? productsBase,
    List<ProductDbModel>? productsFiltered,
    int? productsFileredLength,
    int? productsFileredPosition,
    List<String>? lastEnterTexts,
    List<CategoryModel>? categories,
    bool? isShowMenuSelectedCategory,
  }) {
    return SearchState(
      forceUpdateState: forceUpdateState ?? this.forceUpdateState,
      msgError: msgError ?? this.msgError,
      statusSearch: statusSearch ?? this.statusSearch,
      statusValid: statusValid ?? this.statusValid,
      validSearch: validSearch ?? this.validSearch,
      productsBase: productsBase ?? this.productsBase,
      productsFiltered: productsFiltered ?? this.productsFiltered,
      productsFileredLength:
          productsFileredLength ?? this.productsFileredLength,
      productsFileredPosition:
          productsFileredPosition ?? this.productsFileredPosition,
      lastEnterTexts: lastEnterTexts ?? this.lastEnterTexts,
      categories: categories ?? this.categories,
      isShowMenuSelectedCategory:
          isShowMenuSelectedCategory ?? this.isShowMenuSelectedCategory,
    );
  }

  @override
  String toString() {
    return 'SearchState(forceUpdateState: $forceUpdateState, msgError: $msgError, statusSearch: $statusSearch, statusValid: $statusValid, validSearch: $validSearch, productsBase: $productsBase, productsFiltered: $productsFiltered, productsFileredLength: $productsFileredLength, productsFileredPosition: $productsFileredPosition, lastEnterTexts: $lastEnterTexts, categories: $categories, isShowMenuSelectedCategory: $isShowMenuSelectedCategory)';
  }

  @override
  bool operator ==(covariant SearchState other) {
    if (identical(this, other)) return true;

    return other.forceUpdateState == forceUpdateState &&
        other.msgError == msgError &&
        other.statusSearch == statusSearch &&
        other.statusValid == statusValid &&
        other.validSearch == validSearch &&
        listEquals(other.productsBase, productsBase) &&
        listEquals(other.productsFiltered, productsFiltered) &&
        other.productsFileredLength == productsFileredLength &&
        other.productsFileredPosition == productsFileredPosition &&
        listEquals(other.lastEnterTexts, lastEnterTexts) &&
        listEquals(other.categories, categories) &&
        other.isShowMenuSelectedCategory == isShowMenuSelectedCategory;
  }

  @override
  int get hashCode {
    return forceUpdateState.hashCode ^
        msgError.hashCode ^
        statusSearch.hashCode ^
        statusValid.hashCode ^
        validSearch.hashCode ^
        productsBase.hashCode ^
        productsFiltered.hashCode ^
        productsFileredLength.hashCode ^
        productsFileredPosition.hashCode ^
        lastEnterTexts.hashCode ^
        categories.hashCode ^
        isShowMenuSelectedCategory.hashCode;
  }
}
