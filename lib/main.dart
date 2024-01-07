import 'package:clima/screens/loading_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "clima",
      theme: ThemeData.dark(),
      home: const LoadingScreen(),
    );
  }
}
