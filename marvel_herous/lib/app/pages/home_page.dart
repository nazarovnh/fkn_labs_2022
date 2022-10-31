import 'package:flutter/material.dart';
import 'package:marvel_herous/constants/constants.dart';

import '../../config/custom_scroll_behavior.dart';
import '../../presentation/controllers/page_controller.dart';
import '../../presentation/widgets/string_field.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 41, 37, 37),
      ),
      scrollBehavior: CustomScrollBehavior(),
      home: Scaffold(
        appBar: AppBar(
            titleSpacing: 35,
            centerTitle: true,
            title: Image.asset('assets/marvel.png', width: 400, height: 50),
            backgroundColor: Colors.transparent,
            elevation: 0),
        body: Column(children: const <Widget>[
          StringField(
            title: 'Choose your hero',
            fontSize: 30,
            color: Colors.white,
          ),
          Expanded(child: PageViewController())
        ]),
      ),
    );
  }
}
