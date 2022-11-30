import 'package:flutter/material.dart';
import 'package:product/app/style/typography/app_text_styles.dart';

class DefaultAppBar extends StatelessWidget with PreferredSizeWidget {
  const DefaultAppBar({
    super.key,
    required this.title,
  });

  final String title;

  static TextStyle get titleTextStyle => AppTextStyle.SEMI_BOLD_22(
        color: const Color(0xFF2E2E2E),
      );

  static Size get defaultPreferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Size get preferredSize => defaultPreferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: titleTextStyle,
      ),
      titleSpacing: 20,
    );
  }
}
