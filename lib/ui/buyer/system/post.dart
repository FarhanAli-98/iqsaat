
// import 'package:flutter/material.dart';
// import 'package:iqsaat/utils/app_colors.dart';

// class UserPost extends StatelessWidget {
//   final String profileimageUrl;
//   final String title;
//   final String description;
//   final String imageUrl;
//   const UserPost({
//     Key key,
//     @required this.profileimageUrl,
//     @required this.title,
//     @required this.description,
//     @required this.imageUrl,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: AppColors.primarycolor.withOpacity(0.4),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           ListTile(
//             leading: Padding(
//               padding: const EdgeInsets.all(4.0),
//               child: AspectRatio(
//                 aspectRatio: 1,
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(200),
//                   child: CachedNetworkImage(
//                     imageUrl: profileimageUrl,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//             ),
//             title: Text(
//               title,
//               style: TextStyle(
//                 fontSize: DS.setSP(14),
//               ),
//             ),
//             subtitle: Padding(
//               padding: const EdgeInsets.only(top: 4.0),
//               child: Text(
//                 timeago.format(
//                   DateTime.now().subtract(
//                     Duration(minutes: 43),
//                   ),
//                 ),
//                 style: TextStyle(
//                   fontSize: DS.setSP(12),
//                 ),
//               ),
//             ),
//             trailing: Container(
//               width: DS.setWidthRatio(0.08),
//               child: ThreeDotsIcon(),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(
//               horizontal: 16.0,
//               vertical: 4,
//             ),
//             child: Text(description),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16.0),
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(8),
//               child: Image.asset(imageUrl),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(
//               left: 16.0,
//               bottom: 12,
//               top: 12,
//             ),
//             child: Text(
//               "View Complete Post",
//               style: TextStyle(
//                 color: Colors.black54,
//                 fontSize: DS.setSP(14),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
