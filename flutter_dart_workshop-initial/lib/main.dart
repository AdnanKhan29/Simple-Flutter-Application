import 'package:flutter/material.dart';
import 'package:theflutterlab_workshop/home.dart';

void main() {
  runApp(const MoonApp());
}

class MoonApp extends StatelessWidget {
  const MoonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const HomeScreen()
    );
  }
}
