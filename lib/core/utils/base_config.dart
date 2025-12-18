
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:riverpod_skeleton/core/utils/app_constants.dart';
import 'package:riverpod_skeleton/resources/resource_helper.dart';

class BaseResourceConfig{
  static const Path = "assets/images/";
  static const Package_Module = "skeleton";
}

class AppLocalizationConfig {

  static List<LocalizationsDelegate<dynamic>> delegates = [
    GlobalMaterialLocalizations.delegate, // Default local text
    GlobalCupertinoLocalizations.delegate, // Cupertino style
    GlobalWidgetsLocalizations.delegate, // Default text orientation
    R.delegate
  ];

  static List<Locale> locales = R.delegate.supportedLocales;

  static Locale currentLocal() => Locale(
    AppData.currentCountry.languageCode,
    AppData.currentCountry.countryCode,
  );

}

class AppData {
  AppData._(); // Private constructor to prevent instantiation

  static final CountryData _currentCountry = CountryData.EN;
  static CountryData get currentCountry => _currentCountry;
}