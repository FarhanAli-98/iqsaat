import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

FlutterLocalNotificationsPlugin fltrNotification;

class NotificationControllor extends StatelessWidget {
  final context;

  final notification;

  const NotificationControllor({Key key, this.context, this.notification})
      : super(key: key);

  void initState() {
    fltrNotification = FlutterLocalNotificationsPlugin();
    var initializationSettingsAndroid = AndroidInitializationSettings(
        'ic_launcher'); // <- default icon name is @mipmap/ic_launcher
    var initializationSettingsIOS = IOSInitializationSettings(
        requestSoundPermission: true,
        requestBadgePermission: true,
        requestAlertPermission: true,
        onDidReceiveLocalNotification: _onDidReceiveLocalNotification);
    var initializationSettings = InitializationSettings(
        android: initializationSettingsAndroid, iOS: initializationSettingsIOS);
    fltrNotification.initialize(initializationSettings,
        onSelectNotification: notificationSelected);
    _showNotification();
    //onSelectNotification: notificationSelected);
    // getlikecount();
    // cronjobforlike();
  }

  Future _onDidReceiveLocalNotification(
      int id, String title, String body, String payload) async {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text(title),
        content: Text(body),
        actions: [
          FlatButton(
            child: Text('Ok'),
            onPressed: () {
              Navigator.pushNamed(context, "/messages");
            },
          )
        ],
      ),
    );
  }

  Future _showNotification() async {
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
            'your channel id', 'your channel name', 'your channel description',
            importance: Importance.max,
            priority: Priority.high,
            showWhen: false);
    const NotificationDetails platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannelSpecifics);
    await fltrNotification.show(
        0, 'Liked Your Post', notification, platformChannelSpecifics,
        payload: notification);
  }

  Future notificationSelected(String payload) async {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text("Notification Clicked $payload"),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Container();
  }
}
