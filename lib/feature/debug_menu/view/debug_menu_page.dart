// ignore_for_file: unused_element, lines_longer_than_80_chars

import 'dart:io';

import 'package:feedback/feedback.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:product/app/common_cubits/common_cubits.dart';
import 'package:product/app/style/style.dart';
import 'package:product/core/storage/local_storage.dart';
import 'package:product/feature/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:product/feature/common/test_app/test_app.dart';
import 'package:product/feature/onboarding/onboarding.dart';
import 'package:product/feature/search/search.dart';
import 'package:product/feature/setting/setting_tab.dart';
import 'package:product/feature/splash/splash.dart';
import 'package:product/navigation/navigation.dart';
import 'package:share_plus/share_plus.dart';

class DebugMenuPage extends StatelessWidget {
  const DebugMenuPage({super.key});

  static const path = '/debug-menu';
  static const name = 'debug_menu';

  @override
  Widget build(BuildContext context) {
    final storage = context.read<LocalStorage>();
    final go = context.read<AppRouter>();
    final cubitDebug = context.read<DebugCubit>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Debug Menu '),
      ),
      body: Stack(
        children: [
          ListView(
            shrinkWrap: true,
            children: [
              const Center(child: Text('---Setting---')),
              BlocBuilder<DebugCubit, DebugState>(
                builder: (context, state) {
                  return SwitchListTile(
                    visualDensity: const VisualDensity(vertical: -3),
                    dense: true,
                    title: const Text('Show device preview'),
                    value: state.isShowDevice,
                    onChanged: cubitDebug.setDevicePreview,
                  );
                },
              ),
              BlocBuilder<DebugCubit, DebugState>(
                builder: (context, state) {
                  return SwitchListTile(
                    visualDensity: const VisualDensity(vertical: -3),
                    dense: true,
                    title: const Text('Show button http log'),
                    value: state.isShowBtnHttpLog,
                    onChanged: cubitDebug.setShowBtnHttpLog,
                  );
                },
              ),
              const Center(child: Text('---Начало---')),
              Wrap(
                children: const [
                  _ItemPage(name: 'splash', route: SplashPage.name),
                  _ItemPage(
                    name: 'onboarding',
                    route: OnBoardingPage.name,
                  ),
                     _ItemPage(
                    name: 'test app',
                    route: TestAppPage.name,
                  ),
                  _ItemPage(
                    name: 'search',
                    route: SearchPage.name,
                  ),
                  _ItemPage(
                    name: 'setting',
                    route: SettingPage.name,
                  ),
                    _ItemPage(
                    name: 'dashboard',
                    route: BottomNavBarPage.name,
                  ),
                ],
              ),
              const Center(child: Text('---Вход---')),
              const Center(child: Text('---Разное---')),
              const Center(child: Text('---Вспомогательные---')),
              const Center(child: Text('---Тестирование функционала---')),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 50,
              color: Theme.of(context).colorScheme.background,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  OutlinedButton(
                    // ignore: prefer-extracting-callbacks
                    onPressed: () async {
                      if (go.router.canPop()) {
                        go.router.pop();
                      }

                      BetterFeedback.of(context).show(
                        (feedback) async {
                          final screenshotFilePath =
                              await writeImageToStorage(feedback.screenshot);

                          final _ = await Share.shareXFiles(
                            [XFile(screenshotFilePath)],
                            text: feedback.text,
                          );
                        },
                      );
                    },
                    child: const Text('FEEDBACK'),
                  ),
                  OutlinedButton(
                    // ignore: prefer-extracting-callbacks
                    onPressed: () async {
                      await storage.clearAll();

                      await _hydratedClean();

                      go.router.goNamed(
                        OnBoardingPage.name,
                      );
                    },
                    child: const Text('RESTART'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _hydratedClean() async {
    final storage = await HydratedStorage.build(
      storageDirectory: kIsWeb
          ? HydratedStorage.webStorageDirectory
          : await getTemporaryDirectory(),
    );
    await storage.clear();
  }

  Future<String> writeImageToStorage(Uint8List feedbackScreenshot) async {
    final output = await getTemporaryDirectory();
    final screenshotFilePath = '${output.path}/feedback.png';
    final screenshotFile = File(screenshotFilePath);
    final _ = await screenshotFile.writeAsBytes(feedbackScreenshot);

    return screenshotFilePath;
  }
}

class _ItemPage extends StatelessWidget {
  const _ItemPage({
    super.key,
    required this.name,
    this.route,
    this.onPressed,
    this.isPushPage = true,
  });

  final String name;
  final bool isPushPage;
  final String? route;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: route != null
          ? () {
              isPushPage
                  ? GoRouter.of(context).pushNamed(route!)
                  : GoRouter.of(context).goNamed(route!);
            }
          : onPressed,
      child: Text(
        name,
        style: AppTextStyles.s20w600h24(),
      ),
    );
  }
}
