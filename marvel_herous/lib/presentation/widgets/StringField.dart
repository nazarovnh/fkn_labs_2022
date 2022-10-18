import 'package:flutter/material.dart';

class StringField extends StatelessWidget {
  final String title;

  const StringField({super.key, required this.title});

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
