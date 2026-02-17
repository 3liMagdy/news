// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get app_name => 'Новости';

  @override
  String get common_ok => 'ОК';

  @override
  String get common_cancel => 'Отмена';

  @override
  String get auth_login => 'Войти';

  @override
  String get auth_register => 'Регистрация';

  @override
  String get auth_email => 'Электронная почта';

  @override
  String get auth_password => 'Пароль';

  @override
  String get auth_username => 'Username';

  @override
  String get auth_phone => 'Phone';

  @override
  String get auth_forgot_password => 'Forgot password?';

  @override
  String get auth_dont_have_account => 'Don\'t have an account? ';

  @override
  String get auth_have_account => 'Already have an account? ';

  @override
  String get auth_sign_in => 'Sign In';

  @override
  String get auth_sign_up => 'Sign Up';

  @override
  String get auth_register_action => 'Register';

  @override
  String get auth_role_prompt => 'I am a';

  @override
  String get auth_role_reporter => 'Media Reporter';

  @override
  String get auth_role_visitor => 'Visitor';

  @override
  String get onboarding_choose_language => 'Выберите язык';

  @override
  String get common_continue => 'Продолжить';
}
