import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:iqsaat/models/usermessages.dart';
import 'package:iqsaat/request/getMymsg.dart';
import 'package:iqsaat/request/my_chat.dart';

class ChatProvider with ChangeNotifier {
  UserMessages messageModel;
  var jResult;

  Future<void> myChat(senderID) async {
    await ChatApi(senderID).getMychat().then((data) {
      print("Status Code == " + data.statusCode.toString());
      print("Body = = =      " + data.body.toString());

      if (data.statusCode == 200) {
        jResult = json.decode(data.body);
        if (jResult['data'] == null || jResult['data'] == []) {
          print('mydata is null ');
        } else {
          setCate(UserMessages.fromJson(jResult));
        }
      } else if (data.statusCode == 400) {
        Fluttertoast.showToast(
            msg: "Chat History missing",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM);
      } else {
        Map<String, dynamic> result = json.decode(data.body);
        print("Errors = " + result.toString());
      }
    });
  }
  Future<void> chats() async {
    await MyChatsApi().getMychats().then((data) {
      print("Status Code == " + data.statusCode.toString());
      print("Body = = =      " + data.body.toString());

      if (data.statusCode == 200) {
        jResult = json.decode(data.body);
        if (jResult['data'] == null || jResult['data'] == []) {
          print('mydata is null ');
        } else {
          setCate(UserMessages.fromJson(jResult));
        }
      } else if (data.statusCode == 400) {
        Fluttertoast.showToast(
            msg: "Chat History missing",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM);
      } else {
        Map<String, dynamic> result = json.decode(data.body);
        print("Errors = " + result.toString());
      }
    });
  }

  void setCate(value) {
    print("New data insert");
    messageModel = value;
    notifyListeners();
  }
}
