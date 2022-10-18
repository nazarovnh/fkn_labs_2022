import 'package:flutter/material.dart';
import 'package:marvel_herous/constants/constants.dart';

import '../../config/MyCustomScrollBehavior.dart';
import '../../presentation/controllers/MyPageController.dart';
import '../../presentation/widgets/StringField.dart';

class HomePage extends StatelessWidget {
  MyPageController myPageController = const MyPageController();

  HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 41, 37, 37),
      ),
      scrollBehavior: MyCustomScrollBehavior(),
      home: Scaffold(
        appBar: AppBar(
            titleSpacing: 35,
            centerTitle: true,
            title: Image.asset('assets/marvel.png', width: 400, height: 50),
            backgroundColor: Colors.transparent,
            elevation: 0),
        body: Column(children: <Widget>[
          const StringField(title: 'Choose your hero'),
          Expanded(child: myPageController)
        ]),
      ),
    );
  }
}
