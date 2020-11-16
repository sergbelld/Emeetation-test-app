import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/widgets.dart';

class Auth with ChangeNotifier {
  String _token;

  bool get isAuth {
    return token != null;
  }

  String get token {
    if (_token != null) {
      return _token;
    }
    return null;
  }

  Future<void> _authorization(
      String email, String password, String urlSegment) async {
    final url =
        'https://eme-dev.saas.trood.ru/authorization/api/v1.0/$urlSegment/';
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
    };

    final response = await http.post(
      url,
      headers: headers,
      body: json.encode(
        {"login": email, "password": password},
      ),
    );

    final responseData = json.decode(response.body);
    _token = responseData['data']['token'];
    notifyListeners();
  }

  Future<void> signup(String email, String password) async {
    return _authorization(email, password, 'register');
  }

  Future<void> signin(String email, String password) async {
    return _authorization(email, password, 'login');
  }
}
