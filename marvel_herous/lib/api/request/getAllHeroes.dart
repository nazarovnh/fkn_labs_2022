import '../fetcher.dart';

Future<List<int>> getAllHeroes() async {
  List<int> result = <int>[];
  await fetch('https://gateway.marvel.com:443/v1/public/characters?limit=2&')
      .then((response) => response.data['data']['results']
          .forEach((value) => result.add(value['id'])));
  return result;
}
