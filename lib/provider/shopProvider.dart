import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:iqsaat/models/getModels/shop_model.dart';
import 'package:iqsaat/request/AllAdsReq.dart';
import 'package:iqsaat/request/shopCreate.dart';
import 'package:iqsaat/utils/app_colors.dart';

class ShopProvider with ChangeNotifier {
  String sAbout;
  String sName;
  String saddress;
  bool wait = false;
  var result;
  var jResult;
  ShopModel shopModel;
  Future<ShopModel> createShop(
    file,
    _companyNameController,
    _addressController,
    _aboutcontroller,
  ) async {
    waiting(true);
    return ShopApi(
      file,
      _companyNameController,
      _addressController,
      _aboutcontroller,
    ).createShop().then((data) {
      print("createShop Creating" + data.statusCode.toString());
      print("createShop = = =  " + data.body.toString());

      if (data.statusCode == 201) {
        jResult = json.decode(data.body);
        createShopMethod(ShopModel.fromJson(jResult));
        return shopModel;
      } else if (data.statusCode == 404) {
        showMessage(data.statusCode);
      } else if (data.statusCode == 403) {
        showMessage("User Already Exist");
      } else {
        Map<String, dynamic> result = json.decode(data.body);
        print("Errors = " + result.toString());
        showMessage(data.statusCode);
      }
      return shopModel;
    });
  }

  Future<ShopModel> getCompany() async {
    waiting(true);
    await GetAdsApi().getSingleCompany().then((data) {
      print("Status Code === " + data.statusCode.toString());
      print("Company Body = = =" + data.body.toString());

      if (data.statusCode == 200) {
        waiting(false);
        jResult = json.decode(data.body);
        // print(jResult['data']['_id'].toString());
        print("Assign values : ");
        setCompany(ShopModel.fromJson(jResult));
      } else if (data.statusCode == 403) {
        waiting(false);
        jResult = json.decode(data.body);
        showMessage(jResult['message']);
      } else {
        waiting(false);
        Map<String, dynamic> result = json.decode(data.body);
        print("Over all Result is = " + result.toString());
      }
    });
    return shopModel;
  }

  void waiting(value) {
    wait = value;
    notifyListeners();
  }

  void showMessage(msg) {
    Fluttertoast.showToast(
        msg: msg, textColor: AppColors.white, backgroundColor: Colors.grey);
  }

  void createShopMethod(value) {
    shopModel = value;
    print("Message Updated = " + shopModel.message.toString());
    notifyListeners();
  }

  void setCompany(value) {
    print("after ");
    shopModel = value;
    print('this is my company = = ' + shopModel.message.toString());

    notifyListeners();
  }
}
