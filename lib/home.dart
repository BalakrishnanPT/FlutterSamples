import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.brightness_6), onPressed: () => {
            
          }),
        ],
      ),
      body: const Center(
        child: Text('Welcome to the home page!'),
      ),
    );
  }
}
