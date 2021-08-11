import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:iqsaat/models/postModels/order_model.dart';
import 'package:iqsaat/request/order_api.dart';
import 'package:iqsaat/utils/app_colors.dart';

class OrderProvider with ChangeNotifier {
  bool wait = false;
  var jResult;
  OrderModel orderModel;
  Future<OrderModel> orderCreate(id) async {
    waiting(true);
    await OrderApi(id).order().then((data) {
      print("Status Code === " + data.statusCode.toString());
      print("Body = = =" + data.body.toString());

      if (data.statusCode == 200) {
        waiting(false);
        jResult = json.decode(data.body);
        orderuser(OrderModel.fromJson(jResult));
      } else if (data.statusCode == 403) {
        waiting(false);
        jResult = json.decode(data.body);
        showMessage(jResult['message'] + "User Not Found");
      } else {
        waiting(false);
        Map<String, dynamic> result = json.decode(data.body);
        print("Over all Result is = " + result.toString());

        showMessage(data.statusCode.toString());
      }
    });
    return orderModel;
  }

  void orderuser(value) {
    orderModel = value;
    print('Message ' + orderModel.message.toString());

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
