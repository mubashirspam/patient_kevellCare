import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kevell_care/configure/color/maian_color.dart';

import 'custom_theme_extension.dart';

ThemeData darkTheme() {
  final ThemeData base = ThemeData.dark(useMaterial3: false);
  return base.copyWith(
    // backgroundColor: AppColor.backgroundDark,
    colorScheme: const ColorScheme.dark(
      background: MainConfigColorsDarkTheme.background,
    ),
    scaffoldBackgroundColor: MainConfigColorsDarkTheme.background,
    extensions: [CustomThemeExtension.darkMode],
    appBarTheme: const AppBarTheme(
      backgroundColor: MainConfigColorsDarkTheme.background,
      titleTextStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: MainConfigColorsDarkTheme.primary,
      ),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: MainConfigColorsDarkTheme.primary,
        statusBarIconBrightness: Brightness.light,
      ),
      iconTheme: IconThemeData(
        color: MainConfigColorsDarkTheme.primary,
      ),
    ),
    tabBarTheme: const TabBarTheme(
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(
          color: MainConfigColorsDarkTheme.primary,
          width: 2,
        ),
      ),
      unselectedLabelColor: MainConfigColorsDarkTheme.background,
      labelColor: MainConfigColorsDarkTheme.background,
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 16,
        color: MainConfigColorsDarkTheme.textPrimary,
      ),
      headlineLarge: TextStyle(
        fontSize: 28,
        color: MainConfigColorsDarkTheme.textPrimary,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: TextStyle(
        fontSize: 18,
        color: MainConfigColorsDarkTheme.textPrimary,
        fontWeight: FontWeight.bold,
      ),
      headlineSmall: TextStyle(
        fontSize: 14,
        color: MainConfigColorsDarkTheme.textPrimary,
        fontWeight: FontWeight.bold,
      ),
      titleLarge: TextStyle(
          fontSize: 14,
          color: MainConfigColorsDarkTheme.textSecondary,
          fontWeight: FontWeight.bold),
      titleMedium: TextStyle(
          fontSize: 14,
          color: MainConfigColorsDarkTheme.textSecondary,
          fontWeight: FontWeight.normal),
    ),
  );
}
