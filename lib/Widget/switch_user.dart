
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:iqsaat/utils/app_colors.dart';

// class SwitchUser extends StatelessWidget {
//   const SwitchUser({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         showModalBottomSheet(
//           context: context,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(12),
//               topRight: Radius.circular(12),
//             ),
//           ),
//           builder: (context) {
//             return Column(
//               children: [
//                 Container(
//                   margin: EdgeInsets.symmetric(vertical: 12),
//                   width: 100,
//                   height: 6,
//                   decoration: BoxDecoration(
//                     color: Colors.black54,
//                     borderRadius: BorderRadius.circular(100),
//                   ),
//                 ),
//                 SizedBox(height: 12),
//                 ListTile(
//                   onTap: () => Navigator.of(context).pop(),
//                   leading: CircleAvatar(
//                     backgroundColor: AppColors.primarycolor,
//                     child: Icon(Icons.business, color: Colors.white),
//                   ),
//                   title: Text("Switch To Business"),
//                 ),
//                 ListTile(
//                   onTap: () => Navigator.of(context).pop(),
//                   leading: CircleAvatar(
//                     backgroundColor: AppColors.primarycolor,
//                     child:
//                         Icon(FontAwesomeIcons.university, color: Colors.white),
//                   ),
//                   title: Text("Switch To University"),
//                 ),
//               ],
//             );
//           },
//         );
//       },
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text("Moeen Shahid", style: TextStyle(color: Colors.black)),
//           SizedBox(width: 8),
//           Icon(Icons.arrow_drop_down),
//         ],
//       ),
//     );
//   }
// }
