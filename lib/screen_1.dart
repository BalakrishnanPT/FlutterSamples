import 'package:flutter/material.dart';
import 'package:sample1/reusable_appbar.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const ReusableAppBar(title: 'Screen 1'),
        body: Center(
          child: ElevatedButton(
            child: const Text('Go to Screen 2'),
            onPressed: () {
              Navigator.pushNamed(context, "/second");
            },
          ),
        ));
  }
}
