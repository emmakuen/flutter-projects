import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red[300],
        title: const Text("Coolery"),
      ),
      body: const Center(
        child: Image(
          image: AssetImage('images/cool.jpg'),
        ),
      ),
    ),
  ));
}
