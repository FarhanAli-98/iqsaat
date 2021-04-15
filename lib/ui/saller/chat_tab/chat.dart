// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:iqsaat/request/getMymsg.dart';
// import 'package:iqsaat/utils/app_colors.dart';
// import 'package:iqsaat/utils/images.dart';
// import 'package:socket_io_client/socket_io_client.dart';

// class ChatPage extends StatefulWidget {
//    final String receiverID, senderID, name;
//   final Socket socketIO;

//   const ChatPage({Key key, @required this.receiverID, @required this.senderID, @required this.name,@required this.socketIO}) : super(key: key);
//   @override
//   _ChatPageState createState() => _ChatPageState();
// }


// class _ChatPageState extends State<ChatPage> {

//    List<Message> messages;
//    ScrollController _chatLVController;
//   @override
//   void initState() {
//     super.initState();

//     listenMessages();
//     widget.socketIO.on('disconnect',
//         (data) => print("I have disconnected from consumer side"));
//   }

//   listenMessages() {
//     widget.socketIO.on("message", (data) {
//       print(data.toString());
//       // print(data['senderID']);
//       // print(widget.receiverID);
//       // if (data['senderID'] == widget.receiverID) {
//       //   print('saving messages to list');
//       //   if (this.mounted) {
//       //     setState(() {
//       //       messages.add(Message(
//       //         text: data['text'],
//       //         senderId: data['senderID'],
//       //         senderName: data['senderName'],
//       //         senderDisplayPictureUrl: data['senderDisplayPictureURL'],
//       //         receiverId: data['receiverID'],
//       //         timestamp: DateTime.parse(data['timestamp'] as String),
//       //       ));
//       //     });
//       //   }

//       //   _chatListScrollToBottom();
//       // }
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.white,
//       appBar: AppBar(
//         elevation: 5,
//         titleSpacing: 0,
//         backgroundColor: Colors.white,
//         automaticallyImplyLeading: false,
//         title: Row(
//           children: [
//             Expanded(
//               flex: 1,
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 8.0),
//                 child: GestureDetector(
//                   onTap: (){
//                     Navigator.pop(context, "Chat Tab"); 
//                   },
//                     child: Icon(
//                       Icons.chevron_left,
//                       color: Colors.black,
//                       size: 30,
//                     ),
//                    ),
//               ),
//             ),
//             Expanded(
//               flex: 10,
//               child: ListTile(
//                 leading: CircleAvatar(
//                   radius: 20.0,
//                   backgroundImage: AssetImage(Images.person),
//                 ),
//                 title: Text(
//                   'Farhan',
//                  // style: Styles.heading,
//                 ),
//               ),
//             ),
//             IconButton(
//                 icon: Icon(
//                   Icons.more_vert,
//                   color: Colors.black,
//                   size: 30,
//                 ),
//                 onPressed: null)
//           ],
//         ),
//       ),
//       body: Container(
//         padding: EdgeInsets.all(15),
//         child: Column(
//           children: <Widget>[
//             SizedBox(height: 12),
//             Expanded(
//               flex: 10,
//               child: ListView(
//                 children: <Widget>[
//                   MessageBox(message: "Hey whats going on?", isSent: false),
//                   MessageBox(message: "Nothing Special", isSent: true),
//                   MessageBox(message: "Sounds Perfect", isSent: false),
//                   MessageBox(
//                     message:
//                         "I have to go through a few things, then I am for palcement order.",
//                     isSent: false,
//                   ),
//                   MessageBox(message: "Ok cool", isSent: true),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: Container(
//                 decoration: BoxDecoration(
//                     border: Border.all(color: Colors.grey, width: 1),
//                     borderRadius: BorderRadius.circular(30)),
//                 child: Row(
//                   children: <Widget>[
//                     SizedBox(width: 12),
//                     IconButton(icon: Icon(Icons.attach_file), onPressed: null),
//                     Expanded(
//                       child: TextField(
//                         decoration: InputDecoration(
//                           border: InputBorder.none,
//                           hintText: "Type Here",
                          
//                           hintStyle: TextStyle(
//                             color: Colors.black54,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 10),
//                       child: CircleAvatar(
//                         backgroundColor: Color(0xffF6F9FF),
//                         child: IconButton(
//                           icon: Icon(
//                             Icons.arrow_upward,
//                             size: 25,
//                           ),
//                           onPressed: () {},
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//    _chatListScrollToBottom() {
//     Timer(Duration(milliseconds: 100), () {
//       if (_chatLVController.hasClients) {
//         _chatLVController.animateTo(
//           _chatLVController.position.maxScrollExtent,
//           duration: Duration(milliseconds: 100),
//           curve: Curves.decelerate,
//         );
//       }
//     });
//   }
// }

// class MessageBox extends StatelessWidget {
//   final String message;
//   final bool isSent;
//   const MessageBox({
//     Key key,
//     @required this.message,
//     @required this.isSent,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment:
//           isSent ? CrossAxisAlignment.end : CrossAxisAlignment.start,
//       children: [
//         Row(
//           mainAxisAlignment:
//               isSent ? MainAxisAlignment.end : MainAxisAlignment.start,
//           children: <Widget>[
//             // if (!isSent) SizedBox(width: 12),
//             Container(
//               decoration: BoxDecoration(
//                 color: isSent ? AppColors.primarycolor : Color(0xFFF3F3F3),
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               margin: EdgeInsets.symmetric(vertical: 6),
//               padding: EdgeInsets.all(20),
//               child: Column(
//                 children: [
//                   Text(
//                     message,
//                     style: TextStyle(
//                       color: isSent ? Colors.white : Colors.black,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//         Row(
//           mainAxisAlignment:
//               isSent ? MainAxisAlignment.end : MainAxisAlignment.start,
//           children: [
//             if (isSent)
//               Icon(
//                 Icons.done_all,
//                 color: Colors.green,
//                 size: 15,
//               ),
//             Text(
//               'Today at 9:21 AM',
//               style: TextStyle(fontSize: 10, color: Color(0xffA8B4D4)),
//             )
//           ],
//         )
//       ],
//     );
//   }
// }
