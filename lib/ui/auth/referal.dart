// /* import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:girafee/utils/app_colors.dart';

// class Referal extends StatefulWidget {
//   @override
//   _ReferalState createState() => _ReferalState();
// }

// class _ReferalState extends State<Referal> {
//   double width, height;
//   bool _isloading = false;

//   Widget _body(BuildContext context) {
//     return ListView(
//       children: <Widget>[
//         Container(
//           margin: EdgeInsets.only(top: 15),
//           child: Stack(
//             children: <Widget>[
//               Container(
//                 height: 40,
//                 child: Align(
//                   alignment: Alignment.topLeft,
//                   child: Padding(
//                     padding: EdgeInsets.only(
//                       bottom: 10,
//                     ),
//                     child: GestureDetector(
//                       onTap: () => Navigator.pop(context),
//                       child: Icon(
//                         Icons.chevron_left,
//                         color: Colors.grey,
//                         size: 40,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               Container(
//                   margin: EdgeInsets.only(top: 32, left: 16, right: 16),
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(60),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey.withOpacity(0.3),
//                           spreadRadius: 2,
//                           blurRadius: 10,
//                         )
//                       ]),
//                   child: Card(
//                     // elevation: 9.0,
//                     shape: RoundedRectangleBorder(
//                       side: BorderSide.none,
//                       borderRadius: BorderRadius.circular(40),
//                     ),
//                     child: Padding(
//                         padding: const EdgeInsets.only(
//                           top: 45.0,
//                         ),
//                         child: Container(
//                           height: 230,
//                           child: Column(
//                             children: [
//                               Text("Please enter a referal code"),
//                               Container(
//                                 margin: EdgeInsets.only(
//                                     left: 20, right: 20, top: 20),
//                                 child: TextField(
//                                   decoration: InputDecoration(
//                                     hintText: 'Enter the code',
//                                   ),
//                                 ),
//                               )
//                             ],
//                           ),
//                         )),
//                   )),
//               /*  Align(
//                 alignment: Alignment.topCenter,
//                 child: Container(
//                   height: 80,
//                   width: 80,
//                   decoration: BoxDecoration(
//                       // color: Colors.red,
//                       shape: BoxShape.circle),
//                   child: Stack(
//                     children: [
//                       CircleAvatar(
//                         backgroundColor: Colors.grey[100],
//                         radius: 40,
//                         child: I(
//                           FontAwesomeIcons.user,
//                           color: Colors.grey,
//                           size: 30,
//                         ),
//                         //backgroundImage: AssetImage('assets/appIcons/image47.png'),
//                       ),

//                     ],
//                   ),
//                 ),
//               ), */
//             ],
//           ),
//         ),
//       ],
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     width = MediaQuery.of(context).size.width;
//     height = MediaQuery.of(context).size.height;
//     return SafeArea(
//       child: Container(
//         decoration: BoxDecoration(gradient: AppColors.background),
//         child: Scaffold(
//           backgroundColor: Colors.transparent,
//           //appBar: appBarwithbackIcon(context),
//           body: Container(
//             margin: EdgeInsets.all(5),
//             child: Stack(
//               children: <Widget>[
//                 Container(
//                   child: _body(context),
//                 ),
//                 _isloading
//                     ? Container(
//                         color: Colors.white.withOpacity(0.6),
//                         child: Center(
//                           child: CircularProgressIndicator(),
//                         ),
//                       )
//                     : Container(),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//  */
