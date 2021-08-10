import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;
import 'package:iqsaat/api/apis.dart';
import 'package:iqsaat/hive/data/list_class.dart';
import 'package:iqsaat/models/user_info.dart';
import 'package:iqsaat/provider/adsProvider.dart';
import '../main.dart';

final tokens = Hive.box('tokens');

class AdsApi {
  String name;
  String price;
  String description;
  String unit;
  String category;
  String subCategory;

  AdsApi(this.name, this.price, this.unit, this.description, this.category,
      this.subCategory);

  Future<http.Response> createAdds() {
    List<Packages> packages = [
      //Packages(pricecontroller.toList(), monthcontroller.toList()),
    ];
    Map<String, String> customHeaders = {
      "Content-Type": "application/json",
      "Authorization": "Bearer ${res.accessToken}",
      
    };
    print(customHeaders);


    var body = {
      "name": "$name",
      "shopID": "6110e2b6c2ed8f001a5e62d9",//"${res.shopId}",
      "products": [
        {"price": "$price", "description": "$description"}
      ],
      "packages": [
        {"price": 232, "monthyinstallment": 22},
        {"price": 232, "monthyinstallment": 232},
        {"price": 232, "monthyinstallment": 232}
      ]
    };

    //print("ID = "+.toString());
    print("Adds Data getten is = = = = " + json.encode(body));
    print(
        "Adds create At this link== ${API_URLS.CREATEADS_API}?catagoryName=$category&subcatagoryName=$subCategory");
    return http.post(
      "${API_URLS.CREATEADS_API}?catagoryName=$category&subcatagoryName=$subCategory",
      headers: customHeaders,
      body: json.encode(body),
    );
  }

  // Future<http.Response> updateAds() {
  //   Map<String, String> customHeaders = {
  //     "Content-Type": "
  //json",
  //     "Authorization": "Bearer ${res.accessToken}",
  //   };
  //   var body = {
  //      "company": "${res.comapnyId}",
  //     "services": serviceList,
  //     "payment_modes": ["$cod", "$masterCard", "$interac", "$visa"],
  //     "products": productList,
  //     "imageTitles": User.userData.imageTitles,
  //     "imageDescriptions": User.userData.imageDesc,
  //     "videoTitles": User.userData.videoTitles,
  //     "videoDescriptions": User.userData.videoDescriptions
  //   };
  //   print("Adds Data getten is  " + json.encode(body));
  //   print("Adds create At this link${API.CREATEADS_API}${User.userData.adid}");
  //   return http.put(
  //      "${API.CREATEADS_API}?id=${User.userData.adid}",
  //     headers: customHeaders,
  //     body: json.encode(body),
  //   );
  // }
}
