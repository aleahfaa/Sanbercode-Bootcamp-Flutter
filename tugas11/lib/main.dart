import 'package:flutter/material.dart';
import 'package:tugas11/page/user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'API', home: UserPage());
  }
}
