import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:iqsaat/hive/utils.dart';
import 'package:iqsaat/models/usermessages.dart';

import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/images.dart';
import 'package:socket_io_client/socket_io_client.dart';

class ChatPage extends StatefulWidget {
   final String receiverID, senderID, name,photo;
  final Socket socketIO;

  const ChatPage({Key key, @required this.receiverID, @required this.senderID, @required this.name,@required this.socketIO, this.photo}) : super(key: key);
 
 
  @override
  _ChatPageState createState() => _ChatPageState();
}


class _ChatPageState extends State<ChatPage> {

   List<Messages> messages;
   ScrollController _chatLVController;
  @override
  void initState() {
    super.initState();

    listenMessages();
    // widget.socketIO.on('disconnect',
    //     (data) => print("I have disconnected from consumer side"));
  }
  listenMessages() {
    widget.socketIO.on("message", (data) {
      if (data['senderID'] == widget.senderID) {
        print('saving messages to list');
        if (this.mounted) {
          setState(() {
            DateTime.now().toIso8601String();
            messages.add(Messages(
                text: data['text'],
                senderID: data['senderID'],
                receiverID: data['receiverID'],
                createdAt: DateTime.now()));
          });
        }
      }
    });
  }
    var date = DateTime.now().toIso8601String();
  buildChatList() {
    //await checkrefreshtoken();
    return ListView.builder(
        controller: _chatLVController,
        reverse: false,
        itemCount: messages.length ?? 0,
        itemBuilder: (BuildContext context, i) {
          return Container(
            width: MediaQuery.of(context).size.width / 1.2,
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Row(
                  mainAxisAlignment: messages[i].senderID == Utils.getUserid()
                      ? MainAxisAlignment.end
                      : MainAxisAlignment.start,
                  children: <Widget>[
                    Flexible(
                      child: Material(
                        // elevation: 5,
                        borderRadius: messages[i].senderID == Utils.getUserid()
                            ? BorderRadius.only(
                                topLeft: Radius.circular(20),
                                //bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(20))
                            : BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 20),
                          child: Text(
                            messages[i].text,
                            textAlign: TextAlign.justify,
                            softWrap: true,
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ),
                        color: messages[i].senderID == Utils.getUserid()
                            ? AppColors.yellowColor
                            : AppColors.ChatOneSideCOlor,
                      ),
                    ),
                  ],
                ),
                //Text(i.toString()),
                Align(
                  alignment: messages[i].senderID == Utils.getUserid()
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: messages[i].senderID == Utils.getUserid()
                      ? Padding(
                          padding: EdgeInsets.only(
                            left: 30,
                          ),
                          child: Text(messages[i].createdAt.toString()),
                        )
                      : Text(messages[i].createdAt.toString() ??
                          DateTime.now().toIso8601String()),
                )
              ],
            ),
          );
        });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        elevation: 0.5,
        titleSpacing: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context, "Chat Tab"); 
                  },
                    child: Icon(
                      Icons.chevron_left,
                      color: Colors.black,
                      size: 30,
                    ),
                   ),
              ),
            ),
            Expanded(
              flex: 10,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 20.0,
                  backgroundImage: AssetImage(widget.photo),
                ),
                title: Text(
                  widget.name,
                 // style: Styles.heading,
                ),
              ),
            ),
            IconButton(
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.black,
                  size: 30,
                ),
                onPressed: null)
          ],
        ),
      ),
      body: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              SizedBox(height: 12),
              Expanded(flex: 10, child: buildChatList()),
             Expanded(
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 12),
                    IconButton(icon: Icon(Icons.attach_file), onPressed: null),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Type Here",
                          
                          hintStyle: TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: CircleAvatar(
                        backgroundColor: Color(0xffF6F9FF),
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_upward,
                            size: 25,
                          ),
                          onPressed: () {

                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
              // Expanded(
              //   child: Container(
              //     decoration: BoxDecoration(
              //         border: Border.all(color: Colors.grey, width: 1),
              //         borderRadius: BorderRadius.circular(30)),
              //     child: Row(
              //       // mainAxisAlignment: MainAxisAlignment.start,
              //       children: <Widget>[
              //         SizedBox(width: 12),
              //         IconButton(
              //             icon: Icon(Icons.attach_file), onPressed: null),
              //         Expanded(
              //           child: TextField(
              //             controller: msgController,
              //             decoration: InputDecoration(
              //               border: InputBorder.none,
              //               hintText: "Type Here",
              //               hintStyle: TextStyle(
              //                 color: Colors.black54,
              //               ),
              //             ),
              //           ),
              //         ),
              //         Padding(
              //           padding: const EdgeInsets.only(right: 10),
              //           child: CircleAvatar(
              //             backgroundColor: Color(0xffF6F9FF),
              //             child: IconButton(
              //               icon: Icon(
              //                 Icons.arrow_upward,
              //                 size: 25,
              //               ),
              //               onPressed: () {
              //                 // bool badworkcheck = false;
              //                 // badWordsList.forEach((element) {
              //                 //   String temp = msgController.text;
              //                 //   if (temp.contains(element) ||
              //                 //       temp.contains(element.toUpperCase()) ||
              //                 //       temp.contains(element.toLowerCase())) {
              //                 //     badworkcheck = true;
              //                 //   }
              //                 //   temp = '';
              //                 // });
              //                 // if (badworkcheck == false) {
              //                 //   if (msgController.text.isNotEmpty) {
              //                 //     //send io message
              //                 //     widget.person.socketid.emit("message", {
              //                 //       'text': "${msgController.text}",
              //                 //       'senderID': "${result.id}",
              //                 //       'receiverID': "${widget.person.id}",
              //                 //     });
              //                 //     messages.add(Messages(
              //                 //         text: msgController.text,
              //                 //         senderID: result.id,
              //                 //         receiverID: "${widget.person.id}",
              //                 //         createdAt: DateTime.now()));
              //                 //   //  msgController.clear();
              //                 //   }
              //                 //   setState(() {});
              //                 // } else {
              //                 //   Fluttertoast.showToast(
              //                 //       msg: "Your Message Contain Bad Words",
              //                 //       toastLength: Toast.LENGTH_SHORT,
              //                 //       gravity: ToastGravity
              //                 //           .BOTTOM // also possible "TOP" and "CENTER"
              //                 //       );
              //                 // }
              //               },
              //             ),
              //           ),
              //         )
              //       ],
              //     ),
              //   ),
              
            ],
          ),
        ),
      
      //  Container(
      //   padding: EdgeInsets.all(15),
      //   child: Column(
      //     children: <Widget>[
      //       SizedBox(height: 12),
      //       Expanded(
      //         flex: 10,
      //         child: ListView(
      //           children: <Widget>[
                 
      //           ],
      //         ),
      //       ),
           
        //   ],
        // ),
      // ),
    );
  }
   _chatListScrollToBottom() {
    Timer(Duration(milliseconds: 100), () {
      if (_chatLVController.hasClients) {
        _chatLVController.animateTo(
          _chatLVController.position.maxScrollExtent,
          duration: Duration(milliseconds: 100),
          curve: Curves.decelerate,
        );
      }
    });
  }
}

