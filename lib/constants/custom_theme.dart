import 'package:flutter/material.dart';

///This file contains various custom themes.
///
///For instance, lightTheme, darkTheme, _lightTextTheme, _darkTextTheme, etc.
///These are imported to other files/widgets to apply the required themes.
class RockMusicTheme {
  static const Color _scaffoldBackgroundColor = Color(0xFF18171C);
  static const Color _lightCursorColor = Color(0xFF000000);
  static const Color _lightAccentColor = Color(0xFF000000);
  static const Color _lightPrimaryColor = Color(0xFF8B88EF);
  static const Color _lightOnPrimaryColor = Color(0xFFFFFFFF);
  static const Color _lightPrimaryContainer = Color(0xFF0F1115);
  static const Color _lightonPrimaryContainer = Color(0xFF000000);
  static const Color _lightPrimaryFixed = Color(0xFF18171C);
  static const Color _lightOnPrimaryFixed = Color(0xFF550120);
  static const Color _lightPrimaryFixedDim = Color(0xFFCBC9FF);
  static const Color _lightonPrimaryFixedVariant = Color(0xFF2C2D31);
  static const Color _lightSecondaryColor = Color(0xFFCBC9FF);
  static const Color _lightOnSecondaryColor = Color(0xFFC4C4C4);
  static const Color _lightSecondaryContainer = Color(0xFF61616B);
  static const Color _lightonSecondaryContainer = Color(0xFF000000);
  static const Color _lightSecondaryFixed = Color(0xFF18171C);
  static const Color _lightOnSecondaryFixed = Color(0xFF550120);
  static const Color _lightSecondaryFixedDim = Color(0xFF61616B);
  static const Color _lightonSecondaryFixedVariant = Color(0xFF2C2D31);

  /// Theme for light mode.
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: _scaffoldBackgroundColor,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: _lightCursorColor,
    ),
    primaryColor: _lightPrimaryColor,

    textTheme: _lightTextTheme,
    inputDecorationTheme: _lightInputDecorationTheme,
    colorScheme: const ColorScheme.light(
      primary: _lightPrimaryColor,
      onPrimary: _lightOnPrimaryColor,
      primaryContainer: _lightPrimaryContainer,
      onPrimaryContainer: _lightonPrimaryContainer,
      primaryFixed: _lightPrimaryFixed,
      onPrimaryFixed: _lightOnPrimaryFixed,
      primaryFixedDim: _lightPrimaryFixedDim,
      onPrimaryFixedVariant: _lightonPrimaryFixedVariant,
      secondary: _lightSecondaryColor,
      onSecondary: _lightOnSecondaryColor,
      secondaryContainer: _lightSecondaryContainer,
      onSecondaryContainer: _lightonSecondaryContainer,
      secondaryFixed: _lightSecondaryFixed,
      onSecondaryFixed: _lightOnSecondaryFixed,
      secondaryFixedDim: _lightSecondaryFixedDim,
      onSecondaryFixedVariant: _lightonSecondaryFixedVariant,
    ).copyWith(secondary: _lightAccentColor),
  );

  static const TextTheme _lightTextTheme = TextTheme(
    headlineMedium: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 24,
      fontFamily: 'ProximaNova',
    ),
    headlineSmall: TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontFamily: 'ProximaNova',
    ),
    titleSmall: TextStyle(
      fontFamily: 'ProximaNova',
      color: Color(0xFFFFFFFF),
    ),
    titleMedium: TextStyle(
      fontFamily: 'ProximaNova',
      color: Color(0xFFFFFFFF),
      fontSize: 14,
      fontWeight:FontWeight.w700,

    ),
    titleLarge: TextStyle(
      fontSize: 16,
      color: Color(0xFFFFFFFF),
      fontFamily: 'ProximaNova',
      fontWeight:FontWeight.w700,

    ),
    bodyLarge: TextStyle(
      fontSize: 14,
      color: Color(0xFFFFFFFF),
      fontFamily: 'ProximaNova',
      fontWeight:FontWeight.w700,
    ),
    bodyMedium: TextStyle(fontSize: 14, fontFamily: 'Syne'),
    bodySmall: TextStyle(
      fontWeight: FontWeight.w400,
      color: Color(0xFFFFFFFF),
      fontSize: 12.0,
      fontFamily: 'ProximaNova',
    ),
  );
  static final InputDecorationTheme _lightInputDecorationTheme =
  InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 12,
    ),
    prefixIconColor: _lightOnPrimaryColor,
    hintStyle: _lightTextTheme.titleLarge?.copyWith(
      color: _lightSecondaryContainer,
      fontWeight: FontWeight.bold,
    ),
    filled: true,
    fillColor: _lightOnSecondaryColor,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    ),
  );
}
