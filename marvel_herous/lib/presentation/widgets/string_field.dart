import 'package:flutter/material.dart';

class StringField extends StatelessWidget {
  final String title;
  final double fontSize;
  final Color color;

  const StringField({super.key, required this.title, required this.fontSize, required this.color});

  @override
  Widget build(BuildContext context) {
    return (Text(title,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
          decoration: TextDecoration.none,
          fontWeight: FontWeight.bold,
          fontFamily: 'Roboto'
        )));
  }
}
