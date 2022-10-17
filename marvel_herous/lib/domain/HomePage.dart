import 'package:flutter/material.dart';
import 'package:marvel_herous/config/constants.dart';

import 'MyCustomScrollBehavior.dart';
import 'MyPageController.dart';
import 'TextFiled.dart';

class HomePage extends StatelessWidget {
    MyPageController myPageController =  const MyPageController();

  HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
      scrollBehavior: MyCustomScrollBehavior(),
      home: Scaffold(
        appBar: 
        AppBar(
            toolbarHeight: 100,
            title: Image.asset('assets/marvel.png'),
            backgroundColor: Colors.transparent,
            elevation: 0),
        body: Column(children: <Widget>[
          Stack(children:  const <Widget>[
            TextFiled(title: 'Choose your hero'),
          ]),
          Expanded(child: Stack(children: <Widget>[myPageController])),
        ]),
      ),
    );
  }
}
