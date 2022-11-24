import 'package:marvel_herous/constants/constants.dart';

import '../ApiClient.dart';

Future<List<int>> getAllHeroes() async {
  List<int> result = <int>[];
  var allHeroesInfo = await ApiClient().fetch('https://gateway.marvel.com:443/v1/public/characters?limit=$limitHeroes&offset=$offset&');
  allHeroesInfo.data['data']['results'].forEach((value) => result.add(value['id']));
  return result;
}
