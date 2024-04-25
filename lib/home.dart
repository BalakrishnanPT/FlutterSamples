import 'package:flutter/material.dart';
import 'package:sample1/screen_1.dart';

class HomePage extends StatelessWidget {
  final Function toggleTheme;

  const HomePage({Key? key, required this.toggleTheme}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screen1(toggleTheme: toggleTheme),
    );
  }
}
