import 'package:flutter/material.dart';

import '../config/constants.dart';

class CardHero extends StatelessWidget {
  final String title;

  const CardHero({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Card(
      child: Container(
        width: 300,
        height: HEIDHT_CARD,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(herousImage[title]!),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          alignment: Alignment.bottomRight,
          padding: const EdgeInsets.all(12),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    ));
  }
}
