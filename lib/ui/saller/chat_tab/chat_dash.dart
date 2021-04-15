// import 'package:flutter/material.dart';
// import 'package:iqsaat/Widget/person_card.dart';
// import 'package:iqsaat/utils/app_colors.dart';
// import 'package:socket_io_client/socket_io_client.dart' as IO;

// class ChatTab extends StatefulWidget {
//   @override
//   _ChatTabState createState() => _ChatTabState();
// }

// class _ChatTabState extends State<ChatTab> {

// IO.Socket consumerSocket = IO.io(
//     'http://192.168.43.189/chat',
//     // 'http://192.168.1.180/chat',
//     IO.OptionBuilder()
//         .setPath('/lilac')
//         .setTransports(['websocket'])
//         .setExtraHeaders({"Authorization": "New Token"})
//         .enableAutoConnect()
//         .build());


//   List<Person> list = [
//      Person(
//         name: 'Farhan Ali',
//         status: 'This is getting some description of Profile'),
//           Person(
//         name: 'Farhan Ali',
//         status: 'This is getting some description of Profile'),
//           Person(
//         name: 'Farhan Ali',
//         status: 'This is getting some description of Profile'),
//           Person(
//         name: 'Farhan Ali',
//         status: 'This is getting some description of Profile'),
//           Person(
//         name: 'Farhan Ali',
//         status: 'This is getting some description of Profile'),
//           Person(
//         name: 'Farhan Ali',
//         status: 'This is getting some description of Profile'),
        
//   ];
//    @override
//   void initState() {
//     super.initState();
  
//     consumerSocket.on(
//         "connect", (data) => print('connected from consumer Side'));
      


//   }


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         centerTitle: true,
//         elevation: 0.0,
//         backgroundColor: AppColors.primarycolor,
//         title: Text(
//           'Chat',
//           // style: Styles.heading,
//         ),
//       ),
//       body: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Container(
//               margin: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 5.0),
//               child: Text("Messages",
//                   style: TextStyle(
//                     fontSize: 14.0,
//                     fontWeight: FontWeight.bold,
//                     color: AppColors.primarycolor,
//                   )),
//             ),
//             Column(
//               children:
//                   list.map((person) => Personcard(person: person)).toList(),
//             ),
//           ]),
//     );
//   }
// }

// class Person {
//   String name;
//   String status;
//   Person({this.name, this.status});
// }
