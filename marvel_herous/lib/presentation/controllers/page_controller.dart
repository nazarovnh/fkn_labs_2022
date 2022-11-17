import 'package:flutter/material.dart';
import 'package:marvel_herous/api/request/getHeroById.dart';
import 'package:marvel_herous/api/request/getAllHeroes.dart';
import '../../types/dto/heroInfo.dart';
import '../../app/pages/page_hero.dart';
import '../widgets/card_hero.dart';
import '../widgets/show_dialog.dart';
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
  List<HeroInfo> herousInfo = <HeroInfo>[];

  void getInfo() async {
    try {
      var heroes = await getAllHeroes();
      for (var id in heroes) {
        await getHeroById(id).then((value) => setState(() {
              herousInfo.add(value);
            }));
      }
    } catch (e) {
      showCustomDialog(context, 'Error', 'OPS');
    }
  }

  @override
  void initState() {
    super.initState();
    getInfo();
    pageController.addListener(onScroll);
  }

  void onScroll() {
    setState(() {
      page = pageController.page != null ? pageController.page!.round() : 0;
    });
  }

  Widget renderTrianlgeShape() {
    var backgroundColor = pageController.hasClients
        ? herousColors[page % herousColors.length]
        : herousColors[0];

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
                  builder: (context) =>
                      PageHero(heroInfo: herousInfo[index], index: index),
                )),
            child: Hero(
                tag: 'hero/$index',
                child: Center(
                    child:
                        CardHero(heroInfo: herousInfo[index], index: index))),
          );
        },
        itemCount: herousInfo.length,
      ),
    ]);
  }
}
