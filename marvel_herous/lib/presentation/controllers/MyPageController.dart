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
          return Center(child: CardHero(title: listHerous[index]));
        },
        itemCount: listHerous.length,
      ),
    ]);
  }
}
