import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:iqsaat/request/signup.dart';
import 'package:iqsaat/utils/app_colors.dart';


class RegisterProvider with ChangeNotifier {
  bool action, wait = false;
  var jResult;
  Future<void> registerResponse(
      firstName,  lastName,phone,cnic ,email, password, role, image) async {
    waiting(true);
    await RegisterApi(
           firstName,  lastName,phone,cnic ,email, password, role, image)
        .createUser()
        .then((data) {
     print("Response");
      print(data.statusCode.toString());
      return data.statusCode;
    });
  }

  void setUserData(value) {
    print('this is the id : ' + value['data']['id']);
    notifyListeners();
  }

  void waiting(value) {
    wait = value;
    notifyListeners();
  }

  void showMessage(msg) {
    Fluttertoast.showToast(
        msg: msg,
        textColor: AppColors.greyColor,
        backgroundColor: Colors.white);
  }
}
