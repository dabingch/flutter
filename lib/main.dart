import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepOrange, Colors.yellow],
            ),
          ),
          child: const Center(
            child: Text('Hello, world!'),
          ),
        ),
      ),
    ),
  );
}
