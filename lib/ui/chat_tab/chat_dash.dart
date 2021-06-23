import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/appbar_actions.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/routes.dart';

import 'chat.dart';

class ChatTab extends StatefulWidget {
  const ChatTab({Key key}) : super(key: key);

  @override
  State<ChatTab> createState() => _ChatTabState();
}

class _ChatTabState extends State<ChatTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: AppColors.white,
      appBar: AppBar(
        elevation: 5,
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
                    Navigator.pop(context,); 
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
               
                title: Text(
                  'Chat Manu',
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
      body: Column(
        children: [
          InkWell(
            onTap: () {
              AppRoutes.push(context, ChatPage());
            },
            child: buildChatDash(
              'Name',
              'assets/images/profile1.jpeg',
              '03:46 PM',
              'placed order this weekend?',
            ),
          ),
          InkWell(
            onTap: () {
              AppRoutes.push(context, ChatPage());
            },
            child: buildChatDash(
                "Name", 'assets/images/profile2.jpeg', "09:41 AM", 'placed order this weekend?'),
          ),
           InkWell(
            onTap: () {
              AppRoutes.push(context, ChatPage());
            },
            child: buildChatDash(
                "Name", 'assets/images/profile2.jpeg', "09:41 AM", 'placed order this weekend?'),
          ),
           InkWell(
            onTap: () {
              AppRoutes.push(context, ChatPage());
            },
            child: buildChatDash(
                "Name", 'assets/images/profile2.jpeg', "09:41 AM", 'placed order this weekend?'),
          ),
          //  InkWell(
          //   onTap: () {
          //     AppRoutes.push(context, ChatPage());
          //   },
          //   child: buildShopCard(
          //       "Shop Name", 'assets/images/eyeWorld1.jpg', "See Profile", 'Sense from'),
          // ),
        ],
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
