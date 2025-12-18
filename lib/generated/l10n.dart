// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Login`
  String get text_login {
    return Intl.message('Login', name: 'text_login', desc: '', args: []);
  }

  /// `Logout`
  String get text_logout {
    return Intl.message('Logout', name: 'text_logout', desc: '', args: []);
  }

  /// `Welcome to the App`
  String get text_welcome {
    return Intl.message(
      'Welcome to the App',
      name: 'text_welcome',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get text_email {
    return Intl.message('Email', name: 'text_email', desc: '', args: []);
  }

  /// `Password`
  String get text_password {
    return Intl.message('Password', name: 'text_password', desc: '', args: []);
  }

  /// `Refresh`
  String get text_refresh {
    return Intl.message('Refresh', name: 'text_refresh', desc: '', args: []);
  }

  /// `Submit`
  String get text_submit {
    return Intl.message('Submit', name: 'text_submit', desc: '', args: []);
  }

  /// `Loading...`
  String get text_loading {
    return Intl.message('Loading...', name: 'text_loading', desc: '', args: []);
  }

  /// `Please enter a valid email address.`
  String get error_invalid_email {
    return Intl.message(
      'Please enter a valid email address.',
      name: 'error_invalid_email',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 6 characters.`
  String get error_invalid_password_length {
    return Intl.message(
      'Password must be at least 6 characters.',
      name: 'error_invalid_password_length',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain at least one uppercase letter and one special character.`
  String get error_password {
    return Intl.message(
      'Password must contain at least one uppercase letter and one special character.',
      name: 'error_password',
      desc: '',
      args: [],
    );
  }

  /// `This field is required.`
  String get error_required_field {
    return Intl.message(
      'This field is required.',
      name: 'error_required_field',
      desc: '',
      args: [],
    );
  }

  /// `Login failed. Please try again.`
  String get error_login_failed {
    return Intl.message(
      'Login failed. Please try again.',
      name: 'error_login_failed',
      desc: '',
      args: [],
    );
  }

  /// `An unexpected error occurred. {errorDetails}`
  String error_generic(Object errorDetails) {
    return Intl.message(
      'An unexpected error occurred. $errorDetails',
      name: 'error_generic',
      desc: '',
      args: [errorDetails],
    );
  }

  /// `Login Screen`
  String get screen_login_title {
    return Intl.message(
      'Login Screen',
      name: 'screen_login_title',
      desc: '',
      args: [],
    );
  }

  /// `Dashboard`
  String get screen_dashboard_title {
    return Intl.message(
      'Dashboard',
      name: 'screen_dashboard_title',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[Locale.fromSubtags(languageCode: 'en')];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
