import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String msg = 'A simple text';

  void changeText() {
    setState(() {
      msg = msg == 'A simple text' ? 'Hello World' : 'A simple text';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ex01'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(msg,
                  style: const TextStyle(
                      backgroundColor: Colors.green,
                      color: Colors.white)),
              ElevatedButton(
                onPressed: changeText,
                child: const Text('Click me'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
