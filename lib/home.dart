import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final Function toggleTheme;

  const HomePage({Key? key, required this.toggleTheme}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.brightness_6),
            onPressed: () => toggleTheme(),
          ),
        ],
      ),
      body: Screen1(),
    );
  }
}

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text('Go to Screen 2'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Screen2()),
          );
        },
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text('Go back to Screen 1'),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
