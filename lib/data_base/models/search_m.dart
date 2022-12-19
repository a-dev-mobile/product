// ignore_for_file: public_member_api_docs, sort_constructors_first, lines_longer_than_80_chars

import 'package:flutter/foundation.dart';

import 'package:product/data_base/data_base.dart';

@immutable
class SearchModel {
  final List<ProductDbModel> products;
  final List<CategoryDbModel> categories;
  const SearchModel({
    this.products = const [],
    this.categories = const [],
  });

  SearchModel copyWith({
    List<ProductDbModel>? products,
    List<CategoryDbModel>? categories,
  }) {
    return SearchModel(
      products: products ?? this.products,
      categories: categories ?? this.categories,
    );
  }

  @override
  String toString() =>
      'SearchModel(products: $products, categories: $categories)';

  @override
  bool operator ==(covariant SearchModel other) {
    if (identical(this, other)) return true;

    return listEquals(other.products, products) &&
        listEquals(other.categories, categories);
  }

  @override
  int get hashCode => products.hashCode ^ categories.hashCode;
}
