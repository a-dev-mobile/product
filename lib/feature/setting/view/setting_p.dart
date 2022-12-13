import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:package_info_plus/package_info_plus.dart';
import 'package:product/feature/common/enum.dart';
import 'package:product/feature/setting/setting_tab.dart';
import 'package:product/l10n/l10n.dart';
import 'package:product/navigation/navigation.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});
  static const path = '/setting';
  static const name = 'Setting';

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SettingCubit(
            router: context.read<AppRouter>(),
            cubitLocale: context.read(),
            cubitTheme: context.read(),
          ),
        ),
      ],
      child: const _SettingTabPage(),
    );
  }
}

class _SettingTabPage extends StatelessWidget {
  const _SettingTabPage();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SettingCubit>();
    final l = context.l10n;

    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Text(l.app_lang),
            BlocBuilder<SettingCubit, SettingState>(
              buildWhen: (p, c) => p.locale != c.locale,
              builder: (context, state) {
                return Wrap(
                  spacing: 2,
                  children: [
                    _ChipThemeLang(
                      onSelected: (v) => cubit.changeLocale(Locale.en),
                      selected: state.locale == Locale.en,
                      text: l.lang_en,
                    ),
                    _ChipThemeLang(
                      onSelected: (v) => cubit.changeLocale(Locale.ru),
                      selected: state.locale == Locale.ru,
                      text: l.lang_ru,
                    ),
                  ],
                );
              },
            ),
            Text(l.app_theme),
            BlocBuilder<SettingCubit, SettingState>(
              buildWhen: (p, c) => p.theme != c.theme,
              builder: (context, state) {
                return Wrap(
                  spacing: 2,
                  children: [
                    _ChipThemeLang(
                      onSelected: (v) =>
                          cubit.changeTheme(theme: ThemeMode.light),
                      selected: state.theme == ThemeMode.light,
                      text: l.light_theme,
                    ),
                    _ChipThemeLang(
                      onSelected: (v) =>
                          cubit.changeTheme(theme: ThemeMode.dark),
                      selected: state.theme == ThemeMode.dark,
                      text: l.dark_theme,
                    ),
                  ],
                );
              },
            ),
            const _Item(
              title: 'Персональные данные',
            ),
            const Divider(),
            const _Item(
              title: 'Документы',
            ),
            const Divider(),
            const _Item(
              title: 'Пароль & Быстрый вход',
            ),
            const Divider(),
            _Item(
              title: 'О приложении',
              onTap: () => _onAboutAppPressed(context),
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }

  Future<void> _onAboutAppPressed(BuildContext context) async {
    final packageInfo = await PackageInfo.fromPlatform();

    showAboutDialog(
      applicationIcon: SvgPicture.asset(
        'assets/svg/logo.svg',
      ),
      applicationName: 'NadoDeneg',
      context: context,
      applicationVersion: '${packageInfo.version} | ${packageInfo.buildNumber}',
    );
  }
}

class _ChipThemeLang extends StatelessWidget {
  const _ChipThemeLang({
    required this.onSelected,
    required this.text,
    required this.selected,
  });

  final void Function(bool)? onSelected;
  final String text;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(text),
      selected: selected,
      onSelected: onSelected,
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({
    required this.title,
    this.onTap,
  });
  final String title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      trailing: const Icon(Icons.navigate_next),
      title: Text(title),
      contentPadding: EdgeInsets.zero,
    );
  }
}
