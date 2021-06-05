import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:iqsaat/models/getModels/getAUser.dart';
import 'package:iqsaat/request/getRequests.dart';
import 'package:iqsaat/ui/auth/loginPage.dart';

class UserProvider with ChangeNotifier {

GetUser getUser;


  Future<GetUser> userProfile() async {
    await GetApi().getUser().then((data) {
      print("Status Code === " + data.statusCode.toString());
      print("Body = = = " + data.body.toString());
      if (data.statusCode == 200) {
        var jResult = json.decode(data.body);
        productStore(GetUser.fromJson(jResult));
      } else if (data.statusCode == 404) {
        showMessage("User error" + data.statusCode.toString());
      } else {
        Map<String, dynamic> result = json.decode(data.body);
        showMessage("Errors = " + result.toString());

      }
    });
    return getUser;
  }

  void productStore(value) {
    getUser = value;
    print("Message Updated = " + getUser.success.toString());
    notifyListeners();
  }



}
