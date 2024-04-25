import 'package:flutter/material.dart';
import 'package:sample1/reusable_appbar.dart';
import 'package:sample1/screen_2.dart';

class Screen1 extends StatelessWidget {
  final Function toggleTheme;
  const Screen1({Key? key, required this.toggleTheme}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ReusableAppBar(title: 'Screen 1', toggleTheme: toggleTheme),
        body: Center(
          child: ElevatedButton(
            child: const Text('Go to Screen 2'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Screen2(
                          toggleTheme: toggleTheme,
                        )),
              );
            },
          ),
        ));
  }
}
