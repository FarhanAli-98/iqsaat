import 'package:flutter/material.dart';
import 'package:iqsaat/ui/saller/chat_tab/chat.dart';
import 'package:iqsaat/ui/saller/chat_tab/chat_dash.dart';
import 'package:iqsaat/utils/images.dart';

class Personcard extends StatelessWidget {
  final Person person;
  Personcard({this.person});
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) => ChatPage()));
        },
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
              side: BorderSide(color: Colors.white)),
          elevation: 0.0,
          margin: EdgeInsets.fromLTRB(16.0, 18.0, 15.0, 0.0),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 30.0,
                          backgroundImage: AssetImage(Images.person),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      textDirection: TextDirection.ltr,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding:
                                  EdgeInsets.fromLTRB(20.0, 15.0, 0.0, 0.0),
                              child: Text(
                                person.name,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.fromLTRB(20.0, 2.0, 0.0, 0.0),
                              child: Text(person.status,
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.grey,
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}
