import 'package:flutter/material.dart';
import 'style.dart';

final theme = ThemeData(
  primaryColor: primaryMain,
  primaryColorDark: primaryDark,
  primaryColorLight: primaryLight,
  colorScheme: const ColorScheme(
    primary: primaryMain,
    primaryVariant: primaryMain,
    secondary: accentMain,
    secondaryVariant: accentMain,
    surface: yellow,
    background: Colors.white,
    error: feedbackNegative,
    onPrimary: Colors.white,
    onSecondary: accentMain,
    onSurface: Colors.white,
    onBackground: Colors.white,
    onError: feedbackNegative,
    brightness: Brightness.light
  ),
  disabledColor: neutralDisabled,
  errorColor: feedbackNegative,
  scaffoldBackgroundColor: primaryWhite,
);
