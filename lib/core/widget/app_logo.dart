import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    super.key,
    this.size = 192.0,
  });
  final double size;

  @override
  Widget build(BuildContext context) {
    // for nado_deneg
    return Image.asset(
      'assets/image/logo.png',
      width: size,
      height: size,
    );
  }
}
