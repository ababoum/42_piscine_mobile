import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'ex00',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'A simple text',
              style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                  backgroundColor: Colors.green),
            ),
            ElevatedButton(
                onPressed: () => print('Button pressed'),
                child: const Text('Click me'))
          ],
        ));
  }
}
