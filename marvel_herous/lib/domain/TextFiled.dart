import 'package:flutter/material.dart';

class TextFiled extends StatelessWidget {
  final String title;

  const TextFiled({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return (Text(title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        )));
  }
}
