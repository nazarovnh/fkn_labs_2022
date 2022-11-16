import 'package:flutter/material.dart';
import 'package:marvel_herous/constants/constants.dart';

import '../../presentation/widgets/string_field.dart';
import '../../types/dto/heroInfo.dart';

class PageHero extends StatelessWidget {
  final HeroInfo heroInfo;
    final int index;

  const PageHero({super.key, required this.heroInfo, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Hero(
            tag: 'hero/$index',
            child: Stack(children: [
              Image.network(heroInfo.pathImage!,
                  fit: BoxFit.cover, height: double.infinity, width: double.infinity,
              ),
              Container(
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.all(12),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        StringField(
                            title: heroInfo.name,
                            fontSize: 30,
                            color: Colors.white),
                        const SizedBox(height: 15),
                        StringField(
                            title: heroInfo.description,
                            fontSize: 25,
                            color: const Color.fromARGB(255, 235, 235, 235)),
                        const SizedBox(height: 10)
                      ])),
            ])));
  }
}
