// import 'package:culapp/models/event.dart';

// enum NotificationType { Message, NewEvent, EventInvitation, FollowRequest }

// List<NotificationModel> notifications = [
//   NotificationModel(
//     type: NotificationType.EventInvitation,
//     time: DateTime.now().subtract(Duration(hours: 4)),
//     user: "Aaron McDonald",
//     imageUrl:
//         "https://d26oc3sg82pgk3.cloudfront.net/files/media/edit/image/6845/article_aligned%401x.jpg",
//     event: Event(
//       imageUrl:
//           "https://images.squarespace-cdn.com/content/v1/5aadc54285ede1bd72181a3a/1521339647830-LKHTH62ZRY5TCGVCW81P/ke17ZwdGBToddI8pDm48kLkXF2pIyv_F2eUT9F60jBl7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0iyqMbMesKd95J-X4EagrgU9L3Sa3U8cogeb0tjXbfawd0urKshkc5MgdBeJmALQKw/shutterstock_538256848.jpg?format=1500w",
//       name: "Body & Soul : MLK Celeb",
//       location: "DeLaMar Theater, NewYork",
//       startsAt: DateTime.now().add(Duration(days: 2, hours: 12)),
//       endsAt: DateTime.now().add(Duration(days: 2, hours: 4)),
//     ),
//   ),
//   NotificationModel(
//     time: DateTime.now().subtract(Duration(hours: 22)),
//     type: NotificationType.EventInvitation,
//     user: "Dean Ambrose",
//     imageUrl:
//         "https://s.yimg.com/uu/api/res/1.2/Ae6X86UBN0bW2px0E0OIQA--~B/YXBwaWQ9eXRhY2h5b24-/https://api.tumblr.com/v2/blog/benfalkyahoomovies.tumblr.com/avatar/512",
//     event: Event(
//       imageUrl:
//           "https://www.businessfirstonline.co.uk/wp-content/uploads/2019/09/concert-2527495_1280.jpg",
//       name: "Body & Soul : MLK Celeb",
//       location: "DeLaMar Theater, NewYork",
//       startsAt: DateTime.now().add(Duration(days: 2, hours: 12)),
//       endsAt: DateTime.now().add(Duration(days: 2, hours: 4)),
//     ),
//   ),
//   NotificationModel(
//     time: DateTime.now().subtract(Duration(hours: 3)),
//     type: NotificationType.Message,
//     user: "Marilyn Porter",
//     imageUrl:
//         "https://secure.gravatar.com/avatar/270e234764902723426b52f43d6fdf93?s=512&d=mm&r=r",
//     title: '"Hey, when are you going?"',
//   ),
//   NotificationModel(
//     time: DateTime.now().subtract(Duration(hours: 6)),
//     type: NotificationType.Message,
//     user: "Beverly Cooper",
//     imageUrl:
//         "https://pm1.narvii.com/7357/4e894642d54be008b9baa7669a4143aec4af7558r1-2048-2048v2_00.jpg",
//     title: '"Any plans to visit the Awwwards Summit?"',
//   ),
//   NotificationModel(
//     time: DateTime.now().subtract(Duration(hours: 12)),
//     type: NotificationType.NewEvent,
//     user: "TicketBud",
//     imageUrl:
//         "https://i.ya-webdesign.com/images/world-health-organisation-png-15.png",
//     event: Event(
//       imageUrl:
//           "https://www.cricket.com.au/~/-/media/News/2019/04/06MarkSteketee.ashx?w=1600",
//       startsAt: DateTime.now().add(Duration(days: 2, hours: 12)),
//       endsAt: DateTime.now().add(Duration(days: 2, hours: 4)),
//       price: 9.99,
//       name: "Awwwards Summit 2020",
//       location: "DeLaMar Theater, NewYork",
//     ),
//   ),
//   NotificationModel(
//       time: DateTime.now().subtract(Duration(hours: 12)),
//       type: NotificationType.FollowRequest,
//       imageUrl:
//           "https://pbs.twimg.com/profile_images/1015284352966590464/anc6s1sA.jpg",
//       user: "Tom"),
//   NotificationModel(
//       time: DateTime.now().subtract(Duration(hours: 2)),
//       type: NotificationType.FollowRequest,
//       imageUrl:
//           "https://pbs.twimg.com/profile_images/1015284352966590464/anc6s1sA.jpg",
//       user: "Tom"),
//   NotificationModel(
//       time: DateTime.now().subtract(Duration(hours: 3)),
//       type: NotificationType.FollowRequest,
//       imageUrl:
//           "https://pbs.twimg.com/profile_images/1015284352966590464/anc6s1sA.jpg",
//       user: "Tom")
// ];

// class NotificationModel {
//   DateTime time;
//   String imageUrl;
//   NotificationType type;
//   String user;
//   String title;
//   Event event;

//   NotificationModel({
//     this.imageUrl,
//     this.type,
//     this.user,
//     this.title,
//     this.event,
//     this.time,
//   });

//   NotificationModel.fromJson(Map<String, dynamic> json) {
//     imageUrl = json['image_url'];
//     type = json['type'];
//     user = json['user'];
//     title = json['title'];
//     event = json['event'] != null ? Event.fromJson(json['event']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['image_url'] = this.imageUrl;
//     data['type'] = this.type;
//     data['user'] = this.user;
//     data['title'] = this.title;
//     if (this.event != null) {
//       data['event'] = this.event.toJson();
//     }
//     return data;
//   }
// }

// // class Event {
// //   String name;
// //   String location;
// //   DateTime startTime;
// //   DateTime endTime;
// //   String price;
// //   String imageUrl;

// //   Event(
// //       {this.name,
// //       this.location,
// //       this.startTime,
// //       this.endTime,
// //       this.price,
// //       this.imageUrl});

// //   Event.fromJson(Map<String, dynamic> json) {
// //     name = json['name'];
// //     location = json['location'];
// //     startTime = json['start_time'];
// //     endTime = json['end_time'];
// //     price = json['price'];
// //     imageUrl = json["image_url"];
// //   }

// //   Map<String, dynamic> toJson() {
// //     final Map<String, dynamic> data = new Map<String, dynamic>();
// //     data['name'] = this.name;
// //     data['location'] = this.location;
// //     data['start_time'] = this.startTime;
// //     data['end_time'] = this.endTime;
// //     data['price'] = this.price;
// //     return data;
// //   }
// // }

// var notification = {
//   "image_url": "",
//   "type": "",
//   "user": "",
//   "title": "",
//   "event": {
//     "name": "",
//     "location": "",
//     "start_time": "",
//     "end_time": "",
//     "price": "",
//   }
// };
