
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:product/app/style/style.dart';
import 'package:product/feature/onboarding/onboarding.dart';
import 'package:product/feature/splash/splash.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  static const path = '/onboarding';
  static const name = 'onboarding';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardingCubit(

        storage: context.read()
      ),
      child: const _OnBoardingView(),
    );
  }
}

class _OnBoardingView extends StatefulWidget {
  const _OnBoardingView();

  @override
  _OnBoardingViewState createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<_OnBoardingView> {
  final introKey = GlobalKey<IntroductionScreenState>();
  int _indexPage = 0;

  Future<bool> _willPopScopeCall(BuildContext context) async {
    GoRouter.of(context).goNamed(SplashPage.name);
// code to show toast or modal

    return false; // return true to exit app or return false to cancel exit
  }

  @override
  Widget build(BuildContext context) {
    final pageDecoration = PageDecoration(
      titleTextStyle: AppTextStyle.headline5(),
      bodyTextStyle: AppTextStyle.headline5(),
      bodyPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      imagePadding: EdgeInsets.zero,
    );

    return WillPopScope(
      onWillPop: () => _willPopScopeCall(context),
      child: IntroductionScreen(
        key: introKey,
        onChange: (index) => setState(() => _indexPage = index),
        pages: [
          PageViewModel(
            title: 'Распределение воды',
            body:
                'Диализные пациенты должны тщательно контролировать потребление жидкости.\nЭто особенно важно, если ваши почки совсем не вырабатывают мочу',
            image: const OnboardingItemImage(
              assetName: 'assets/svg/onb_1.svg',
            ),
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: 'Распределение еды',
            body:
                'Для пациента на гемодиализе с массой тела 70–75 кг диета должна содержать 75–85 г белка и 2500–2800 ккал.\nЕсли не обеспечивается нужное количество белка и энергии, то закономерно развивается питательная (белково-энергетическая) недостаточность.',
            image: const OnboardingItemImage(
              assetName: 'assets/svg/onb_2.svg',
            ),
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: 'Важно!',
            body:
                'Данное приложение не может и не преследует цели заменить Вашего лечашего врача.',
            image: const OnboardingItemImage(
              assetName: 'assets/svg/onb_3.svg',
            ),
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: 'Тест',
            body:
                'Пройдите тест, что бы узнать риски рецидива болезни и получить оптимальные рекомендации.',
            image: const OnboardingItemImage(
              assetName: 'assets/svg/onb_4.svg',
            ),
            decoration: pageDecoration,
          ),
        ],
        showBackButton: true,
        back: const Icon(Icons.arrow_back),
        next: const Icon(Icons.arrow_forward),
        done: const Text('Далее'),
        onDone: context.read<OnboardingCubit>().complectOnboarding,
      ),
    );
  }
}
