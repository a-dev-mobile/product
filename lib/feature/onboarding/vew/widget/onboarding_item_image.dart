import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingItemImage extends StatelessWidget {
  const OnboardingItemImage({super.key, required this.assetName});
  final String assetName;
  @override
  Widget build(BuildContext context) {
    return Image.asset(assetName, width: 150.w);
  }
}
