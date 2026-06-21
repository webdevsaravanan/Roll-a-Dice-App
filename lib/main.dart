import 'package:flutter/material.dart';
import 'package:first_app/gradient_conatiner.dart';

void main() {
  runApp(
     MaterialApp(
      home: Scaffold(
        body: GradientContainer([Colors.blue, Colors.purple])
      ),
    ),
  );
}


