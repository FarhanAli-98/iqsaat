import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/appBar.dart';
import 'package:iqsaat/api/apis.dart';
import 'package:iqsaat/hive/utils.dart';
import 'package:iqsaat/models/postModels/user.dart';
import 'package:iqsaat/models/userlist.dart';
import 'package:iqsaat/ui/Seller/home/dashboard/sellerHome.dart';
import 'package:http/http.dart' as http;
import 'package:iqsaat/utils/routes.dart';

import 'chat.dart';

class ChatTab extends StatefulWidget {
  const ChatTab({Key key}) : super(key: key);

  @override
  State<ChatTab> createState() => _ChatTabState();
}

class _ChatTabState extends State<ChatTab> {
  UserListObj user;
  emitrequest() {
    var data = {
      "userID": Utils.getUserid(),
    };
    chatSocket.emit("friendlist", data);
  }

  getfriends() {
    chatSocket.on("friendlist", (data) async {
      var resultChat = json.decode(data.body);

      var body = {
        "users": "$resultChat",
      };
      Map<String, String> customHeaders = {
        "Content-Type": "application/json",
        "Authorization": "${Utils.getAuthentication()}",
      };
      var userlist = await http.post("${API_URLS.FRIEND}",
          body: json.encode(body), headers: customHeaders);
      if (userlist.statusCode == 200) {
        var jResult = json.decode(userlist.body);
        setState(() {
          user = UserListObj.fromJson(jResult);
        });
      }

      // var chatfriend = json.decode(userlist);
    });
  }

  @override
  void initState() {
    super.initState();
    emitrequest();
    getfriends();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarwithOnlyTitle(context, "Chat DashBord"),
      body: user == null
          ? Center(
              child: Text("NO Chat"),
            )
          : Container(
              height: MediaQuery.of(context).size.height * 0.9,
              child: ListView.builder(
                itemCount: user.data.length,
                itemBuilder: (context, i) {
                  return InkWell(
                    onTap: () {
                      AppRoutes.push(
                          context,
                          ChatPage(
                            name: user.data[i].firstName +
                                " " +
                                user.data[i].lastName,
                            receiverID: user.data[i].id,
                            senderID: Utils.getUserid(),
                            photo: user.data[i].displayPictureId,
                          ));
                    },
                    child: buildChatDash(
                      user.data[i].firstName + " " + user.data[i].lastName,
                      user.data[i].displayPictureId==null?"assets/images/profile.jpeg": user.data[i].displayPictureId,
                      '03:46 PM',
                      'placed order this weekend?',
                    ),
                  );
                },
              ),
            ),
    );
  }

//   Widget buildShopCard(String name, String image, String profile, String status) {
//     return Container(
//     padding: EdgeInsets.only(top: 10),
//       height: 100,
//       child: Card(
//         child: ListTile(
//           leading: Container(
//             child: Container(
//                 height: 90,
//                 width: 90,
//                 child: Image.asset(
//                   image,
//                 )),
//           ),
//           title: Padding(
//             padding: const EdgeInsets.only(top:8.0),
//             child: Text(
//               name,
//               style: TextStyle(fontSize: 18),
//             ),
//           ),
//           subtitle: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 status,
//                 style: TextStyle(fontSize: 14),
//               ),
//               Text(
//                 profile,
//                 style: TextStyle(fontSize: 14,color: AppColors.primarycolor,)
//               ),

//             ],
//           ),

//         ),
//       ),
//     );

// }

  Widget buildChatDash(String name, String image, String time, String status) {
    return Card(
      child: ListTile(
        leading: Container(
          child: Container(
              height: 40,
              width: 40,
              child: Image.asset(
                image,
              )),
        ),
        title: Text(
          name,
          style: TextStyle(fontSize: 16),
        ),
        subtitle: Text(
          status,
          style: TextStyle(fontSize: 10),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(left: 5),
              child: Text(
                time,
                style: TextStyle(
                  fontSize: 11,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              child: Icon(
                Icons.done_all,
                color: Colors.green,
                size: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
