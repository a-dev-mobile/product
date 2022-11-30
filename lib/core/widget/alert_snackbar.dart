
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:product/app/style/style.dart';



class MySnackBar {
  static void show({
    required BuildContext context,
    required AlertType alertType,
    required String title,
    String? msg,
    String? textBtn,
    FlashPosition position = FlashPosition.top,
    Duration? duration,
    bool isAddPaddingBottom = false,
    void Function()? onPressed,
  }) {
    final _ = showFlash(
      context: context,
      duration: duration,
      persistent: false,
      builder: (_, controller) {
        return Flash<void>(
          controller: controller,
          behavior: FlashBehavior.fixed,
          position: position,
          child: MyAlert(
            alertType: alertType,
            title: title,
            isAddPaddingBottom: isAddPaddingBottom,
            textMsg: msg,
            textBtn: textBtn,
            isVisible: true,
            onPressed: onPressed,
            onPressedClose: controller.dismiss,
          ),
        );
      },
    );
  }
}

enum AlertType { info, warning, success, error }

class MyAlert extends StatelessWidget {
  const MyAlert({
    super.key,
    required this.alertType,
    required this.title,
    this.textMsg,
    this.textBtn,
    this.onPressed,
    this.padding,
    this.onPressedClose,
    this.isVisible = false,
    this.pathIconCustom,
    this.widgetMsg,
    this.isAddPaddingBottom = false,
  });

  final EdgeInsetsGeometry? padding;
  final String? textMsg;
  final Widget? widgetMsg;
  final String? textBtn;
  final String title;
  final bool isAddPaddingBottom;
  final AlertType alertType;
  final void Function()? onPressed;
  final void Function()? onPressedClose;
  final bool isVisible;
  final String? pathIconCustom;

  _AlertChangingElements _getDiffer(AlertType alertType) {
    switch (alertType) {
      case AlertType.info:
        return _AlertChangingElements(
          colorBg: const Color(0xffF1F7FC),
          colorBtn: const Color(0xffE3ECF2),
          colorText: const Color(0xff34668E),
          pathIcon: 'assets/svg/ic_info.svg',
          pathIconClose: 'assets/svg/ic_info_close.svg',
        );

      case AlertType.warning:
        return _AlertChangingElements(
          colorBg: const Color(0xffFDFAE3),
          colorBtn: const Color(0xffFAEFC7),
          colorText: const Color(0xff4E451A),
          pathIcon: 'assets/svg/ic_warning.svg',
          pathIconClose: 'assets/svg/ic_warning_close.svg',
        );
      case AlertType.success:
        return _AlertChangingElements(
          colorBg: const Color(0xffF7FDF7),
          colorBtn: const Color(0xffE6F2E8),
          colorText: const Color(0xff00752B),
          pathIcon: 'assets/svg/ic_success.svg',
          pathIconClose: 'assets/svg/ic_success_close.svg',
        );
      case AlertType.error:
        return _AlertChangingElements(
          colorBg: const Color(0xffFFF6F6),
          colorBtn: const Color(0xffFFF6F6),
          colorText: const Color(0xff923131),
          pathIcon: 'assets/svg/ic_error.svg',
          pathIconClose: 'assets/svg/ic_error_close.svg',
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    final diff = _getDiffer(alertType);

    return Visibility(
      visible: isVisible,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: padding,
            decoration: BoxDecoration(
              color: diff.colorBg,
              border: const Border.fromBorderSide(
                BorderSide(color: Color(0xffE5E5E5)),
              ),
            ),
            width: double.infinity,
            child: Wrap(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(width: 10),
                    SizedBox(
                      height: 15,
                      child: SvgPicture.asset(
                        pathIconCustom ?? diff.pathIcon,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                     
                        title,
                        style: AppTextStyle.SEMI_BOLD_14(
                          color: diff.colorText,
                        ),
                      ),
                    ),
                    Material(
                      color: diff.colorBg,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: IconButton(
                        icon: SvgPicture.asset(
                          diff.pathIconClose,
                        ),
                        onPressed: onPressedClose,
                      ),
                    ),
                  ],
                ),
                if (textMsg != null || widgetMsg != null)
                  Container(
                    padding:
                        const EdgeInsets.only(left: 35, right: 15, bottom: 10),
                    alignment: Alignment.centerLeft,
                    child: textMsg != null
                        ? Text(
                          
                            textMsg!,
                          
                            style: AppTextStyle.REGULAR_14(
                                // color: diff.colorText,
                                ),
                          )
                        : widgetMsg!,
                  ),
                if (textBtn != null)
                  Container(
                    width: double.infinity,
                    padding:
                        const EdgeInsets.only(right: 35, left: 35, bottom: 5),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: diff.colorBtn,
                        foregroundColor: diff.colorText,
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: onPressed,
                      child: Text(textBtn!),
                    ),
                  ),
              ],
            ),
          ),
          if (isAddPaddingBottom) const SizedBox(height: 20),
        ],
      ),
    );
  }
}

class _AlertChangingElements {
  final String pathIconClose;
  final String pathIcon;
  final Color colorBg;
  final Color colorBtn;
  final Color colorText;
  _AlertChangingElements({
    required this.pathIconClose,
    required this.pathIcon,
    required this.colorBg,
    required this.colorBtn,
    required this.colorText,
  });
}
