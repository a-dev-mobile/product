import 'package:flutter/material.dart';
import 'package:product/app/style/style.dart';
import 'package:product/data_base/models/models.dart';
import 'package:product/l10n/l10n.dart';

class SearchItem extends StatelessWidget {
  const SearchItem({
    super.key,
    required this.product,
    required this.onIncrement,
    required this.onDecrement,
  });
  final ProductModel product;

  final void Function()? onIncrement;
  final void Function()? onDecrement;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,

      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.product,
              style: AppTextStyles.h4(),
            ),
            const Divider(),
            Text(
              product.category,
              style: AppTextStyles.h6(),
            ),
            Text(
              product.source.abbrev,
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
                      _WeightRow(weight: product.weight),
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
            Align(
           
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: onDecrement,
                    icon: const Icon(Icons.remove_circle_outline),
                  ),
                  IconButton(
                    onPressed: onIncrement,
                    icon: const Icon(Icons.add_circle_outline),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _WeightRow extends StatelessWidget {
  const _WeightRow({
    required this.weight,
  });

  final int weight;

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '????????????',
          style: AppTextStyles.bodyText1(),
        ),
        Text(
          '$weight ${l.g}',
          style: AppTextStyles.h5(),
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
