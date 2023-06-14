import 'package:flutter/material.dart';

import '../../configure/color/maian_color.dart';

extension ExtendedTheme on BuildContext {
  CustomThemeExtension get theme {
    return Theme.of(this).extension<CustomThemeExtension>()!;
  }
}

class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  final Color? primary;
  final Color? secondary;
  final Color? backround;

  // button

  final Color? buttonBackroundEnable;
  final Color? buttonBackroundDisable;
  final Color? buttonBackroundPressed;

  final Color? buttonForgroundEnable;
  final Color? buttonForgroundDisable;
  final Color? buttonForgroundPressed;

  const CustomThemeExtension({
    this.primary,
    this.secondary,
    this.backround,

    // button
    this.buttonBackroundEnable,
    this.buttonBackroundDisable,
    this.buttonBackroundPressed,
    this.buttonForgroundEnable,
    this.buttonForgroundDisable,
    this.buttonForgroundPressed,
  });

  static const lightMode = CustomThemeExtension(
    primary: MainConfigColorsLightTheme.primary,
    secondary: MainConfigColorsLightTheme.secondary,
    backround: MainConfigColorsLightTheme.background,

    // button

    buttonBackroundEnable: MainConfigColorsLightTheme.primary,
    buttonBackroundDisable: MainConfigColorsLightTheme.primary,
    buttonBackroundPressed: MainConfigColorsLightTheme.primary,

    buttonForgroundEnable: MainConfigColorsLightTheme.primary,
    buttonForgroundDisable: MainConfigColorsLightTheme.primary,
    buttonForgroundPressed: MainConfigColorsLightTheme.primary,
  );

  static const darkMode = CustomThemeExtension(
    primary: MainConfigColorsDarkTheme.primary,
    secondary: MainConfigColorsDarkTheme.secondary,
    backround: MainConfigColorsDarkTheme.background,

    // button

    buttonBackroundEnable: MainConfigColorsDarkTheme.primary,
    buttonBackroundDisable: MainConfigColorsDarkTheme.primary,
    buttonBackroundPressed: MainConfigColorsDarkTheme.primary,

    buttonForgroundEnable: MainConfigColorsDarkTheme.primary,
    buttonForgroundDisable: MainConfigColorsDarkTheme.primary,
    buttonForgroundPressed: MainConfigColorsDarkTheme.primary,
  );

  @override
  ThemeExtension<CustomThemeExtension> copyWith({
    Color? primary,
    Color? secondary,
    Color? backround,

    // button

    Color? buttonBackroundEnable,
    Color? buttonBackroundDisable,
    Color? buttonBackroundPressed,
    Color? buttonForgroundEnable,
    Color? buttonForgroundDisable,
    Color? buttonForgroundPressed,
  }) {
    return CustomThemeExtension(
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      backround: backround ?? this.backround,

      // button

      buttonBackroundEnable:
          buttonBackroundEnable ?? this.buttonBackroundEnable,
      buttonBackroundDisable:
          buttonBackroundDisable ?? this.buttonBackroundDisable,
      buttonBackroundPressed:
          buttonBackroundPressed ?? this.buttonBackroundPressed,

      buttonForgroundEnable:
          buttonForgroundEnable ?? this.buttonForgroundEnable,
      buttonForgroundDisable:
          buttonForgroundDisable ?? this.buttonForgroundDisable,
      buttonForgroundPressed:
          buttonForgroundPressed ?? this.buttonForgroundPressed,
    );
  }

  @override
  ThemeExtension<CustomThemeExtension> lerp(
      ThemeExtension<CustomThemeExtension>? other, double t) {
    if (other is! CustomThemeExtension) return this;
    return CustomThemeExtension(
      primary: Color.lerp(primary, other.primary, t),
      secondary: Color.lerp(secondary, other.secondary, t),
      backround: Color.lerp(backround, other.backround, t),

      // button

      buttonBackroundEnable:
          Color.lerp(buttonBackroundEnable, other.buttonBackroundEnable, t),
      buttonBackroundDisable:
          Color.lerp(buttonBackroundDisable, other.buttonBackroundDisable, t),
      buttonBackroundPressed:
          Color.lerp(buttonBackroundPressed, other.buttonBackroundPressed, t),
      buttonForgroundEnable:
          Color.lerp(buttonForgroundEnable, other.buttonForgroundEnable, t),
      buttonForgroundDisable:
          Color.lerp(buttonForgroundDisable, other.buttonForgroundDisable, t),
      buttonForgroundPressed:
          Color.lerp(buttonForgroundPressed, other.buttonForgroundPressed, t),
    );
  }
}
