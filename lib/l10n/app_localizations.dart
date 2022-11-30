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

  /// No description provided for @sig_contract_sent_code_number.
  ///
  /// In ru, this message translates to:
  /// **'Для подписания договора мы отправили SMS с кодом на номер'**
  String get sig_contract_sent_code_number;

  /// No description provided for @password.
  ///
  /// In ru, this message translates to:
  /// **'Пароль'**
  String get password;

  /// No description provided for @loginPasswordIncorrect.
  ///
  /// In ru, this message translates to:
  /// **'Логин или пароль неверны'**
  String get loginPasswordIncorrect;

  /// No description provided for @i_aware_agree_with_following.
  ///
  /// In ru, this message translates to:
  /// **'Я ознакомлен и согласен со следующим'**
  String get i_aware_agree_with_following;

  /// No description provided for @signing_contract.
  ///
  /// In ru, this message translates to:
  /// **'Подписание договора'**
  String get signing_contract;

  /// No description provided for @incorrect_code_entered.
  ///
  /// In ru, this message translates to:
  /// **'Введен неправильный код'**
  String get incorrect_code_entered;

  /// No description provided for @passport_information.
  ///
  /// In ru, this message translates to:
  /// **'Паспортная информация'**
  String get passport_information;

  /// No description provided for @clickAgainToExit.
  ///
  /// In ru, this message translates to:
  /// **'Нажмите ещё раз чтобы выйти'**
  String get clickAgainToExit;

  /// No description provided for @app_name.
  ///
  /// In ru, this message translates to:
  /// **'Nado Deneg'**
  String get app_name;

  /// No description provided for @amount.
  ///
  /// In ru, this message translates to:
  /// **'Сумма'**
  String get amount;

  /// No description provided for @term.
  ///
  /// In ru, this message translates to:
  /// **'Срок'**
  String get term;

  /// No description provided for @rub.
  ///
  /// In ru, this message translates to:
  /// **'руб'**
  String get rub;

  /// No description provided for @days1.
  ///
  /// In ru, this message translates to:
  /// **'дней'**
  String get days1;

  /// No description provided for @days2.
  ///
  /// In ru, this message translates to:
  /// **'день'**
  String get days2;

  /// No description provided for @days3.
  ///
  /// In ru, this message translates to:
  /// **'дня'**
  String get days3;

  /// No description provided for @amountOfCredit.
  ///
  /// In ru, this message translates to:
  /// **'Сумма кредита'**
  String get amountOfCredit;

  /// No description provided for @percent.
  ///
  /// In ru, this message translates to:
  /// **'Проценты'**
  String get percent;

  /// No description provided for @toMaturity.
  ///
  /// In ru, this message translates to:
  /// **'К погашению'**
  String get toMaturity;

  /// No description provided for @getMoney.
  ///
  /// In ru, this message translates to:
  /// **'Получить деньги'**
  String get getMoney;

  /// No description provided for @get_new_password.
  ///
  /// In ru, this message translates to:
  /// **'Получить новый пароль'**
  String get get_new_password;

  /// No description provided for @iHavePromoCode.
  ///
  /// In ru, this message translates to:
  /// **'Ввести промокод'**
  String get iHavePromoCode;

  /// No description provided for @enterPromoCode.
  ///
  /// In ru, this message translates to:
  /// **'Ввести промокод'**
  String get enterPromoCode;

  /// No description provided for @firstLoan0Percent.
  ///
  /// In ru, this message translates to:
  /// **'Первый заём 0%'**
  String get firstLoan0Percent;

  /// No description provided for @selectAmountAndTerm.
  ///
  /// In ru, this message translates to:
  /// **'Выберите сумму и срок'**
  String get selectAmountAndTerm;

  /// No description provided for @changing_phone_number.
  ///
  /// In ru, this message translates to:
  /// **'Изменение номера телефона'**
  String get changing_phone_number;

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

  /// No description provided for @login.
  ///
  /// In ru, this message translates to:
  /// **'Войти'**
  String get login;

  /// No description provided for @free_charge_russia.
  ///
  /// In ru, this message translates to:
  /// **'Бесплатно по России'**
  String get free_charge_russia;

  /// No description provided for @password_recovery.
  ///
  /// In ru, this message translates to:
  /// **'Восстановление пароля'**
  String get password_recovery;

  /// No description provided for @field_must_be_completed.
  ///
  /// In ru, this message translates to:
  /// **'Это поле необходимо заполнить'**
  String get field_must_be_completed;

  /// No description provided for @start_entering_phone_with_9.
  ///
  /// In ru, this message translates to:
  /// **'Номер телефона начинайте вводить с 9'**
  String get start_entering_phone_with_9;

  /// No description provided for @you_entered_1_10_characters.
  ///
  /// In ru, this message translates to:
  /// **'Вы ввели 1/10 символов'**
  String get you_entered_1_10_characters;

  /// No description provided for @you_entered_2_10_characters.
  ///
  /// In ru, this message translates to:
  /// **'Вы ввели 2/10 символов'**
  String get you_entered_2_10_characters;

  /// No description provided for @you_entered_3_10_characters.
  ///
  /// In ru, this message translates to:
  /// **'Вы ввели 3/10 символов'**
  String get you_entered_3_10_characters;

  /// No description provided for @you_entered_4_10_characters.
  ///
  /// In ru, this message translates to:
  /// **'Вы ввели 4/10 символов'**
  String get you_entered_4_10_characters;

  /// No description provided for @you_entered_5_10_characters.
  ///
  /// In ru, this message translates to:
  /// **'Вы ввели 5/10 символов'**
  String get you_entered_5_10_characters;

  /// No description provided for @you_entered_6_10_characters.
  ///
  /// In ru, this message translates to:
  /// **'Вы ввели 6/10 символов'**
  String get you_entered_6_10_characters;

  /// No description provided for @you_entered_7_10_characters.
  ///
  /// In ru, this message translates to:
  /// **'Вы ввели 7/10 символов'**
  String get you_entered_7_10_characters;

  /// No description provided for @you_entered_8_10_characters.
  ///
  /// In ru, this message translates to:
  /// **'Вы ввели 8/10 символов'**
  String get you_entered_8_10_characters;

  /// No description provided for @you_entered_9_10_characters.
  ///
  /// In ru, this message translates to:
  /// **'Вы ввели 9/10 символов'**
  String get you_entered_9_10_characters;

  /// No description provided for @you_entered_1_11_characters.
  ///
  /// In ru, this message translates to:
  /// **'Вы ввели 1/11 символов'**
  String get you_entered_1_11_characters;

  /// No description provided for @you_entered_2_11_characters.
  ///
  /// In ru, this message translates to:
  /// **'Вы ввели 2/11 символов'**
  String get you_entered_2_11_characters;

  /// No description provided for @you_entered_3_11_characters.
  ///
  /// In ru, this message translates to:
  /// **'Вы ввели 3/11 символов'**
  String get you_entered_3_11_characters;

  /// No description provided for @you_entered_4_11_characters.
  ///
  /// In ru, this message translates to:
  /// **'Вы ввели 4/11 символов'**
  String get you_entered_4_11_characters;

  /// No description provided for @you_entered_5_11_characters.
  ///
  /// In ru, this message translates to:
  /// **'Вы ввели 5/11 символов'**
  String get you_entered_5_11_characters;

  /// No description provided for @you_entered_6_11_characters.
  ///
  /// In ru, this message translates to:
  /// **'Вы ввели 6/11 символов'**
  String get you_entered_6_11_characters;

  /// No description provided for @you_entered_7_11_characters.
  ///
  /// In ru, this message translates to:
  /// **'Вы ввели 7/11 символов'**
  String get you_entered_7_11_characters;

  /// No description provided for @you_entered_8_11_characters.
  ///
  /// In ru, this message translates to:
  /// **'Вы ввели 8/11 символов'**
  String get you_entered_8_11_characters;

  /// No description provided for @you_entered_9_11_characters.
  ///
  /// In ru, this message translates to:
  /// **'Вы ввели 9/11 символов'**
  String get you_entered_9_11_characters;

  /// No description provided for @you_entered_10_11_characters.
  ///
  /// In ru, this message translates to:
  /// **'Вы ввели 10/11 символов'**
  String get you_entered_10_11_characters;

  /// No description provided for @you_entered_1_4_characters.
  ///
  /// In ru, this message translates to:
  /// **'Вы ввели 1/4 символов'**
  String get you_entered_1_4_characters;

  /// No description provided for @you_entered_2_4_characters.
  ///
  /// In ru, this message translates to:
  /// **'Вы ввели 2/4 символов'**
  String get you_entered_2_4_characters;

  /// No description provided for @you_entered_3_4_characters.
  ///
  /// In ru, this message translates to:
  /// **'Вы ввели 3/4 символов'**
  String get you_entered_3_4_characters;

  /// No description provided for @you_entered_1_6_characters.
  ///
  /// In ru, this message translates to:
  /// **'Вы ввели 1/6 символов'**
  String get you_entered_1_6_characters;

  /// No description provided for @you_entered_2_6_characters.
  ///
  /// In ru, this message translates to:
  /// **'Вы ввели 2/6 символов'**
  String get you_entered_2_6_characters;

  /// No description provided for @you_entered_3_6_characters.
  ///
  /// In ru, this message translates to:
  /// **'Вы ввели 3/6 символов'**
  String get you_entered_3_6_characters;

  /// No description provided for @you_entered_4_6_characters.
  ///
  /// In ru, this message translates to:
  /// **'Вы ввели 4/6 символов'**
  String get you_entered_4_6_characters;

  /// No description provided for @you_entered_5_6_characters.
  ///
  /// In ru, this message translates to:
  /// **'Вы ввели 5/6 символов'**
  String get you_entered_5_6_characters;

  /// No description provided for @next.
  ///
  /// In ru, this message translates to:
  /// **'Далее'**
  String get next;

  /// No description provided for @forgot_password.
  ///
  /// In ru, this message translates to:
  /// **'Забыли пароль?'**
  String get forgot_password;

  /// No description provided for @signup.
  ///
  /// In ru, this message translates to:
  /// **'Зарегистрироваться'**
  String get signup;

  /// No description provided for @no_account_yet.
  ///
  /// In ru, this message translates to:
  /// **'Ещё нет аккаунта?'**
  String get no_account_yet;

  /// No description provided for @enter_sur_name.
  ///
  /// In ru, this message translates to:
  /// **'Это обязательное поле. Введите фамилию'**
  String get enter_sur_name;

  /// No description provided for @enter_name.
  ///
  /// In ru, this message translates to:
  /// **'Это обязательное поле. Введите имя'**
  String get enter_name;

  /// No description provided for @required_field.
  ///
  /// In ru, this message translates to:
  /// **'Это обязательное поле'**
  String get required_field;

  /// No description provided for @enter_middle_patronymic.
  ///
  /// In ru, this message translates to:
  /// **'Это обязательное поле. Введите отчество'**
  String get enter_middle_patronymic;

  /// No description provided for @sur_name.
  ///
  /// In ru, this message translates to:
  /// **'Фамилия'**
  String get sur_name;

  /// No description provided for @name.
  ///
  /// In ru, this message translates to:
  /// **'Имя'**
  String get name;

  /// No description provided for @patronymic.
  ///
  /// In ru, this message translates to:
  /// **'Отчество'**
  String get patronymic;

  /// No description provided for @what_gender.
  ///
  /// In ru, this message translates to:
  /// **'Пол'**
  String get what_gender;

  /// No description provided for @male.
  ///
  /// In ru, this message translates to:
  /// **'Мужской'**
  String get male;

  /// No description provided for @female.
  ///
  /// In ru, this message translates to:
  /// **'Женский'**
  String get female;

  /// No description provided for @login_registration.
  ///
  /// In ru, this message translates to:
  /// **'Войти/зарегистрироваться'**
  String get login_registration;

  /// No description provided for @enter_cyrillic_only.
  ///
  /// In ru, this message translates to:
  /// **'Допускаются только русские буквы'**
  String get enter_cyrillic_only;

  /// No description provided for @invalid_characters_used.
  ///
  /// In ru, this message translates to:
  /// **'Используются недопустимые символы'**
  String get invalid_characters_used;

  /// No description provided for @max_text_length.
  ///
  /// In ru, this message translates to:
  /// **'Максимальная длина текста'**
  String get max_text_length;

  /// No description provided for @recover_password_enter_phone_registration.
  ///
  /// In ru, this message translates to:
  /// **'Для восстановления пароля, введите телефон указанный вами ранее при регистрации'**
  String get recover_password_enter_phone_registration;

  /// No description provided for @reset_password_msg.
  ///
  /// In ru, this message translates to:
  /// **'Введите свой номер телефона и мы отправим вам новый пароль для входа в личный кабинет'**
  String get reset_password_msg;

  /// No description provided for @confirming_phone_number.
  ///
  /// In ru, this message translates to:
  /// **'Подтверждение номера телефона'**
  String get confirming_phone_number;

  /// No description provided for @we_sent_sms_code.
  ///
  /// In ru, this message translates to:
  /// **'Мы отправили вам SMS с кодом на номер'**
  String get we_sent_sms_code;

  /// No description provided for @sent_sms_code.
  ///
  /// In ru, this message translates to:
  /// **'Код был отправлен на номер телефона'**
  String get sent_sms_code;

  /// No description provided for @login_your_account.
  ///
  /// In ru, this message translates to:
  /// **'Вход в личный кабинет'**
  String get login_your_account;

  /// No description provided for @password_was_sent.
  ///
  /// In ru, this message translates to:
  /// **'Пароль был ранее выслан на номер'**
  String get password_was_sent;

  /// No description provided for @please_enter_code.
  ///
  /// In ru, this message translates to:
  /// **'Введите код в поле ниже'**
  String get please_enter_code;

  /// No description provided for @loan_card_Russia.
  ///
  /// In ru, this message translates to:
  /// **'Кредит онлайн\nна карту в России'**
  String get loan_card_Russia;

  /// No description provided for @send_code_again.
  ///
  /// In ru, this message translates to:
  /// **'Отправить код еще раз'**
  String get send_code_again;

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

  /// No description provided for @wrongCode.
  ///
  /// In ru, this message translates to:
  /// **'Неверный код. Попробуйте ещё раз'**
  String get wrongCode;

  /// No description provided for @personal_information.
  ///
  /// In ru, this message translates to:
  /// **'Личная информация'**
  String get personal_information;

  /// No description provided for @changing_conditions.
  ///
  /// In ru, this message translates to:
  /// **'Изменение условий'**
  String get changing_conditions;

  /// No description provided for @code_sms.
  ///
  /// In ru, this message translates to:
  /// **'Код из SMS'**
  String get code_sms;

  /// No description provided for @banner_loan_approved.
  ///
  /// In ru, this message translates to:
  /// **'Заявка на кредит одобрена. Для получения денег - подтвердите условия'**
  String get banner_loan_approved;

  /// No description provided for @change.
  ///
  /// In ru, this message translates to:
  /// **'Изменить'**
  String get change;

  /// No description provided for @phone_number.
  ///
  /// In ru, this message translates to:
  /// **'Номер телефона'**
  String get phone_number;

  /// No description provided for @sign_in.
  ///
  /// In ru, this message translates to:
  /// **'Вход в личный кабинет'**
  String get sign_in;

  /// No description provided for @loan_application.
  ///
  /// In ru, this message translates to:
  /// **'Заявка на заём'**
  String get loan_application;

  /// No description provided for @description_under_phone.
  ///
  /// In ru, this message translates to:
  /// **'Указанный вами номер телефона является верификационным, и на него будут отправляться подтверждающие СМС. Также он является логином в личном кабинете'**
  String get description_under_phone;

  /// No description provided for @probability_loan_approval.
  ///
  /// In ru, this message translates to:
  /// **'Вероятность одобрения займа:'**
  String get probability_loan_approval;

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

  /// No description provided for @dark_theme.
  ///
  /// In ru, this message translates to:
  /// **'Темная тема'**
  String get dark_theme;

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

  /// No description provided for @exit_app_warning.
  ///
  /// In ru, this message translates to:
  /// **'Вы уверены, что хотите выйти из приложения?'**
  String get exit_app_warning;

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
