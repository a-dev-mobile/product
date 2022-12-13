import 'package:flutter/material.dart';

class ProductFilter extends StatelessWidget {
  const ProductFilter({
    super.key,
    this.onSort,
    this.onFilter,
  });
  final void Function()? onSort;
  final void Function()? onFilter;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 16,
      right: 0,
      left: 0,
      child: ElevatedButton(
            onPressed: onSort,
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(60, 40),
              shape: const CircleBorder(),
            ),
            child: const Icon(Icons.swap_vert),
          ),
    );
  }
}
