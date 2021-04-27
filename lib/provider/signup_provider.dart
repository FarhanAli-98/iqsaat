import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:iqsaat/models/postModels/signupModel.dart';
import 'package:iqsaat/request/signup.dart';
import 'package:iqsaat/utils/app_colors.dart';

class RegisterProvider with ChangeNotifier {
  bool action, wait = false;
  var jResult;
  SignUpModel signUpModel;
  Future<SignUpModel> registerResponse(
      firstName, lastName, phone, cnic, email, password, role, image) async {
    waiting(true);
    await RegisterApi(
            firstName, lastName, phone, cnic, email, password, role, image)
        .createUser()
        .then((data) {
      print("Adds Provide Creating" + data.statusCode.toString());
      print("Body = = =  " + data.body.toString());

      if (data.statusCode == 201) {
        jResult = json.decode(data.body);
        setUserData(SignUpModel.fromJson(jResult));
      } else if (data.statusCode == 404) {
        showMessage(data.statusCode);
      } else if (data.statusCode == 403) {
        showMessage("User Already Exist");
      } else {
        Map<String, dynamic> result = json.decode(data.body);
        print("Errors = " + result.toString());
        showMessage(data.statusCode);
      }
    });

    return signUpModel;
  }

  void setUserData(value) {
    signUpModel = value;
    print("Message Updated = " + signUpModel.message.toString());
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
