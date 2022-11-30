import 'package:product/l10n/app_localizations.dart';
import 'package:flutter/widgets.dart';
export 'package:product/l10n/app_localizations.dart';

extension AppLocalizationsX on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);
}
