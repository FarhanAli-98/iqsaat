import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;
import 'package:iqsaat/api/api.dart';
import 'package:iqsaat/models/user_info.dart';

import '../main.dart';

final tokens = Hive.box('tokens');

class AdsApi {
  String name;
  String price;
  String description;
  bool cod;
  bool jazz;
  List<Package> packagesList = [];
  String category;
  String subCategory;

  AdsApi(this.name, this.price, this.description, this.cod, this.jazz,
      this.packagesList, this.category, this.subCategory);

  Future<http.Response> createAdds() {
    Map<String, String> customHeaders = {
      "Content-Type": "application/json",
      "Authorization": "Bearer ${res.accessToken}",
    };
    print(customHeaders);
    // var catBody = {
    //   "categoryType": "$category",
    // };
    
    // //create category
    // var cate = http.post(
    //   "${API.CATAGORY_API}",
    //   headers: customHeaders,
    //   body: json.encode(catBody),
    // );
    // cate.whenComplete(() {
    //   cate.then((value){
    //     print("Status Code"+  value.statusCode.toString());
    //     print(value.body.toString());
    //   });

    // });
    
    var body = {
      "name": "$name",
      "shopID": "${res.shopId}",
      "categoryID": "60b08a3a9375be0015ce1eb1",
      "subcategoryID": "60b0a05d9375be0015ce1eba",
      "payment_modes": ["$cod", "$jazz"],
      "products": [
        {"price": "$price", "description": "$description"}
      ],
      "packages": packagesList,
    };

    //print("ID = "+.toString());
    print("Adds Data getten is = = = = " + json.encode(body));
    print("Adds create At this link${API.CREATEADS_API}");
    return http.post(
      "${API.CREATEADS_API}",
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
