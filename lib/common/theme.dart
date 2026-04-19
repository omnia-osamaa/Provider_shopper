import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // Backgrounds
  static const Color background    = Color(0xFF0D0D0D);
  static const Color surface       = Color(0xFF161616);
  static const Color surfaceAlt    = Color(0xFF1C1C1C);
  static const Color border        = Color(0xFF242424);
  static const Color borderAlt     = Color(0xFF2E2E2E);

  // Brand
  static const Color primary       = Colors.yellow;
  static const Color primaryText   = Colors.black;

  // Text
  static const Color textPrimary   = Colors.white;
  static const Color textSecondary = Color(0x73FFFFFF); 
  static const Color textMuted     = Color(0x66FFFFFF); 
  static const Color textHint      = Color(0x61FFFFFF); 

  // Misc
  static const Color iconMuted     = Color(0x61FFFFFF);
  static const Color divider       = Color(0xFF222222);
}

final appTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppColors.background,
  colorSchemeSeed: AppColors.primary,
  useMaterial3: true,
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontFamily: 'Corben',
      fontWeight: FontWeight.w900,
      fontSize: 24,
      color: AppColors.textPrimary,
      letterSpacing: -0.5,
    ),
    titleLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: AppColors.textPrimary,
    ),
  ),
);