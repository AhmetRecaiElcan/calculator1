import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String _display = '';
  double _num1 = 0;
  double _num2 = 0;
  String _operator = '';

  void _onButtonPressed(String text) {
    if (text == 'C') {
      _clear();
    } else if (text == '+' || text == '-' || text == '*' || text == '/') {
      _setOperator(text);
    } else if (text == '=') {
      _calculate();
    } else {
      _appendToDisplay(text);
    }
  }

  void _appendToDisplay(String text) {
    setState(() {
      _display += text;
    });
  }

  void _setOperator(String Operator) {
    setState(() {
      _operator = Operator;
      _num1 = double.parse(_display);
      _display = '';
    });
  }

  void _calculate() {
    double result = 0;
    double num2 = double.parse(_display);

    switch (_operator) {
      case '+':
        result = _num1 + num2;
        break;
      case '-':
        result = _num1 - num2;
        break;
      case '*':
        result = _num1 * num2;
        break;
      case '/':
        result = _num1 / num2;
        break;
    }

    setState(() {
      _display = result.toString();
    });
  }

  void _clear() {
    setState(() {
      _display = '';
      _num1 = 0;
      _num2 = 0;
      _operator = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hesap Makinesi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _display,
              style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton('7', _onButtonPressed),
                CalculatorButton('8', _onButtonPressed),
                CalculatorButton('9', _onButtonPressed),
                CalculatorButton('+', _onButtonPressed),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton('4', _onButtonPressed),
                CalculatorButton('5', _onButtonPressed),
                CalculatorButton('6', _onButtonPressed),
                CalculatorButton('-', _onButtonPressed),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton('1', _onButtonPressed),
                CalculatorButton('2', _onButtonPressed),
                CalculatorButton('3', _onButtonPressed),
                CalculatorButton('*', _onButtonPressed),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton('C', _onButtonPressed),
                CalculatorButton('0', _onButtonPressed),
                CalculatorButton('=', _onButtonPressed),
                CalculatorButton('/', _onButtonPressed),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CalculatorButton extends StatelessWidget {
  final String text;
  final Function(String) onPressed;

  CalculatorButton(this.text, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed(text);
      },
      child: Text(
        text,
        style: TextStyle(fontSize: 24.0),
      ),
    );
  }
}
