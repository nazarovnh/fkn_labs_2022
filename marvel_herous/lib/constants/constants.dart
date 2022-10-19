import 'package:flutter/material.dart';

const double HEIDHT_CARD = 500;
const double WIDTH_CARD = 300;

const deadPool = 'Deadpool';
const ironMan = 'Iron Man';
const spiderMan = 'Sprider Man';
const doctorStrange = 'Doctor Strange';
const hulk = 'Hulk';
const thor = 'Thor';
const thanos = 'Thanos';

const List<String> listHerous = [
  deadPool,
  ironMan,
  spiderMan,
  doctorStrange,
  hulk,
  thor,
  thanos
];

const Map<String, String> herousImage = {
  deadPool: 'assets/herous/deadpool.png',
  ironMan: 'assets/herous/iron_man.png',
  spiderMan: 'assets/herous/spiderman.jpg',
  doctorStrange: 'assets/herous/doctor_strange.webp',
  hulk: 'assets/herous/hulk.jpg',
  thor: 'assets/herous/thor.webp',
  thanos: 'assets/herous/thanos.jpg',
};

const Map<int, Color> herousColors = {
  0: Color.fromARGB(252, 126, 26, 24),
  1: Color.fromARGB(255, 202, 187, 49),
  2: Colors.blue,
  3: Color.fromARGB(255, 35, 156, 116),
  4: Colors.green,
  5: Colors.blue,
  6: Colors.purple
};
