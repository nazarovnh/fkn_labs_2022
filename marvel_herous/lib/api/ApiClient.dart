import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:marvel_herous/constants/keys.dart';

class ApiClient {
  Future<Response> fetch(String url) async {
    int timestamp = DateTime.now().millisecondsSinceEpoch;

    String hashCode =
        md5.convert(utf8.encode('$timestamp$privateKey$publicKey')).toString();
    var response =
        await Dio().get('${url}ts=$timestamp&apikey=$publicKey&hash=$hashCode');
    return response;
  }
}
