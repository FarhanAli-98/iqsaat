import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iqsaat/utils/colors.dart';

class ChatObj {
  String name;
  String message;
  bool isSender;
  ChatObj(this.isSender, this.name, this.message);
}

class Chat extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Chat();
  }
}

class _Chat extends State<Chat> {
  List<ChatObj> list = [
    ChatObj(true, "Lorem Ipsum",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris euismod vestibulum diam et vulputate. Praesent ut faucibus risus"),
    ChatObj(true, "Lorem Ipsum",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris euismod vestibulum diam et vulputate. Praesent ut faucibus risus"),
    ChatObj(false, "Lorem Ipsum",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris euismod vestibulum diam et vulputate. Praesent ut faucibus risus"),
    ChatObj(true, "Lorem Ipsum",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris euismod vestibulum diam et vulputate. Praesent ut faucibus risus"),
    ChatObj(false, "Lorem Ipsum",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris euismod vestibulum diam et vulputate. Praesent ut faucibus risus"),
    ChatObj(false, "Lorem Ipsum",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris euismod vestibulum diam et vulputate. Praesent ut faucibus risus"),
    ChatObj(false, "Lorem Ipsum",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris euismod vestibulum diam et vulputate. Praesent ut faucibus risus"),
    ChatObj(true, "Lorem Ipsum",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris euismod vestibulum diam et vulputate. Praesent ut faucibus risus"),
    ChatObj(false, "Lorem Ipsum",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris euismod vestibulum diam et vulputate. Praesent ut faucibus risus"),
    ChatObj(true, "Lorem Ipsum",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris euismod vestibulum diam et vulputate. Praesent ut faucibus risus"),
    ChatObj(false, "Lorem Ipsum",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris euismod vestibulum diam et vulputate. Praesent ut faucibus risus"),
    ChatObj(true, "Lorem Ipsum",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris euismod vestibulum diam et vulputate. Praesent ut faucibus risus"),
    ChatObj(false, "Lorem Ipsum",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris euismod vestibulum diam et vulputate. Praesent ut faucibus risus"),
    ChatObj(true, "Lorem Ipsum",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris euismod vestibulum diam et vulputate. Praesent ut faucibus risus"),
    ChatObj(false, "Lorem Ipsum",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris euismod vestibulum diam et vulputate. Praesent ut faucibus risus"),
  ];

  var _messageController = new TextEditingController();
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();

  Widget _body() {
    return Column(
      children: <Widget>[
        Flexible(
          flex: 10,
          child: _topView(),
        ),
        Flexible(
          flex: 1,
          child: _bottomView(),
        ),
      ],
    );
  }

  Widget _topView() {
    return Container(
      color: Colors.grey.shade200,
      height: double.infinity,
      width: double.infinity,
      child: AnimatedList(
        key: _listKey,
        reverse: true,
        initialItemCount: list.length,
        itemBuilder: (context, index, animation) {
          return _listViewContent(list[index].isSender, index);
        },
      ),
    );
  }

  Widget _listViewContent(bool isSender, int index) {
    return Container(
      margin: isSender
          ? EdgeInsets.only(right: 30, bottom: 5)
          : EdgeInsets.only(left: 30, bottom: 5),
      child: Card(
        elevation: 2,
        child: ClipPath(
          clipper: ShapeBorderClipper(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5))),
          child: Container(
            color: isSender ? Colors.white : AppColor.fillColor,            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  list[index].name,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    list[index].message,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _bottomView() {
    return Container(
      color: Colors.white,
      height: double.infinity,
      width: double.infinity,
      child: Row(
        children: <Widget>[
          Flexible(
            flex: 6,
            child: Container(
              color: Colors.white,
              width: double.infinity,
              child: TextFormField(
                controller: _messageController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Type Message..",
                    contentPadding: EdgeInsets.only(left: 10)),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: InkWell(
              onTap: () {
                print("File Picker");
                //_filePicker();
              },
              child: Container(
                width: double.infinity,
                child: Icon(Icons.attach_file),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: InkWell(
              onTap: () {
                if (_messageController.value.text.isNotEmpty) {
                  print("Message Send");

                  var rnd = Random();

                  var check = rnd.nextBool();
                  print(check);

                  list.insert(
                      0,
                      ChatObj(
                          check, "Lorem Ipsum", _messageController.value.text));
                  _messageController.value = TextEditingValue(text: "");
                  _listKey.currentState.insertItem(0);

                  // setState(() {});
                  FocusScope.of(context).unfocus();
                }
              },
              child: Container(
                width: double.infinity,
                child: Icon(
                  Icons.send,
                  color: Colors.green.shade900,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

//  Future<void> _filePicker() async {
//    var path = await FilePicker.getFilePath();
//    print(path);
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Messages", style: TextStyle(color: Colors.black)),
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: _body());
  }
}
