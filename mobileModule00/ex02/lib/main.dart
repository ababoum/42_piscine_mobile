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
          title: const Center(child: Text('Calculator')),
          backgroundColor: Colors.blue, // Set the background color to blue
        ),
        body: const Column(
          children: [
            CalculatorScreen(),
            // Expanded(
            //   child: CalculatorKeyboard(),
            // ),
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
          Text('7', style: TextStyle(fontSize: 48)),
          Text('7', style: TextStyle(fontSize: 48))
        ],
      ),
    );
  }
}

class CalculatorKeyboard extends StatelessWidget {
  const CalculatorKeyboard({super.key});

  static List<List<String>> buttonRows = [
    ['7', '8', '9', 'C', 'AC'],
    ['4', '5', '6', '+', '-'],
    ['1', '2', '3', '*', '/'],
    ['0', '.', '00', '=', ''],
  ];
  static double totalHeight =
      buttonRows.length * 64.0; // Assuming each row has a height of 64.0

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: totalHeight, // Set the height of the SizedBox
      child: GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 5,
        children: buttonRows
            .map((row) => row
                .map((text) => CalculatorButton(
                      text: text,
                      color: Colors.grey,
                      onPressed: () {},
                    ))
                .toList())
            .expand((element) => element)
            .toList(),
      ),
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
