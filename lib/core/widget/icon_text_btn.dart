import 'package:flutter/material.dart';

class IconTextBtnEdit extends StatelessWidget {
  const IconTextBtnEdit({super.key, this.onPressed});
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: const Icon(
        Icons.edit,
        size: 15,
      ),
      label: const Text('изменить'),
      style: TextButton.styleFrom(
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    );
  }
}
