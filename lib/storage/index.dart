import 'package:flutter_application_1/storage/local.dart';
import 'package:localstorage/localstorage.dart';

class TokenStorage {
  final LocalStorage _localStorage;
  final String key = 'token';

  const TokenStorage(LocalStorage localStorage) : _localStorage = localStorage;

  void delete() {
    _localStorage.deleteItem(key);
  }

  String read() {
    var item = _localStorage.getItem(key);
    return item ?? '';
  }

  void write(String value) {
    _localStorage.setItem(key, value);
  }
}

var tokenStorage = TokenStorage(localStorage);
