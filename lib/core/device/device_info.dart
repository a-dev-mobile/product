import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';

import 'package:package_info_plus/package_info_plus.dart';

abstract class DeviceInfo {
  static Future<String> getUserAgent() async {
    final deviceInfo = DeviceInfoPlugin();
    final packageInfo = await PackageInfo.fromPlatform();

    final appName = packageInfo.appName;
    final appVersion = packageInfo.version;
    final appBuildNumber = packageInfo.buildNumber;

    final appAndVersion = '$appName | $appVersion/$appBuildNumber';

    if (kIsWeb) {
      final webBrowserInfo = await deviceInfo.webBrowserInfo;

      return 'appAndVersion (${webBrowserInfo.userAgent})';
    }

    if (Platform.isAndroid) {
      final androidInfo = await deviceInfo.androidInfo;

      return '$appAndVersion | ${androidInfo.brand}/${androidInfo.model}';
    }
    if (Platform.isIOS) {
      final iosInfo = await deviceInfo.iosInfo;

      return '$appAndVersion (${iosInfo.utsname.machine})';
    }

    return 'mobile';
  }

  static Future<String> getPackageName() async {
    final packageInfo = await PackageInfo.fromPlatform();

    return packageInfo.packageName;
  }
}
