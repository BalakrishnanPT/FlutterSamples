import 'package:flutter/material.dart';
import 'package:sample1/main.dart';

ThemeMode currentTheme = ThemeMode.light; // Initial theme

class ThemeManager {
  static ThemeMode getCurrentTheme() {
    return currentTheme;
  }

  static void toggleTheme(BuildContext context) {
    currentTheme =
        currentTheme == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;

    // Rebuild the MaterialApp to apply the new theme
    void rebuild(BuildContext context) {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (BuildContext context) => const MyApp(),
        ),
        (Route<dynamic> route) => false,
      );
    }

    rebuild(context);
  }
}
