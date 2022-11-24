import 'package:flutter/material.dart';
import 'package:marvel_herous/types/dto/heroInfo.dart';

import '../ApiClient.dart';

Future<HeroInfo> getHeroById(int id) async {
  HeroInfo result =
      HeroInfo(0, 'name', 'description', 'pathImage', Colors.blue);
  var response =
      await ApiClient().fetch('https://gateway.marvel.com/v1/public/characters/$id?');
  response.data['data']['results'].forEach((value) {
    result = HeroInfo(
        value['id'],
        value['name'],
        value['description'],
        value['thumbnail']['path'] + '.' + value['thumbnail']['extension'],
        Colors.blue);
  });
  return result;
}
