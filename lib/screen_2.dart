import 'package:flutter/material.dart';
import 'package:sample1/reusable_appbar.dart';
import 'package:sample1/screen_1.dart';

class Screen2 extends StatelessWidget {
  final Function toggleTheme;
  const Screen2({Key? key, required this.toggleTheme}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ReusableAppBar(title: 'Screen 1', toggleTheme: toggleTheme),
        body: Center(
          child: ElevatedButton(
            child: const Text('Go to Screen 1'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Screen1(
                          toggleTheme: toggleTheme,
                        )),
              );
            },
          ),
        ));
  }
}
