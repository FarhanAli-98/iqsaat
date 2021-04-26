import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:iqsaat/request/login.dart';
import 'package:iqsaat/utils/app_colors.dart';


class LoginProvider with ChangeNotifier {

  String message;
  bool wait = false;
  var jResult;

  Future<void> loginResponse(email, password) async {
    waiting(true);
    await LoginApi(email, password).login().then((data) {
      print("Status Code === " + data.statusCode.toString());
      print("Body = = =" + data.body.toString());

      if (data.statusCode == 200) {
        waiting(false);
        jResult = json.decode(data.body);
        print('my pictureee-------------------- Print now ');
        print(jResult['data']['user']['displayPictureURL']);
        // userModel.data.user.displayPictureUrl =
        //     jResult['data']['user']['displayPictureURL'];
        print(jResult['data']['user']['firstName']);
       /// setUser(UserModel.fromJson(jResult));
      }
      if (data.statusCode == 403) {
        waiting(false);
        jResult = json.decode(data.body);
        showMessage(jResult['message']);
      } else {
        waiting(false);
        // Map<String, dynamic> result = json.decode(data.body);
        // print("Over all Result is = " + result.toString());
        // String res = getString(result.toString());
        // showMessage(result[res][0]);
      }
    });
  }

  

  void setUser(value) {
    // userModel = value;
    // print('this is my id' + userModel.data.user.id);
    // print(userModel.data.user.displayPictureUrl);
    notifyListeners();
  }

  void waiting(value) {
    wait = value;
    notifyListeners();
  }

  // User getUSer() {
  //   return user;
  // }

  void showMessage(msg) {
    Fluttertoast.showToast(
        msg: msg, textColor: AppColors.white, backgroundColor: Colors.grey);
  }

  /* String getString(value) {
    String s = value;
//Removes everything after first ':'
    String rString = s.substring(1, s.indexOf(':'));
    print(rString);

    return rString;
  }
 */
  // bool isUser() {
  //   return user != null ? true : false;
  // }
}
