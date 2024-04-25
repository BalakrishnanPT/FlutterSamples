import 'package:flutter/material.dart';
import 'package:sample1/reusable_appbar.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ReusableAppBar(title: 'Screen 2'),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Widgets',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 20.0),
            Image.asset(
              'assets/images/flutter_logo.png',
              height: 100.0,
            ),
            const SizedBox(height: 20.0),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Enter your name',
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    // Action to perform when ElevatedButton is pressed
                  },
                  child: const Text('Elevated Button'),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text('Item $index'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
