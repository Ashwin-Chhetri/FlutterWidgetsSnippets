import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ThemeConfig {
  // Color for Theme dark
  static const Color darkTextColorPrimary = Color(0xFFFAFAFA);
  static const Color darkTextColorSecondary = Color(0xFFF5F5F5);
  static const Color darkPrimary = Color.fromRGBO(250, 250, 250, 1);
  static const Color darkHintColor = Color.fromRGBO(158, 158, 166, 1);
  static const Color darkSecondary = Color.fromRGBO(33, 150, 243, 1);
  static const Color darkBG = Color(0xFF181A1B);

  static ThemeData darkTheme = ThemeData(
      colorScheme: const ColorScheme.dark(
        primary: darkPrimary,
        onPrimary: darkTextColorPrimary,
        secondary: darkSecondary,
        onSecondary: darkTextColorSecondary,
      ),
      appBarTheme: const AppBarTheme(
          color: Color(0xF023292C),
          systemOverlayStyle: SystemUiOverlayStyle(
              systemNavigationBarColor: Color(0xF023292C))),
      scaffoldBackgroundColor: darkBG,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor: Colors.teal)),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.teal,
        disabledForegroundColor: Colors.grey.withOpacity(0.38),
      )));
}
