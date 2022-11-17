import 'package:marvel_herous/constants/constants.dart';

import '../fetcher.dart';

Future<List<int>> getAllHeroes() async {
  List<int> result = <int>[];
  await fetch(
          'https://gateway.marvel.com:443/v1/public/characters?limit=$limitHeroes&offset=$offset&')
      .then((response) => response.data['data']['results']
          .forEach((value) => result.add(value['id'])));
  return result;
}
