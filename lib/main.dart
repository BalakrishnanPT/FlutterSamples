import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample1/calculator_page.dart';
import 'package:sample1/providers/theme_provider.dart';
import 'package:sample1/screen_1.dart';
import 'package:sample1/screen_2.dart';
import 'package:sample1/screen_3.dart';
import 'package:sample1/theme.dart';

void main() {
  runApp(ChangeNotifierProvider<ThemeNotifier>(
    create: (_) => ThemeNotifier(),
    child: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return MaterialApp(
      darkTheme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      themeMode: themeNotifier.isDarkMode ? ThemeMode.dark : ThemeMode.light,
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const Screen1(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => const Screen2(),
        '/third': (context) => const Screen3(),
        '/calculator': (context) => const CalculatorScreen(),
      },
    );
  }
}
