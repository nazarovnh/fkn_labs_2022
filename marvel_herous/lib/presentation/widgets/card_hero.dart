import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import 'string_field.dart';

class CardHero extends StatelessWidget {
  final String title;
    final int index;

  const CardHero({super.key, required this.title, required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 5,
      margin: const EdgeInsets.all(30),
      child: Container(
        width: widthCard,
        height: heightCard,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
            image: NetworkImage(herousImage[index]!),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.all(12),
            child:
                StringField(title: title, fontSize: 30, color: Colors.white)),
      ),
    );
  }
}
