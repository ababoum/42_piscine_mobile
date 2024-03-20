import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Calculator'),
        ),
        body: const Column(
          children: [
            CalculatorScreen(),
            CalculatorKeyboard(),
          ],
        ),
      ),
    );
  }
}

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey,
        child: const Column(
          children: [
            Text('0', style: TextStyle(fontSize: 48)),
            Text('0', style: TextStyle(fontSize: 48))
          ],
        ));
  }
}

class CalculatorKeyboard extends StatelessWidget {
  const CalculatorKeyboard({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      children: [
        CalculatorButton(text: 'C', color: Colors.red, onPressed: () {}),
        CalculatorButton(text: '7', color: Colors.grey, onPressed: () {}),
        CalculatorButton(text: '8', color: Colors.grey, onPressed: () {}),
        CalculatorButton(text: '9', color: Colors.grey, onPressed: () {}),
        CalculatorButton(text: '4', color: Colors.grey, onPressed: () {}),
        CalculatorButton(text: '5', color: Colors.grey, onPressed: () {}),
        CalculatorButton(text: '6', color: Colors.grey, onPressed: () {}),
        CalculatorButton(text: '1', color: Colors.grey, onPressed: () {}),
        CalculatorButton(text: '2', color: Colors.grey, onPressed: () {}),
        CalculatorButton(text: '3', color: Colors.grey, onPressed: () {}),
        CalculatorButton(text: '0', color: Colors.grey, onPressed: () {}),
        CalculatorButton(text: '.', color: Colors.grey, onPressed: () {}),
        CalculatorButton(text: '+', color: Colors.grey, onPressed: () {}),
        CalculatorButton(text: '-', color: Colors.grey, onPressed: () {}),
        CalculatorButton(text: 'x', color: Colors.grey, onPressed: () {}),
        CalculatorButton(text: '/', color: Colors.grey, onPressed: () {}),
        CalculatorButton(text: '=', color: Colors.blue, onPressed: () {}),
      ],
    );
  }
}

class CalculatorButton extends StatelessWidget {
  final String text;
  final Color color;
  final void Function() onPressed;

  const CalculatorButton({
    required this.text,
    required this.color,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      margin: const EdgeInsets.all(4),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
