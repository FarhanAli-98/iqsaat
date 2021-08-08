import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:iqsaat/api/apis.dart';

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
      "Content-Type": "application/json",
    };

    print(body.toString());
    return http.post("${API_URLS.LOGIN_API}",
        body: json.encode(body), headers: customHeaders);
  }
}
