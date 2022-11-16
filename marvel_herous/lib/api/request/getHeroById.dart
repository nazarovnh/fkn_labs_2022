import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:marvel_herous/types/dto/heroInfo.dart';

import '../fetcher.dart';

Future<HeroInfo> getHeroById(int id) async {
  HeroInfo result = HeroInfo(0, 'name', 'description', 'pathImage',Colors.blue);
  await fetch('https://gateway.marvel.com/v1/public/characters/$id?')
      .then((response) => response.data['data']['results'].forEach((value) {
            result = HeroInfo(
                value['id'], value['name'], value['description'], value['thumbnail']['path'] + '.' + value['thumbnail']['extension'], Colors.blue);
          }));
  await fetch('https://gateway.marvel.com/v1/public/characters/$id?')
      .then((response) => response.data['data']['results'].forEach((value) {
            print(value['thumbnail']['path'] + '.' +value['thumbnail']['extension']);
          }));
  return result;
}
