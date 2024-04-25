import 'package:flutter/material.dart';
import 'package:sample1/theme_manager.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.brightness_6),
              onPressed: () => {
                    ThemeManager.toggleTheme(
                        context) // Call the toggleTheme method
                  }),
        ],
      ),
      body: const Center(
        child: Text('Welcome to the home page!'),
      ),
    );
  }
}
