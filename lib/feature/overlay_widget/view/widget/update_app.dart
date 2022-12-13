// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';

import 'package:product/app/style/style.dart';
import 'package:product/core/widget/widget.dart';
import 'package:url_launcher/url_launcher.dart';

class UpdateAppPage extends StatelessWidget {
  const UpdateAppPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/image/logo.png',
                height: 48,
              ),
              const SizedBox(height: 32),
              Text(
                'Доступна новая версия приложения!',
                style:
                    AppTextStyles.s20w600h24( const Color(0xff42534F)),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              Text(
                'Обновите NadoDeneg, чтобы иметь доступ к новым функциям и возможностям!',
                style: AppTextStyles.s14w400h20( const Color(0xff6C817C)),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              BasicButton(
                isTextBtn: true,
                // ignore: prefer-extracting-callbacks
                onPressed: () async {
                  await _runUrl(
                    'https://play.google.com/store/apps/details?id=ru.nadodeneg.mobile',
                  );
                },
                text: 'Google Play',
              ),
              BasicButton(
                isTextBtn: true,
                onPressed: () async {
                  await _runUrl('https://appgallery.huawei.com/app/C204743937');
                },
                text: 'AppGallery',
              ),
              BasicButton(
                isTextBtn: true,
                onPressed: () async {
                  await _runUrl(
                    'https://apps.rustore.ru/app/ru.nadodeneg.mobile',
                  );
                },
                text: 'RuStore',
              ),
            ],
          ),
        ),
      ],
    );
  }

  Future<void> _runUrl(String value) async {
    final url = Uri.parse(value);
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      // ignore: only_throw_errors
      throw 'Could not launch $url';
    }
  }
}
