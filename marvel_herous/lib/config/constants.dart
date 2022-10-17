import 'package:flutter/material.dart';

const double HEIDHT_CARD = 600;
const double WIDTH_CARD = 300;

const deadPool = 'Deadpool';
const ironMan = 'Iron Man';
const spiderMan = 'Sprider Man';

const List<String> listHerous = [deadPool, ironMan, spiderMan];

const Map<String, String> herousImage = {
  deadPool: 'assets/herous/deadpool.webp',
  ironMan: 'assets/herous/iron_man.png',
  spiderMan: 'assets/herous/spiderman.jpg'
};

const Map<int, Color> herousColors = {
  0: Color.fromARGB(252, 126, 26, 24),
  1: Colors.yellow,
  2: Colors.blue
};