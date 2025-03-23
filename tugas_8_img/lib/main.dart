import 'package:flutter/material.dart';
import 'loginscreen.dart'; // Import the GetStartedPage from loginscreen.dart

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Get Started',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const GetStartedPage(),
    );
  }
}
