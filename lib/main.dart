import 'package:flutter/material.dart';
import 'package:sample1/home.dart';
import 'package:sample1/theme.dart';
import 'package:sample1/theme_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme, // Use the light theme
      darkTheme: AppTheme.darkTheme, // Optional: Use the dark theme
      themeMode: ThemeManager.getCurrentTheme(), // Use the ThemeManager
      home: const HomePage(),
    );
  }
}
