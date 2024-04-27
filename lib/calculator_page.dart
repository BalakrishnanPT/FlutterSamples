import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  CalculatorScreenState createState() => CalculatorScreenState();
}

class CalculatorScreenState extends State<CalculatorScreen> {
  double firstNum = 0.0;
  double secondNum = 0.0;
  String result = '0';
  String operation = '';

  void buttonPressed(String buttonValue) {
    if (buttonValue == 'C') {
      result = '0';
      firstNum = 0.0;
      secondNum = 0.0;
      operation = '';
    } else if (buttonValue == '+' ||
        buttonValue == '-' ||
        buttonValue == 'x' ||
        buttonValue == '/') {
      firstNum = double.parse(result);
      result = '0';
      operation = buttonValue;
    } else if (buttonValue == '=') {
      secondNum = double.parse(result);
      if (operation == '+') {
        result = (firstNum + secondNum).toString();
      } else if (operation == '-') {
        result = (firstNum - secondNum).toString();
      } else if (operation == 'x') {
        result = (firstNum * secondNum).toString();
      } else if (operation == '/') {
        if (secondNum == 0.0) {
          result = 'Error: Cannot divide by zero';
        } else {
          result = (firstNum / secondNum).toString();
        }
      }
      firstNum = 0.0;
      secondNum = 0.0;
      operation = '';
    } else {
      if (result == '0') {
        result = buttonValue;
      } else {
        result = result + buttonValue;
      }
    }
    setState(() {});
  }

  Widget buildButton(String buttonValue) {
    return Expanded(
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.all(24.0),
        ),
        child: Text(
          buttonValue,
          style: TextStyle(fontSize: 20.0),
        ),
        onPressed: () => buttonPressed(buttonValue),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 12.0),
              child: Text(
                result,
                style: TextStyle(fontSize: 48.0),
              ),
            ),
            const Expanded(
              child: Divider(),
            ),
            Column(
              children: [
                Row(
                  children: [
                    buildButton('7'),
                    buildButton('8'),
                    buildButton('9'),
                    buildButton('/'),
                  ],
                ),
                Row(
                  children: [
                    buildButton('4'),
                    buildButton('5'),
                    buildButton('6'),
                    buildButton('x'),
                  ],
                ),
                Row(
                  children: [
                    buildButton('1'),
                    buildButton('2'),
                    buildButton('3'),
                    buildButton('-'),
                  ],
                ),
                Row(
                  children: [
                    buildButton('C'),
                    buildButton('0'),
                    buildButton('='),
                    buildButton('+'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
