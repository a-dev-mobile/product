import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          color: Theme.of(context).errorColor,
          width: 1.sw,
          height: 50.h,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              l.no_internet,
              style: AppTextStyle.headline5(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
