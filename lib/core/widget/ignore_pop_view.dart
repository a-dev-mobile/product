import 'package:flutter/material.dart';

class IgnorePopView extends StatelessWidget {
  const IgnorePopView({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: child,
    );
  }
}
