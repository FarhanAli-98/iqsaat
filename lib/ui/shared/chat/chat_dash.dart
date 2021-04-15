import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/person_card.dart';
import 'package:iqsaat/utils/app_colors.dart';



class ChatTab extends StatefulWidget {
  @override
  _ChatTabState createState() => _ChatTabState();
}

class _ChatTabState extends State<ChatTab> {
  List persons = List();
  //ChatProvider chatProvider;
  List<Person> list = [];

  // void getMessage() async {
  //   await Provider.of<ChatProvider>(context, listen: false)
  //       .chats()
  //       .then((value) {
  //     chatProvider.messageModel.data.forEach((element) {
  //       if (element.senderId ==" res.userId") {//1Time to set id
  //       } else {
  //         if (!persons.contains(element.senderId)) {
  //           persons.add(element.senderId.toString());

  //           list.add(Person(
  //               name: element.senderName.toString(),
  //               photo: element.senderDisplayPictureUrl,
  //               senderid: element.senderId,
  //               receverid: element.receiverId));
  //         }
  //       }
  //     });

  //     //advertiserSocket.on("message", (data) {});
  //   });
  // }

  @override
  void initState() {
    super.initState();
    //getMessage();
  }

  @override
  Widget build(BuildContext context) {
   // chatProvider = Provider.of<ChatProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.white,
        elevation: 0,
        leading: Container(
          //width: 55,
          // height: 30,
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
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/appIcons/image47.png'),
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Chat',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                Text(
                  'Messaging Services',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ],
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: list
              .map((person) => Personcard(
                  person: person,
                  ))
              .toList(),
        ),
      ),
    );
  }
}

class Person {
  final String name;
  final String senderid;
  final String receverid;
  final String photo;
  Person({this.senderid, this.receverid, this.name, this.photo});
}
