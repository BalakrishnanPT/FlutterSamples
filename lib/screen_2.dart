import 'package:flutter/material.dart';
import 'package:sample1/reusable_appbar.dart';

class Screen2 extends StatelessWidget {
  final Function toggleTheme;
  const Screen2({Key? key, required this.toggleTheme}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ReusableAppBar(title: 'Screen 2', toggleTheme: toggleTheme),
        body: Center(
          child: ElevatedButton(
            child: const Text('Go to Screen 1'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ));
  }
}
