import 'dart:async';
import 'package:flutter/material.dart';
import 'package:iqsaat/provider/chat_provider.dart';
import 'package:iqsaat/request/getMymsg.dart';
import 'package:iqsaat/utils/app_colors.dart';

import 'package:provider/provider.dart';
import 'package:socket_io_client/socket_io_client.dart';
import '../../../main.dart';

class ChatScreen extends StatefulWidget {
  final String receiverID, senderID, name, comapny, photo;
  final Socket socketIO;

  ChatScreen(
      {@required this.receiverID,
      @required this.senderID,
      this.name,
      this.comapny,
      this.photo,
      @required this.socketIO});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

double width, height;
ChatProvider chatProvider;

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController msgController = TextEditingController();
  List<Message> messages;
  ScrollController _chatLVController;

  @override
  void dispose() {
    msgController.dispose();
    _chatLVController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    getMessage();
    _chatLVController = ScrollController(initialScrollOffset: 0.0);

    listenMessages();
    widget.socketIO.on('disconnect',
        (data) => print("I have disconnected from consumer side"));
  }

  listenMessages() {
    widget.socketIO.on("message", (data) {
      print(data.toString());
      print(data['senderID']);
      print(widget.receiverID);
      if (data['senderID'] == widget.receiverID) {
        print('saving messages to list');
        if (this.mounted) {
          setState(() {
            messages.add(Message(
              text: data['text'],
              senderId: data['senderID'],
              senderName: data['senderName'],
              senderDisplayPictureUrl: data['senderDisplayPictureURL'],
              receiverId: data['receiverID'],
              timestamp: DateTime.parse(data['timestamp'] as String),
            ));
          });
        }

        _chatListScrollToBottom();
      }
    });
  }

  buildChatList() {
    return ListView.builder(
        controller: _chatLVController,
        reverse: false,
        itemCount: messages.length ?? 0,
        itemBuilder: (BuildContext context, i) {
          return Container(
            width: width / 1.2,
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Row(
                  mainAxisAlignment: messages[i].senderId == "res.userId"
                      ? MainAxisAlignment.end
                      : MainAxisAlignment.start,
                  children: <Widget>[
                    messages[i].senderId == "res.userId"
                        ? Container()
                        : Container(
                            margin: EdgeInsets.only(right: 10),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundImage:
                                  AssetImage('assets/appIcons/image47.png'),
                            ),
                          ),
                    Flexible(
                      child: Material(
                        // elevation: 5,
                        borderRadius: messages[i].senderId == "res.userId"
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
                            messages[i].text ?? 'the fooking tokt is noool',
                            textAlign: TextAlign.justify,
                            softWrap: true,
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ),
                        color: messages[i].senderId == "res.userId"
                            ? AppColors.yellowColor
                            : AppColors.ChatOneSideCOlor,
                      ),
                    ),
                  ],
                ),
                Text(i.toString()),
                Align(
                  alignment: messages[i].senderId == "res.userId"
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: messages[i].senderId == widget.senderID
                      ? Padding(
                          padding: EdgeInsets.only(
                            left: 30,
                          ),
                          child: Text(messages[i].timestamp.toString() ??
                              'time is null'),
                        )
                      : Text(messages[i].senderId ?? 'sedner id is null'),
                )
              ],
            ),
          );
        });
  }

  Future<void> getMessage() async {
    await Provider.of<ChatProvider>(context, listen: false)
        .myChat(widget.senderID)
        .then((value) {
      if (chatProvider.messageModel == null) {
      } else {
        messages = chatProvider.messageModel.data;
        messages.sort((a, b) {
          return a.timestamp.compareTo(b.timestamp);
        });
      }
      // messages = messages.reversed.toList();
    });
    _chatListScrollToBottom();
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    chatProvider = Provider.of<ChatProvider>(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
     // resizeToAvoidBottomPadding: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.white,
        elevation: 0,
        leading: Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    blurRadius: 10, spreadRadius: 5, color: Colors.black12)
              ],
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                  topRight: Radius.circular(50))),
          child: Image.asset(
            'assets/appIcons/menu.png',
            width: 50,
            height: 50,
          ),
        ),
        title: Row(
          children: <Widget>[
            // CachedImage(
            //     photo: widget.photo ??
            //         'https://firebasestorage.googleapis.com/v0/b/circulate-app-a46a9.appspot.com/o/user.png?alt=media&token=4d94a267-f2da-41de-8bc2-5f2a46e321ca',
            //     radius: 50),
            SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  widget.name ?? 'name is null',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                Text(
                  widget.comapny ?? '',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ],
            )
          ],
        ),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 13),
            child: Image.asset(
              'assets/appIcons/offlineVector.png',
              width: 33,
              height: 24,
            ),
          )
        ],
      ),
      body: Container(
        width: width,
        height: height,
        padding: EdgeInsets.only(top: 15, bottom: 10),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: buildChatList(),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              height: 50,
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Image.asset('assets/appIcons/pinFile.png'),
                  ),
                  buildSearchField(),
                  IconButton(
                      icon: Icon(
                        Icons.insert_emoticon,
                        color: AppColors.greyLocationIconColor,
                      ),
                      onPressed: null)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  buildSearchField() {
    return Container(
      width: width * 0.75,
      height: height * 0.06,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(color: Colors.black12, spreadRadius: 1, blurRadius: 4)
          ]),
      child: TextField(
        controller: msgController,
        onTap: () {},
        decoration: InputDecoration(
            suffixIcon: InkWell(
                onTap: () {
                  print("User id" + "res.userId");
                  print("recever id " + widget.receiverID);
                  print("from id" + widget.receiverID);
                  var date = DateTime.now().toIso8601String();

                  if (msgController.text.isNotEmpty) {
                    //send io message
                    widget.socketIO.emit("message", {
                      'text': "${msgController.text}",
                      'senderID': "${"res.userId"}",
                      'senderName': "${"res.firstName"} ${"res.lastName"}",
                      'senderDisplayPictureURL': "${"res.photo"}",
                      'receiverID': "${widget.receiverID}",
                      'timestamp': date,
                    });
                    messages.add(Message(
                      text: msgController.text,
                      senderId:" res.userId",
                      senderName: "${"res.firstName"} ${"res.lastName"}",
                      senderDisplayPictureUrl: "${"res.photo"}",
                      receiverId: "${widget.receiverID}",
                      timestamp: DateTime.parse(date.toString()),
                    ));

                    msgController.clear();
                  }
                  _chatListScrollToBottom();
                  setState(() {});
                },
                child: Image.asset('assets/appIcons/sendIcon.png')),
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            hintText: "Search",
            filled: true,
            fillColor: Colors.white,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50.0),
                borderSide: BorderSide(color: Colors.white, width: 3.0)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50.0),
                borderSide: BorderSide(color: Colors.white, width: 3.0))),
      ),
    );
  }

  /// Scroll the Chat List when it goes to bottom
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
