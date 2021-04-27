import 'package:iqsaat/models/event.dart';

enum NotificationType { Message, NewEvent, EventInvitation, FollowRequest }

List<NotificationModel> notifications = [
  NotificationModel(
    type: NotificationType.EventInvitation,
    time: DateTime.now().subtract(Duration(hours: 4)),
    user: "Farhan Ali",
    imageUrl:
        "https://www.mytrendyphone.eu/images/Samsung-Galaxy-A71-Duos-128GB-Prism-Crush-Black-8806090204739-15012020-01-p.jpg",
    event: Event(
      imageUrl:
          "https://www.mytrendyphone.eu/images/Samsung-Galaxy-A71-Duos-128GB-Prism-Crush-Black-8806090204739-15012020-01-p.jpg",
      name: "Sumsang A71",
      location: "Green Town Lahore",
      startsAt: DateTime.now().add(Duration(days: 2, hours: 12)),
      endsAt: DateTime.now().add(Duration(days: 2, hours: 4)),
    ),
  ),
    NotificationModel(
    type: NotificationType.EventInvitation,
    time: DateTime.now().subtract(Duration(hours: 4)),
    user: "Farhan Ali",
    imageUrl:
        "https://www.mytrendyphone.eu/images/Samsung-Galaxy-A71-Duos-128GB-Prism-Crush-Black-8806090204739-15012020-01-p.jpg",
    event: Event(
      imageUrl:
          "https://www.mytrendyphone.eu/images/Samsung-Galaxy-A71-Duos-128GB-Prism-Crush-Black-8806090204739-15012020-01-p.jpg",
      name: "Sumsang A71",
      location: "Green Town Lahore",
      startsAt: DateTime.now().add(Duration(days: 2, hours: 12)),
      endsAt: DateTime.now().add(Duration(days: 2, hours: 4)),
    ),
  ),
    NotificationModel(
    type: NotificationType.EventInvitation,
    time: DateTime.now().subtract(Duration(hours: 4)),
    user: "Farhan Ali",
    imageUrl:
        "https://www.mytrendyphone.eu/images/Samsung-Galaxy-A71-Duos-128GB-Prism-Crush-Black-8806090204739-15012020-01-p.jpg",
    event: Event(
      imageUrl:
          "https://www.mytrendyphone.eu/images/Samsung-Galaxy-A71-Duos-128GB-Prism-Crush-Black-8806090204739-15012020-01-p.jpg",
      name: "Sumsang A71",
      location: "Green Town Lahore",
      startsAt: DateTime.now().add(Duration(days: 2, hours: 12)),
      endsAt: DateTime.now().add(Duration(days: 2, hours: 4)),
    ),
  ),
  NotificationModel(
    time: DateTime.now().subtract(Duration(hours: 22)),
    type: NotificationType.EventInvitation,
    user: "Farhan Ali",
    imageUrl:
        "https://assets.swappie.com/swappie-product-iphone-12-pro-max-pacific-blue-back.png",
    event: Event(
      imageUrl:
          "https://assets.swappie.com/swappie-product-iphone-12-pro-max-pacific-blue-back.png",
      name: "Iphone 12",
      location: " Green Town Lahore",
      startsAt: DateTime.now().add(Duration(days: 2, hours: 12)),
      endsAt: DateTime.now().add(Duration(days: 2, hours: 4)),
    ),
  ),
   NotificationModel(
    time: DateTime.now().subtract(Duration(hours: 22)),
    type: NotificationType.EventInvitation,
    user: "Farhan Ali",
    imageUrl:
        "https://assets.swappie.com/swappie-product-iphone-12-pro-max-pacific-blue-back.png",
    event: Event(
      imageUrl:
          "https://assets.swappie.com/swappie-product-iphone-12-pro-max-pacific-blue-back.png",
      name: "Iphone 12",
      location: " Green Town Lahore",
      startsAt: DateTime.now().add(Duration(days: 2, hours: 12)),
      endsAt: DateTime.now().add(Duration(days: 2, hours: 4)),
    ),
  ),
   NotificationModel(
    time: DateTime.now().subtract(Duration(hours: 22)),
    type: NotificationType.EventInvitation,
    user: "Farhan Ali",
    imageUrl:
        "https://assets.swappie.com/swappie-product-iphone-12-pro-max-pacific-blue-back.png",
    event: Event(
      imageUrl:
          "https://assets.swappie.com/swappie-product-iphone-12-pro-max-pacific-blue-back.png",
      name: "Iphone 12",
      location: " Green Town Lahore",
      startsAt: DateTime.now().add(Duration(days: 2, hours: 12)),
      endsAt: DateTime.now().add(Duration(days: 2, hours: 4)),
    ),
  ),
   NotificationModel(
    time: DateTime.now().subtract(Duration(hours: 22)),
    type: NotificationType.EventInvitation,
    user: "Farhan Ali",
    imageUrl:
        "https://assets.swappie.com/swappie-product-iphone-12-pro-max-pacific-blue-back.png",
    event: Event(
      imageUrl:
          "https://assets.swappie.com/swappie-product-iphone-12-pro-max-pacific-blue-back.png",
      name: "Iphone 12",
      location: " Green Town Lahore",
      startsAt: DateTime.now().add(Duration(days: 2, hours: 12)),
      endsAt: DateTime.now().add(Duration(days: 2, hours: 4)),
    ),
  ),
  NotificationModel(
    time: DateTime.now().subtract(Duration(hours: 3)),
    type: NotificationType.Message,
    user: "Farhan Ali",
    imageUrl:
        "https://secure.gravatar.com/avatar/270e234764902723426b52f43d6fdf93?s=512&d=mm&r=r",
    title: '"Hey, when are you going?"',
  ),
  NotificationModel(
    time: DateTime.now().subtract(Duration(hours: 6)),
    type: NotificationType.Message,
    user: "Farhan Ali",
    imageUrl:
        "https://pm1.narvii.com/7357/4e894642d54be008b9baa7669a4143aec4af7558r1-2048-2048v2_00.jpg",
    title: '"Any plans to visit the Awwwards Summit?"',
  ),
  NotificationModel(
    time: DateTime.now().subtract(Duration(hours: 12)),
    type: NotificationType.NewEvent,
    user: "Farhan Ali",
    imageUrl:
        "https://i.ya-webdesign.com/images/world-health-organisation-png-15.png",
    event: Event(
      imageUrl:
          "https://www.cricket.com.au/~/-/media/News/2019/04/06MarkSteketee.ashx?w=1600",
      startsAt: DateTime.now().add(Duration(days: 2, hours: 12)),
      endsAt: DateTime.now().add(Duration(days: 2, hours: 4)),
      price: 9.99,
      name: "Farhan Ali",
      location: " Green Town Lahore",
    ),
  ),
  NotificationModel(
      time: DateTime.now().subtract(Duration(hours: 12)),
      type: NotificationType.FollowRequest,
      imageUrl:
          "https://pbs.twimg.com/profile_images/1015284352966590464/anc6s1sA.jpg",
      user: "Farhan Ali"),
  NotificationModel(
      time: DateTime.now().subtract(Duration(hours: 2)),
      type: NotificationType.FollowRequest,
      imageUrl:
          "https://pbs.twimg.com/profile_images/1015284352966590464/anc6s1sA.jpg",
      user: "Farhan Ali"),
  NotificationModel(
      time: DateTime.now().subtract(Duration(hours: 3)),
      type: NotificationType.FollowRequest,
      imageUrl:
          "https://pbs.twimg.com/profile_images/1015284352966590464/anc6s1sA.jpg",
      user: "Farhan Ali")
];

