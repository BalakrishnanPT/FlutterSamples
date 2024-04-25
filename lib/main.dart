import 'package:flutter/material.dart';
import 'package:sample1/screen_1.dart';
import 'package:sample1/screen_2.dart';
import 'package:sample1/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  bool isDarkMode = false;

  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => Screen1(toggleTheme: toggleTheme),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => Screen2(toggleTheme: toggleTheme),
      },
    );
  }
}
