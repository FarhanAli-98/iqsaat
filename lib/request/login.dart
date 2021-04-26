import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:iqsaat/api/api.dart';

class LoginApi {
  final String email;
  final String password;
  LoginApi(
    this.email,
    this.password,
  );

  Future<http.Response> login() {
    var body = {
      "email": "$email",
      "password": "$password",
    };
    //print(json.encode(body).toString());
    Map<String, String> customHeaders = {
      "content-type": "application/json;charset=UTF-8",
    };

    print(body.toString());
    return http.post("${API.LOGIN_API}",
        body: json.encode(body), headers: customHeaders);
  }
}
