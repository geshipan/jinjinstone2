import 'dart:convert';
import 'package:http/http.dart' as http;

import '../storage/index.dart';

class Api {
  final TokenStorage _tokenStorage;

  Api(TokenStorage tokenStorage) : _tokenStorage = tokenStorage;

  Map<String, String> getHeaders() {
    Map<String, String> headers = {
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
      'Access-Control-Allow-Origin': 'http://43.201.97.1'
    };

    String token = _tokenStorage.read();

    if (token.isEmpty) {
      return headers;
    }

    headers['loginToken'] = token;

    return headers;
  }

  final String path = 'http://43.201.97.1:8080';

  Future<dynamic> get(String url) async {
    var response =
        await http.get(Uri.parse('$path$url'), headers: getHeaders());
    return jsonDecode(response.body);
  }

  Future<dynamic> post(String url, dynamic data) async {
    var response = await http.post(Uri.parse('$path$url'),
        headers: getHeaders(), body: jsonEncode(data));
    return jsonDecode(response.body);
  }

  Future<dynamic> put(String url, dynamic data) async {
    var response = await http.put(Uri.parse('$path$url'),
        headers: getHeaders(), body: jsonEncode(data));
    return jsonDecode(response.body);
  }
}

var api = Api(tokenStorage);
