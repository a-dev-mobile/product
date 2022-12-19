import 'package:flutter/material.dart';

import 'package:product/app/style/style.dart';
import 'package:product/data_base/models/models.dart';
import 'package:product/feature/search/search.dart';
import 'package:product/l10n/l10n.dart';

class SearchItem extends StatelessWidget {
  const SearchItem({
    super.key,
    required this.product,
    required this.onIncrement,
    required this.onDecrement,
    required this.onFavorit,
  });
  final ProductDbModel product;

  final void Function()? onIncrement;
  final void Function()? onDecrement;
  final void Function()? onFavorit;
  @override
  Widget build(BuildContext context) {
    final l = context.l10n;

    return Card(
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    product.product,
                    style: AppTextStyles.h4(),
                  ),
                ),
                IconButton(
                  onPressed: onFavorit,
                  icon: product.isFavorite
                      ? const Icon(
                          Icons.favorite_outlined,
                          color: Colors.red,
                        )
                      : const Icon(Icons.favorite_border),
                ),
              ],
            ),
            const Divider(),
            Text(
              product.category,
              style: AppTextStyles.h6(),
            ),
            Text(
              '${l.data_source}: ${product.source.name}',
              style: AppTextStyles.caption(),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      _WeightRow(
                        weight: product.weight,
                        idProduct: product.id,
                      ),
                      const Divider(),
                      for (var item in product.nutrients)
                        _NutrientElement(
                          name: item.name,
                          value: '${item.value} ${item.unit}',
                        ),
                    ],
                  ),
                ),
              ],
            ),
            // Align(
            //   child: Row(
            //     mainAxisSize: MainAxisSize.min,
            //     children: [
            //       IconButton(
            //         onPressed: onDecrement,
            //         icon: const Icon(
            //           Icons.remove_circle_outline,
            //           size: 40,
            //         ),
            //       ),
            //       IconButton(
            //         onPressed: onIncrement,
            //         icon: const Icon(
            //           Icons.add_circle_outline,
            //           size: 40,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

class _WeightRow extends StatelessWidget {
  const _WeightRow({
    required this.weight,
    required this.idProduct,
  });

  final int weight;
  final int idProduct;

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          l.weight,
          style: AppTextStyles.bodyText1(),
        ),
        WeightField(
          weight: weight,
          idProduct: idProduct,
        ),
      ],
    );
  }
}

class _NutrientElement extends StatelessWidget {
  const _NutrientElement({
    required this.value,
    required this.name,
  });

  final String value;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: AppTextStyles.bodyText1(),
        ),
        Text(
          value,
          style: AppTextStyles.bodyText2(),
        ),
      ],
    );
  }
}
