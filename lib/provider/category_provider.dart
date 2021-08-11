import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:iqsaat/models/getModels/getCategory.dart';
import 'package:iqsaat/request/getRequests.dart';


class CategoryProvider with ChangeNotifier {
  GetCategory getCategory;
  var jResult;

  Future<GetCategory> cateResponse() async {
    await GetApi().getCateory().then((data) {
      print("Status Code == " + data.statusCode.toString());
      print("Body = = =      " + data.body.toString());

      if (data.statusCode == 200) {
        jResult = json.decode(data.body);
        setCate(GetCategory.fromJson(jResult));
      } else if (data.statusCode == 403) {
        Fluttertoast.showToast(
            msg: "Category missing",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM 
            );
      } else {
        Map<String, dynamic> result = json.decode(data.body);
        print("Errors = " + result.toString());
     
      }
    });
    return getCategory;
  }

  //  Future<CategoryModels> getACategory() async {
  //   await CategoryApi().getCateory().then((data) {
  //     print("Status Code == " + data.statusCode.toString());
  //     print("Body = = =      " + data.body.toString());

  //     if (data.statusCode == 200) {
  //       jResult = json.decode(data.body);
  //       setCate(CategoryModels.fromJson(jResult));
  //     } else if (data.statusCode == 403) {
  //       Fluttertoast.showToast(
  //           msg: "Category missing",
  //           toastLength: Toast.LENGTH_SHORT,
  //           gravity: ToastGravity.BOTTOM // also possible "TOP" and "CENTER"
  //           );
  //     } else {
  //       Map<String, dynamic> result = json.decode(data.body);
  //       print("Errors = " + result.toString());
  //       // String res = getString(result.toString());
  //       // showMessage(result[res][0]);
  //     }
  //   });
  //   return categoryModels;
  // }
    
   

  void setCate(value) {
    getCategory = value;
    print("Seccessfully set at  =  = " + getCategory.data.last.id);
    notifyListeners();
  }
 
}
