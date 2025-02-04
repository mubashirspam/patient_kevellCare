import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kevell_care/configure/color/maian_color.dart';

import 'custom_theme_extension.dart';

ThemeData lightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    colorScheme: const ColorScheme.light(
      background: MainConfigColorsLightTheme.background,
    ),

    scaffoldBackgroundColor: MainConfigColorsLightTheme.background,
    extensions: [CustomThemeExtension.lightMode],
    appBarTheme: const AppBarTheme(
      backgroundColor: MainConfigColorsLightTheme.background,
      elevation: 0,
      titleTextStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    tabBarTheme: const TabBarTheme(
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(
          color: Colors.white,
          width: 2,
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: MainConfigColorsLightTheme.primary,
        foregroundColor: MainConfigColorsLightTheme.background,
        splashFactory: NoSplash.splashFactory,
        elevation: 0,
        shadowColor: Colors.transparent,
      ),
    ),
     textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 16,
        color: MainConfigColorsLightTheme.textPrimary,
      ),
      headlineLarge: TextStyle(
        fontSize: 28,
        color: MainConfigColorsLightTheme.textPrimary,
        fontWeight: FontWeight.bold,
      ),
      
      headlineMedium: TextStyle(
        fontSize: 18,
        color: MainConfigColorsLightTheme.textPrimary,
        fontWeight: FontWeight.bold,
      ),
      headlineSmall: TextStyle(
        fontSize: 14,
        color: MainConfigColorsLightTheme.textPrimary,
        fontWeight: FontWeight.bold,
      ),
      
      titleLarge: TextStyle(
          fontSize: 14,
          color: MainConfigColorsLightTheme.textSecondary,
          fontWeight: FontWeight.bold),
      titleMedium: TextStyle(
          fontSize: 14,
          color: MainConfigColorsLightTheme.textSecondary,
          fontWeight: FontWeight.normal),
      titleSmall: TextStyle(
          fontSize: 12,
          color: MainConfigColorsLightTheme.textSecondary,
          fontWeight: FontWeight.normal),
    ),
  );
}



