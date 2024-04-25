import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    // Define light theme settings
    return ThemeData(
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'Arial',
      buttonTheme: const ButtonThemeData(
        buttonColor: Colors.blue,
        textTheme: ButtonTextTheme.primary,
      ),
      appBarTheme: const AppBarTheme(
        color: Colors.blue,
        elevation: 4,
      ),
    );
  }

  static ThemeData get darkTheme {
    // Define dark theme settings
    return ThemeData(
      primaryColor: Colors.black,
      scaffoldBackgroundColor: Colors.grey[850],
      fontFamily: 'Arial',
      buttonTheme: const ButtonThemeData(
        buttonColor: Colors.black,
        textTheme: ButtonTextTheme.primary,
      ),
      appBarTheme: const AppBarTheme(
        color: Colors.black,
        elevation: 4,
      ),
    );
  }
}
