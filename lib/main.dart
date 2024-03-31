import 'package:flutter/material.dart';
import 'package:flutter_game/pages/home_page.dart';
import 'package:flutter_game/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Round 6 Memory Game',
      theme: Round6Theme.theme,
      home: const HomePage(),
    );
  }
}
