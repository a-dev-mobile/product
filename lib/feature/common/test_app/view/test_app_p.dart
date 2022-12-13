// ignore_for_file: lines_longer_than_80_chars, avoid_print

import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:product/app/common_cubits/common_cubits.dart';
import 'package:product/app/style/style.dart';
import 'package:product/core/widget/widget.dart';

import 'package:product/feature/common/test_app/cubit/test_app_cubit.dart';

import 'package:product/l10n/l10n.dart';

class TestAppPage extends StatelessWidget {
  const TestAppPage({super.key});
  static const path = '/test-app';
  static const name = 'test_app';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TestAppCubit(
     
      ),
      child: const _TestFlashLibPage(),
    );
  }
}

class _TestFlashLibPage extends StatelessWidget {
  const _TestFlashLibPage();

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    return Scaffold(
      body: SafeArea(
        child: ClearFocus(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      context.read<TestAppCubit>().loadNameNutrient();
                    },
                    child: Text('open ${l.app_name}'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.read<LocaleCubit>().changeLocale();
                    },
                    child: const Text('change locale'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.read<ThemeCubit>().changeTheme();
                    },
                    child: const Text('change theme'),
                  ),
                ],
              ),
              // const Text(API_KEY_DADATA),
              // const Text(BASE_URL),
              BlocBuilder<TestAppCubit, TestAppState>(
                builder: (context, state) {
                  if (state.isLoad) return const LinearProgressIndicator();

                  return Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.nameNutrient.length,
                      itemBuilder: (context, index) {
                        final name = state.nameNutrient[index];

                        return ListTile(
                          title: Text(name),
                        );
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ignore: unused_element
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
                    style: AppTextStyles.s14w500h20(
                      const Color(0xffffffff),
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

  // ignore: unused_element
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
