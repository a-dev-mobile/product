import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:crypto/crypto.dart';


import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'package:product/app_bloc_observer.dart';
import 'package:product/core/device/device_info.dart';
import 'package:product/core/log/log.dart';
import 'package:product/core/network/network.dart';
import 'package:product/core/storage/storage.dart';

import 'package:product/navigation/navigation.dart';
import 'package:path_provider/path_provider.dart';

// dart define
const IS_DEBUG = bool.fromEnvironment('IS_DEBUG');
const IS_PROD = bool.fromEnvironment('IS_PROD');
const BASE_URL = String.fromEnvironment('BASE_URL');
const API_KEY_DADATA = String.fromEnvironment('API_KEY_DADATA');
//

Future<void> bootstrap(FutureOr<Widget> Function() app) async {
  await runZonedGuarded(
    () async {
      final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
      FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

      FlutterError.onError = (FlutterErrorDetails details) {
        FlutterError.presentError(details);
        FlutterError.dumpErrorToConsole(details);
        log.e(details.exceptionAsString(), '🚑', details.stack);
      };

      Bloc.observer = AppBlocObserver();
      Bloc.transformer = bloc_concurrency.sequential<Object?>();
      PlatformDispatcher.instance.onError = _onPlatformDispatcherError;

      await _initStatusBar();

      // App Info Output
      final userAgent = await DeviceInfo.getUserAgent();
      final packageName = await DeviceInfo.getPackageName();
      log.i(
        // ignore: lines_longer_than_80_chars
        'IS_DEBUG = $IS_DEBUG |IS_PROD = $IS_PROD\nBASE_URL = $BASE_URL\n$packageName\n$userAgent',
      );

      HydratedBloc.storage = await _hydratedStorageBuild();

      // Bad Certificate for http analize
      if (IS_DEBUG) HttpOverrides.global = MyHttpOverrides();

      runApp(
        MultiRepositoryProvider(
          providers: [
            RepositoryProvider(
              create: (context) => LocalStorage(),
            ),
            RepositoryProvider(
              create: (context) =>
                  AppRouter(storage: context.read<LocalStorage>()),
            ),
          
            RepositoryProvider(
              create: (context) => NetworkClient(
                baseUrl: BASE_URL,
                storage: context.read<LocalStorage>(),
                router: context.read<AppRouter>(), userAgent: userAgent,
                // показывать ли http трафик в логе
              )..isShowHttpInLog = false,
            ),
          ],
          child: await app(),
        ),
      );
    },
    (error, stackTrace) {
      logger.e('App Zone Stack Trace', error.toString(), stackTrace);
    },
  );

  log.v('** close NATIVE splash**');
  FlutterNativeSplash.remove();
}

Future<void> _initStatusBar() async {
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );
}

HydratedAesCipher _encryptionCipher() {
  const password = 'M.=8ZApsH)M=lx#q_Xv6';
  final byteskey = sha256.convert(utf8.encode(password)).bytes;

  return HydratedAesCipher(byteskey);
}

Future<Storage> _hydratedStorageBuild() async {
  return HydratedStorage.build(
    encryptionCipher: _encryptionCipher(),
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getTemporaryDirectory(),
  );
}

bool _onPlatformDispatcherError(Object error, StackTrace stack) {
  logger.e('error: FlutterError', error, stack);

  return true;
}
