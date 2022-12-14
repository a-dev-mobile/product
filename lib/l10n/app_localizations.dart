import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ru.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ru')
  ];

  /// No description provided for @app_name.
  ///
  /// In ru, this message translates to:
  /// **'Состав продуктов'**
  String get app_name;

  /// No description provided for @continueTo.
  ///
  /// In ru, this message translates to:
  /// **'Продолжить'**
  String get continueTo;

  /// No description provided for @start.
  ///
  /// In ru, this message translates to:
  /// **'Начать'**
  String get start;

  /// No description provided for @welcome.
  ///
  /// In ru, this message translates to:
  /// **'Добро пожаловать'**
  String get welcome;

  /// No description provided for @no_internet.
  ///
  /// In ru, this message translates to:
  /// **'Отсутствует доступ к интернету'**
  String get no_internet;

  /// No description provided for @field_must_be_completed.
  ///
  /// In ru, this message translates to:
  /// **'Это поле необходимо заполнить'**
  String get field_must_be_completed;

  /// No description provided for @you_entered_1_3_characters.
  ///
  /// In ru, this message translates to:
  /// **'Вы ввели 1/3 символов'**
  String get you_entered_1_3_characters;

  /// No description provided for @you_entered_2_3_characters.
  ///
  /// In ru, this message translates to:
  /// **'Вы ввели 2/3 символов'**
  String get you_entered_2_3_characters;

  /// No description provided for @next.
  ///
  /// In ru, this message translates to:
  /// **'Далее'**
  String get next;

  /// No description provided for @main.
  ///
  /// In ru, this message translates to:
  /// **'Главная'**
  String get main;

  /// No description provided for @apply.
  ///
  /// In ru, this message translates to:
  /// **'Применить'**
  String get apply;

  /// No description provided for @confirm.
  ///
  /// In ru, this message translates to:
  /// **'Подтвердить'**
  String get confirm;

  /// No description provided for @change.
  ///
  /// In ru, this message translates to:
  /// **'Изменить'**
  String get change;

  /// No description provided for @setting.
  ///
  /// In ru, this message translates to:
  /// **'Настройки'**
  String get setting;

  /// No description provided for @app_lang.
  ///
  /// In ru, this message translates to:
  /// **'Язык приложения'**
  String get app_lang;

  /// No description provided for @lang_ru.
  ///
  /// In ru, this message translates to:
  /// **'Русский'**
  String get lang_ru;

  /// No description provided for @lang_en.
  ///
  /// In ru, this message translates to:
  /// **'Английский'**
  String get lang_en;

  /// No description provided for @generalError.
  ///
  /// In ru, this message translates to:
  /// **'Упс, Что то случилось!\nПопробуйте еще раз'**
  String get generalError;

  /// No description provided for @launch.
  ///
  /// In ru, this message translates to:
  /// **'Запуск'**
  String get launch;

  /// No description provided for @load.
  ///
  /// In ru, this message translates to:
  /// **'Загрузка...'**
  String get load;

  /// No description provided for @thank_you.
  ///
  /// In ru, this message translates to:
  /// **'Спасибо Вам, что пользуетесь нашим приложением'**
  String get thank_you;

  /// No description provided for @about.
  ///
  /// In ru, this message translates to:
  /// **'О приложении'**
  String get about;

  /// No description provided for @rate_app.
  ///
  /// In ru, this message translates to:
  /// **'Оценить приложение'**
  String get rate_app;

  /// No description provided for @feedback.
  ///
  /// In ru, this message translates to:
  /// **'Обратная связь'**
  String get feedback;

  /// No description provided for @exit_app.
  ///
  /// In ru, this message translates to:
  /// **'Выход из приложения'**
  String get exit_app;

  /// No description provided for @yes.
  ///
  /// In ru, this message translates to:
  /// **'Да'**
  String get yes;

  /// No description provided for @no.
  ///
  /// In ru, this message translates to:
  /// **'Нет'**
  String get no;

  /// No description provided for @no_data.
  ///
  /// In ru, this message translates to:
  /// **'Нет данных'**
  String get no_data;

  /// No description provided for @all_product.
  ///
  /// In ru, this message translates to:
  /// **'Все продукты'**
  String get all_product;

  /// No description provided for @app_theme.
  ///
  /// In ru, this message translates to:
  /// **'Тема приложения'**
  String get app_theme;

  /// No description provided for @dark_theme.
  ///
  /// In ru, this message translates to:
  /// **'Темная'**
  String get dark_theme;

  /// No description provided for @light_theme.
  ///
  /// In ru, this message translates to:
  /// **'Светлая'**
  String get light_theme;

  /// No description provided for @you_recently_searched.
  ///
  /// In ru, this message translates to:
  /// **'Вы недавно искали'**
  String get you_recently_searched;

  /// No description provided for @clear.
  ///
  /// In ru, this message translates to:
  /// **'Очистить'**
  String get clear;

  /// No description provided for @privacy_policy.
  ///
  /// In ru, this message translates to:
  /// **'Политика конфиденциальности'**
  String get privacy_policy;

  /// No description provided for @g.
  ///
  /// In ru, this message translates to:
  /// **'г'**
  String get g;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'ru': return AppLocalizationsRu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
