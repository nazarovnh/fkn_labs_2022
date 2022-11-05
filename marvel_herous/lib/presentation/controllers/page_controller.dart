// ignore: file_names
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import '../../api/fetcher.dart';
import '../../app/pages/page_hero.dart';
import '../widgets/card_hero.dart';
import '../widgets/triangle_shape.dart';
import '../../constants/constants.dart';

class PageViewController extends StatefulWidget {
  const PageViewController({super.key});

  @override
  PageViewControllerState createState() {
    return PageViewControllerState();
  }
}

class PageViewControllerState extends State<PageViewController> {
  late PageController pageController = PageController();

  int page = 0;

  void getHerous() async {
    var response = await fetch(
        'https://gateway.marvel.com:443/v1/public/characters?limit=2&');
    var heroesId = response.data['data']['results'].map((value) => value['id']);
    heroesId.forEach((id) async => {
          await fetch('https://gateway.marvel.com/v1/public/characters/$id?')
              .then((value) => {print(value),
              print('\n')})
        });
    // add all id value
    // after for each do request bu eacj character
    // add all info in state
  }

  @override
  void initState() {
    super.initState();
    getHerous();
    pageController.addListener(onScroll);
  }

  void onScroll() {
    setState(() {
      page = pageController.page != null ? pageController.page!.round() : 0;
    });
  }

  Widget renderTrianlgeShape() {
    var backgroundColor =
        pageController.hasClients ? herousColors[page] : herousColors[0];

    return Positioned.fill(
      child: CustomPaint(
          painter: TriangleShape(backgroundColor: backgroundColor!)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      renderTrianlgeShape(),
      PageView.builder(
        controller: pageController,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PageHero(index: index),
                )),
            child: Hero(
                tag: 'hero/$index',
                child: Center(
                    child: CardHero(title: listHerous[index], index: index))),
          );
        },
        itemCount: listHerous.length,
      ),
    ]);
  }
}