class NotificationModel {
  DateTime time;
  String imageUrl;
  NotificationType type;
  String user;
  String title;
  Event event;

  NotificationModel({
    this.imageUrl,
    this.type,
    this.user,
    this.title,
    this.event,
    this.time,
  });

  NotificationModel.fromJson(Map<String, dynamic> json) {
    imageUrl = json['image_url'];
    type = json['type'];
    user = json['user'];
    title = json['title'];
    event = json['event'] != null ? Event.fromJson(json['event']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image_url'] = this.imageUrl;
    data['type'] = this.type;
    data['user'] = this.user;
    data['title'] = this.title;
    if (this.event != null) {
      data['event'] = this.event.toJson();
    }
    return data;
  }
}

// class Event {
//   String name;
//   String location;
//   DateTime startTime;
//   DateTime endTime;
//   String price;
//   String imageUrl;

//   Event(
//       {this.name,
//       this.location,
//       this.startTime,
//       this.endTime,
//       this.price,
//       this.imageUrl});

//   Event.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     location = json['location'];
//     startTime = json['start_time'];
//     endTime = json['end_time'];
//     price = json['price'];
//     imageUrl = json["image_url"];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['name'] = this.name;
//     data['location'] = this.location;
//     data['start_time'] = this.startTime;
//     data['end_time'] = this.endTime;
//     data['price'] = this.price;
//     return data;
//   }
// }

var notification = {
  "image_url": "",
  "type": "",
  "user": "",
  "title": "",
  "event": {
    "name": "",
    "location": "",
    "start_time": "",
    "end_time": "",
    "price": "",
  }
};
