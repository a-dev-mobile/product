import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

/// Cupertino-styled rectangle button with rounded corners
///  // ignore_for_file: avoid-nested-conditional-expressions
class BasicButton extends StatelessWidget {
  const BasicButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.isLoad = false,
    this.disabled = false,
    this.isTextBtn = false,
    this.isUnderlinedText = false,
    this.colorText,
    this.isMin = false,
  });
  final void Function()? onPressed;
  final bool isLoad;
  final bool disabled;
  final bool isTextBtn;
  final bool isMin;
  final bool isUnderlinedText;
  final Color? colorText;
  final String text;
  @override
  Widget build(BuildContext context) {
    final textStyle = isUnderlinedText
        ? TextStyle(decoration: TextDecoration.underline, color: colorText)
        : TextStyle(color: colorText);

    final lottie = Lottie.asset('assets/lottie/load_btn.json');

    return SizedBox(
      height: isMin ? null : 50,
      width: isMin ? null : double.infinity,
      child: isTextBtn
          ? TextButton(
              onPressed: isLoad
                  ? null
                  : disabled
                      ? null
                      : onPressed,
              style: isMin
                  ? TextButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    )
                  : null,
              child: isLoad
                  ? lottie
                  : Text(
                      text,
                      style: textStyle,
                    ),
            )
          : ElevatedButton(
              onPressed: isLoad
                  ? null
                  : disabled
                      ? null
                      : onPressed,
              child: isLoad
                  ? lottie
                  : Text(
                      text,
                      style: textStyle,
                    ),
            ),
    );
  }
}
