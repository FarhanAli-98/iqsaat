import 'dart:convert';
import 'dart:io';
import 'package:hive/hive.dart';
import 'package:iqsaat/api/apis.dart';
import '../main.dart';
import 'package:http/http.dart' as http;

final tokens = Hive.box('tokens');

class ShopApi {
  final String companyName;
  final String address;
  final String about;
  final File file;
  ShopApi(this.file, this.companyName, this.address, this.about);

  Future<http.Response> createShop() {
    Map<String, String> customHeaders = {
      "Content-Type": "application/json",
      "Authorization": "Bearer ${res.accessToken}",
    };
    print(customHeaders);
    var body = {
      "name": "$companyName",
      "address": "$address",
      "about": "$about",
    };
    print("ID = " + customHeaders.toString());
    print("Adds Data getten is = = = = " + json.encode(body));
    print("Signup create At ?? this link = ${API_URLS.CREATESHOP_API}");
    return http.post(
      "${API_URLS.CREATESHOP_API}",
      headers: customHeaders,
      body: json.encode(body),
    );
  }
}
