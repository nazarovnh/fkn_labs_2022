import 'package:marvel_herous/constants/constants.dart';

import '../fetcher.dart';

Future<List<int>> getAllHeroes() async {
  List<int> result = <int>[];
  var allHeroesInfo = await fetch('https://gateway.marvel.com:443/v1/public/characters?limit=$limitHeroes&offset=$offset&');
  allHeroesInfo.data['data']['results'].forEach((value) => result.add(value['id']));
  return result;
}
