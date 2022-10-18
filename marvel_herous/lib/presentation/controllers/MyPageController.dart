// ignore: file_names
import 'package:flutter/material.dart';
import '../widgets/CardHero.dart';
import '../widgets/DrawTriangleShape.dart';
import '../../constants/constants.dart';

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

  @override
  void initState() {
    super.initState();
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
      child: CustomPaint(painter: TriangleShape(backgroundColor: backgroundColor!)),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = listHerous
        .map((name) => Center(child: CardHero(title: name)))
        .toList();
    return Stack(children: [
      renderTrianlgeShape(),
      PageView(
        controller: pageController,
        children: widgets,
      ),
    ]);
  }
}
