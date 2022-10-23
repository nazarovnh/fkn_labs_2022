import 'package:flutter/material.dart';
import 'package:marvel_herous/constants/constants.dart';

import '../../presentation/widgets/string_field.dart';

class PageHero extends StatelessWidget {
  const PageHero({super.key, required this.index});

  final int index;

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
              Image.network(herousImage[index]!,
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
                            title: listHerous[index],
                            fontSize: 30,
                            color: Colors.white),
                        const SizedBox(height: 15),
                        StringField(
                            title: herousDescription[index]!,
                            fontSize: 25,
                            color: const Color.fromARGB(255, 235, 235, 235)),
                        const SizedBox(height: 10)
                      ])),
            ])));
  }
}
