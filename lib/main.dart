import 'package:flutter/material.dart';
import 'package:flutter_application_1/animation_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: animation_screen(),
    );
  }
}
