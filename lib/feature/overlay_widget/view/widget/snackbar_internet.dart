import 'package:flutter/material.dart';


import 'package:product/app/style/style.dart';
import 'package:product/l10n/l10n.dart';

class SnackbarInternet extends StatelessWidget {
  const SnackbarInternet({super.key, this.isVisible});
  final bool? isVisible;
  @override
  Widget build(BuildContext context) {
    final l = context.l10n;

    if (isVisible == null) return const SizedBox.shrink();

    return Visibility(
      visible: !isVisible!,
      child: Positioned(
        top: 0,
        child: Container(
          color: context.theme.errorColor,
          width: context.widthPx,
          height: 50,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              l.no_internet,
              style: AppTextStyles.s16w500h24(Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
