import 'package:flutter/material.dart';

const double heightCard = 500;
const double widthCard = 300;

const rocket = 'Rocket';
const ironMan = 'Iron Man';
const spiderMan = 'Sprider Man';
const doctorStrange = 'Doctor Strange';
const loki = 'Loki';
const thor = 'Thor';
const thanos = 'Thanos';

const List<String> listHerous = [
  rocket,
  ironMan,
  spiderMan,
  doctorStrange,
  loki,
  thor,
  thanos
];

const Map<int, String> herousImage = {
  0: 'https://terrigen-cdn-dev.marvel.com/content/prod/1x/023rra_ons_crd_03.jpg',
  1: 'https://terrigen-cdn-dev.marvel.com/content/prod/1x/002irm_ons_crd_03.jpg',
  2: 'https://terrigen-cdn-dev.marvel.com/content/prod/1x/005smp_ons_crd_02.jpg',
  3: 'https://terrigen-cdn-dev.marvel.com/content/prod/1x/009drs_ons_crd_03.jpg',
  4: 'https://terrigen-cdn-dev.marvel.com/content/prod/1x/017lok_ons_crd_03.jpg',
  5: 'https://terrigen-cdn-dev.marvel.com/content/prod/1x/004tho_ons_crd_04.jpg',
  6: 'https://terrigen-cdn-dev.marvel.com/content/prod/1x/019tha_ons_crd_03.jpg',
};

const Map<int, Color> herousColors = {
  0: Color.fromARGB(252, 126, 26, 24),
  1: Color.fromARGB(255, 202, 187, 49),
  2: Colors.blue,
  3: Color.fromARGB(255, 192, 23, 37),
  4: Colors.green,
  5: Colors.blue,
  6: Colors.purple
};

const Map<int, String> herousDescription = {
  0: 'Ohhh yeaaaaa',
  1: 'Hmm… Genius, billionaire, playboy, philanthropist.',
  2: 'Friendly Neighborhood Spider-Man',
  3: 'The Archmage of the Earth',
  4: 'The God of cunning, deception and deceit',
  5: 'God of Thunder',
  6: 'Alright, I will do it myself.',
};
