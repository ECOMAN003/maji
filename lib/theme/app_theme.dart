import 'package:flutter/material.dart';

class AppColors {
  // Core Brand Colors
  static const Color primary = Color(0xFF15A4EC); // Water blue
  static const Color primaryDark = Color(0xFF0E7BB0); // Darker shade
  static const Color secondary = Color(0xFF29D4A0); // Aqua green
  static const Color accent = Color(0xFF005792); // Deep water blue

  // Neutral Colors
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color grayLight = Color(0xFFF2F2F2);
  static const Color gray = Color(0xFF9E9E9E);
  static const Color grayDark = Color(0xFF2C2C2C);

  // Semantic (Success, Error, Warning)
  static const Color success = Color(0xFF4CAF50);
  static const Color error = Color(0xFFE53935);
  static const Color warning = Color(0xFFFFA000);
}

// Light Theme
final ThemeData lightTheme = ThemeData(
  fontFamily: 'Montserrat',
  brightness: Brightness.light,
  primaryColor: AppColors.primary,
  scaffoldBackgroundColor: AppColors.white,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.primary,
    foregroundColor: AppColors.white,
    elevation: 0,
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: AppColors.primary,
  ),
  colorScheme: ColorScheme.light(
    primary: AppColors.primary,
    secondary: AppColors.secondary,
    error: AppColors.error,
  ),
);

// Dark Theme
final ThemeData darkTheme = ThemeData(
  fontFamily: 'Montserrat',
  brightness: Brightness.dark,
  primaryColor: AppColors.primaryDark,
  scaffoldBackgroundColor: AppColors.grayDark,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.grayDark,
    foregroundColor: AppColors.white,
    elevation: 0,
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: AppColors.primaryDark,
  ),
  colorScheme: ColorScheme.dark(
    primary: AppColors.primaryDark,
    secondary: AppColors.secondary,
    error: AppColors.error,
  ),
);