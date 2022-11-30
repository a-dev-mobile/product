import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:product/core/storage/local_storage.dart';
import 'package:product/core/widget/widget.dart';

import 'package:product/feature/splash/splash.dart';
import 'package:product/navigation/app_router.dart';
import 'package:product/navigation/navigation.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  static const path = '/splash';
  static const name = 'Splash';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => SplashCubit(
        router: context.read<AppRouter>(),
        storage: context.read<LocalStorage>(),
    
      )..load(),
      child: const _SplashView(),
    );
  }
}

class _SplashView extends StatelessWidget {
  const _SplashView();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: AppLogo()),
    );
  }
}
