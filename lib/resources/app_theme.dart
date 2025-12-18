import 'package:flutter/material.dart';
import 'package:riverpod_skeleton/resources/app_color.dart';
import 'package:riverpod_skeleton/resources/resource_helper.dart';

class AppTheme {
  AppTheme._(); // Private constructor to prevent instantiation
  static final AppTheme _instance = AppTheme._();
  static AppTheme get instance => _instance;


  static ThemeData get lightTheme {
    return ThemeData(
      scaffoldBackgroundColor: R.color.bg_common,
      appBarTheme: AppBarTheme(
        backgroundColor: R.color.app_main,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      textTheme: TextTheme(
        headlineMedium: TextStyle(color: R.color.text_content),
        bodyMedium: TextStyle(color: R.color.text_title_black),
      ),
      colorScheme: ColorScheme.fromSeed(seedColor: R.color.app_main),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: R.color.app_main,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }
}
