import 'package:flutter/material.dart';
import 'package:fooderlich/constants.dart';
import 'package:fooderlich/fooderlich_theme.dart';
import 'package:fooderlich/screens/home.dart';

void main() {
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  const Fooderlich({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.dark();
    return MaterialApp(
      theme: theme,
      title: kAppTitle,
      home: const Home(),
    );
  }
}
