import 'package:flutter/material.dart';
import 'package:spotify_app/core/configs/theme/app_colors.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.lightBackground,
    fontFamily: 'Satoshi',
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)))),
    brightness: Brightness.light,
  );

  static final darkTheme = ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.darkBackground,
    fontFamily: 'Satoshi',
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)))),
    brightness: Brightness.dark,
  );
}
