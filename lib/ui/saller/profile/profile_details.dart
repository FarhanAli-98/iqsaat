// import 'package:cached_network_image/cached_network_image.dart';

// import 'package:flutter/material.dart';

// class ProfileDetails extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: <Widget>[
//           Material(
//             elevation: 4,
//             child: SafeArea(
//               child: Padding(
//                 padding: const EdgeInsets.all(24.0),
//                 child: Row(
//                   children: <Widget>[
//                     Expanded(
//                       flex: 2,
//                       child: AspectRatio(
//                         aspectRatio: 1,
//                         child: ClipRRect(
//                           borderRadius: BorderRadius.circular(100),
//                           child: CachedNetworkImage(
//                             imageUrl:
//                                 "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       flex: 5,
//                       child: Padding(
//                         padding: const EdgeInsets.only(left: 16.0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: <Widget>[
//                             Text(
//                               "Moeed Shah",
//                               style: TextStyle(fontSize: DS.setSP(18)),
//                             ),
//                             SizedBox(height: 6),
//                             Text(
//                               "University Of Florida",
//                               style: TextStyle(fontSize: DS.setSP(14)),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       child: IconButton(
//                         icon: Icon(
//                           Icons.close,
//                           color: AppColors.primaryColor,
//                         ),
//                         onPressed: () {
//                           Navigator.of(context).pop();
//                         },
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           Expanded(
//             child: ListView(
//               padding: EdgeInsets.zero,
//               children: <Widget>[
//                 ListTile(
//                   onTap: () {},
//                   title: Text("My Profile"),
//                   trailing: Text(
//                     "EDIT",
//                     style: TextStyle(color: Colors.black54),
//                   ),
//                 ),
//                 ListTile(
//                   onTap: () {
//                     Navigator.of(context).push(
//                       MaterialPageRoute(
//                         builder: (_) => EventForm(
//                           formType: FormType.Add,
//                         ),
//                       ),
//                     );
//                   },
//                   title: Text("Create Events"),
//                 ),
//                 ExpansionTile(
//                   // backgroundColor: AppColors.greyBackground,
//                   title: Text("Events"),
//                   children: <Widget>[
//                     ListTile(
//                       onTap: () {
//                         Navigator.of(context).push(
//                           MaterialPageRoute(
//                             builder: (_) => MyEventsScreen(),
//                           ),
//                         );
//                       },
//                       title: Text("My Events"),
//                     ),
//                     ListTile(
//                       onTap: () {
//                         Navigator.of(context).push(
//                           MaterialPageRoute(
//                             builder: (_) => AttendedEventsScreen(),
//                           ),
//                         );
//                       },
//                       title: Text("Events Attended"),
//                     ),
//                     ListTile(
//                       onTap: () {
//                         Navigator.of(context).push(
//                           MaterialPageRoute(
//                             builder: (_) => FollowingEventsScreen(),
//                           ),
//                         );
//                       },
//                       title: Text("Events Following"),
//                     ),
//                   ],
//                 ),
//                 ListTile(
//                   onTap: () {
//                     Navigator.of(context).push(
//                       MaterialPageRoute(
//                         builder: (_) => SettingScreen(),
//                       ),
//                     );
//                   },
//                   title: Text("Settings"),
//                 ),
//                 ListTile(
//                   onTap: () {
//                     Navigator.of(context).push(
//                       MaterialPageRoute(
//                         builder: (_) => PremiumMembershipScreen(),
//                       ),
//                     );
//                   },
//                   title: Text(
//                     "Permium Membership",
//                     style: TextStyle(color: AppColors.primaryColor),
//                   ),
//                 ),
//                 ListTile(
//                   onTap: () {
//                     Navigator.of(context).push(
//                       MaterialPageRoute(
//                         builder: (_) => RegisterAsAdminScreen(),
//                       ),
//                     );
//                   },
//                   title: Text(
//                     "Register as Admin",
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 ListTile(
//                   onTap: () {
//                     Navigator.of(context).push(
//                       MaterialPageRoute(
//                         builder: (_) => RegisterAsBusinessScreen(),
//                       ),
//                     );
//                   },
//                   title: Text(
//                     "Register as Business",
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 // ListTile(
//                 //   onTap: () {},
//                 //   title: Text(
//                 //     "Follow Requests",
//                 //   ),
//                 // ),

//                 ListTile(
//                   onTap: () {},
//                   title: Text("Support"),
//                 ),
//                 ListTile(
//                   onTap: () {},
//                   title: Text(
//                     "Invite Friends",
//                     style: TextStyle(color: AppColors.primaryColor),
//                   ),
//                 ),
//                 ListTile(
//                   onTap: () {},
//                   title: Text("Logout"),
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
