import 'package:flutter/material.dart';
import 'gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientWidget(
            color: const [Colors.black, Colors.deepPurple, Colors.white]),
      ),
    ),
  );
}
