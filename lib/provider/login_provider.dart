import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:iqsaat/models/postModels/user.dart';
import 'package:iqsaat/request/login.dart';
import 'package:iqsaat/utils/app_colors.dart';

class LoginProvider with ChangeNotifier {
  LoginModel loginModel;
  String message;
  bool wait = false;
  var jResult;

  Future<LoginModel> loginResponse(email, password) async {
    waiting(true);
    await LoginApi(email, password).login().then((data) {
      print("Status Code === " + data.statusCode.toString());
      print("Body = = =" + data.body.toString());

      if (data.statusCode == 200) {
        waiting(false);
        jResult = json.decode(data.body);
        loginuser(LoginModel.fromJson(jResult));
      }
      else if (data.statusCode == 403) {
        waiting(false);
        jResult = json.decode(data.body);
        showMessage(jResult['message'] + "User Not Found");
      } else {
        waiting(false);
        Map<String, dynamic> result = json.decode(data.body);
        print("Over all Result is = " + result.toString());

        showMessage(data.statusCode);
      }
    });
    return loginModel;
  }

  void loginuser(value) {
    loginModel = value;
    print('Login using this Name ' + loginModel.data.user.firstName);

    notifyListeners();
  }

  void waiting(value) {
    wait = value;
    notifyListeners();
  }

  void showMessage(msg) {
    Fluttertoast.showToast(
        msg: msg, textColor: AppColors.white, backgroundColor: Colors.grey);
  }
}
