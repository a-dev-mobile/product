// ignore_for_file: lines_longer_than_80_chars, avoid_print

import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:product/app/style/style.dart';

import 'package:product/core/widget/widget.dart';
import 'package:product/dataBase/app_database.dart';

class TestAppPage extends StatelessWidget {
  const TestAppPage({super.key});
  static const path = '/test-app';
  static const name = 'test_app';
  @override
  Widget build(BuildContext context) {
    return const _TestFlashLibPage();
  }
}

class _TestFlashLibPage extends StatelessWidget {
  const _TestFlashLibPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClearFocus(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TextField(),
              ElevatedButton(
                onPressed: () {
                  _showTopFlash(context: context);
                },
                child: const Text('1'),
              ),
              ElevatedButton(
                onPressed: () {
                  _showTopFlash2(context: context);
                },
                child: const Text('2'),
              ),
              ElevatedButton(
                onPressed: () {
                  MySnackBar.show(
                    context: context,
                    alertType: AlertType.warning,
                    textBtn: 'click',
                    msg: 'asdasdasd fas as fas fs faf ',
                    onPressed: () {
                      print('click');
                    },
                    title:
                        'ошиas das das das das dasиas das das das das dasиas das das das das dasиas das das das das dasиas das das das das dasиas das das das das dasиas das das das das das dasd asd asd as daбка',
                  );
                },
                child: const Text('3'),
              ),
              ElevatedButton(
                onPressed: () async {
              
                  await context.read<AppDatabase>().getNameRuNutrient();
                },
                child: const Text('open db'),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _showTopFlash({
    FlashBehavior style = FlashBehavior.floating,
    required BuildContext context,
  }) {
    showFlash<void>(
      context: context,
      // duration: const Duration(seconds: 2),
      persistent: false,
      builder: (_, controller) {
        return Flash<void>(
          controller: controller,
          enableVerticalDrag: false,
          behavior: style,
          position: FlashPosition.top,
          child: Container(
            constraints: const BoxConstraints(maxHeight: 100, minHeight: 45),
            width: double.infinity,
            color: const Color(0xff33CC66),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(width: 5),
                SvgPicture.asset(
                  'assets/svg/ic_snackbar_positive_1.svg',
                  height: 20,
                ),
                const SizedBox(width: 5),
                Expanded(
                  child: Text(
                    'text',
                    maxLines: 10,
                    style: AppTextStyle.SEMI_BOLD_14(
                      color: const Color(0xffffffff),
                    ).copyWith(height: 1),
                  ),
                ),
                const SizedBox(width: 5),
                IconButton(
                  onPressed: () => controller.dismiss(),
                  icon: SvgPicture.asset(
                    'assets/svg/ic_close.svg',
                    height: 15,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _showTopFlash2({required BuildContext context}) {
    showFlash<void>(
      context: context,
      // duration: const Duration(seconds: 2),

      builder: (_, controller) {
        return Flash<Widget>(
          controller: controller,
          enableVerticalDrag: false,
          behavior: FlashBehavior.fixed,
          position: FlashPosition.top,
          child: MyAlert(
            alertType: AlertType.success,
            title:
                'dd sds s d12sdfsdfsdfsd a sd das das das das dfsd sd fssdf 3',
            // textMsg: ' s s s s msd fsd fsd sasda sd as as as as  sd s sd sg',
            // textBtn: '333 bsd fsd dsasdasdasd asd as da ds sd s sd s tn',
            isVisible: true,
            onPressedClose: controller.dismiss,
          ),
        );
      },
    );
  }
}
