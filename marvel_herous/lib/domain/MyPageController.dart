// ignore: file_names
import 'package:flutter/material.dart';
import 'CardHero.dart';
import '../config/constants.dart';
import 'TriangleView.dart';

class MyPageController extends StatefulWidget {
  const MyPageController({super.key});

  @override
  MyPageControllerState createState() {
    return MyPageControllerState();
  }
}

class MyPageControllerState extends State<MyPageController> {
  late PageController pageController = PageController();

  int page = 0;
  int lastIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController.addListener(onScroll);
  }

  void onScroll() {
    setState(() {
      page = pageController.page != null ? pageController.page!.round() : 0;
      lastIndex = pageController.page?.floor() ?? 0;
    });
  }

  Widget _renderBackground() {
    var backgroundColor =
        pageController.hasClients ? herousColors[page] : herousColors[0];

    return Positioned.fill(
      child: CustomPaint(
        painter: TriangleView(strokeColor: backgroundColor!),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = listHerous
        .map((name) => Container(
            child: Center(child: CardHero(title: name))))
        .toList();
    return Stack(children: [
      _renderBackground(),
      Container(
          child: PageView(
        controller: pageController,
        children: widgets,
      ))
    ]);
  }
}
