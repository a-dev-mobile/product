// ignore_for_file: public_member_api_docs, sort_constructors_first


import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:product/core/storage/local_storage.dart';
import 'package:product/core/widget/widget.dart';
import 'package:product/feature/debug_menu/debug_menu.dart';
import 'package:product/feature/onboarding/vew/vew.dart';
import 'package:product/feature/overlay_widget/overlay_widget.dart';
import 'package:product/feature/splash/splash.dart';

abstract class AppRoute {}

final _pageNavigatorKey = GlobalKey<NavigatorState>();


class AppRouter {
  AppRouter({
    required LocalStorage storage,
  }) : _storage = storage;
  final LocalStorage _storage;

  final GoRouter router = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: SplashPage.path,
    routes: [
      ShellRoute(
        navigatorKey: _pageNavigatorKey,
        builder: (_, GoRouterState state, child) {
          return OverlayWidget(
            goRouterState: state,
            child: child,
          );
        },
        routes: [
          GoRoute(
            name: DebugMenuPage.name,
            path: DebugMenuPage.path,
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const DebugMenuPage(),
            ),
          ),
          GoRoute(
            name: SplashPage.name,
            path: SplashPage.path,
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const SplashPage(),
            ),
          ),
          GoRoute(
            name: OnBoardingPage.name,
            path: OnBoardingPage.path,
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const OnBoardingPage(),
            ),
          ),
          GoRoute(
            name: PdfPage.name,
            path: PdfPage.path,
            parentNavigatorKey: _pageNavigatorKey,
            pageBuilder: (context, state) {
              final url = state.extra ?? 'https://www.orimi.com/pdf-test.pdf';

              return NoTransitionPage(
                key: state.pageKey,
                child: PdfPage(
                  url: url.toString(),
                ),
              );
            },
          ),
        ],
      ),
    ],
    errorPageBuilder: (context, state) => NoTransitionPage<void>(
      key: state.pageKey,
      child: Center(
        child: Text(state.error.toString()),
      ),
    ),
  );

  // ignore: long-method
  Future<void> selectedRouter() async {
    final isFirstTime = await _storage.isFirstStart();

    final isOnboardingCompleted = await _storage.isOnboardingCompleted();

    if (isFirstTime || !isOnboardingCompleted) {
      final _ = await _storage.completeFirstStart();
      router.goNamed(
        OnBoardingPage.name,
      );

      return;

      // if you can't find anything

    } else {
      router.goNamed(SplashPage.name);
    }
  }

  Future<void> exitApp(LocalStorage storage) async {
    await storage.clearAll();
    var _ = await storage.completeOnboarding();
    _ = await storage.completeFirstStart();

    router.goNamed(SplashPage.name);
  }
}
