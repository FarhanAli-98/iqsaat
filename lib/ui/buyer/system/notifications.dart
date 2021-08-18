import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/appBar.dart';
import 'package:iqsaat/ui/Seller/home/dashboard/sellerHome.dart';
import 'package:iqsaat/ui/buyer/home/home.dart';
import 'package:iqsaat/ui/notification/notify_screen.dart';
import 'package:iqsaat/utils/images.dart';
import 'package:iqsaat/utils/splashScreen.dart';


class Notifications extends StatefulWidget {
  const Notifications({Key key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

 
class _NotificationsState extends State<Notifications> {
  @override
void initState(){
  super.initState();
  listennotification();
}
 sownotification(name) {
    NotificationControllor noti = NotificationControllor(
        context: context, notification: name );
    noti.initState();
  }

  listennotification() {
    notifySocket.on("notify", (data) {
      print(data['senderID']);
      if (data['receiverID'].toString() != data['senderID'].toString()) {
        // if (this.mounted) {
        // }
        sownotification(data['senderName']+" sends you AD Request");
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
  appBar: appBarwithCenterTitle(context,"Notifications"),
  
      body: ListView.builder(
          itemCount: 8,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                
                subtitle: Text(
                  'Your Order Id is 4523...',
                  style: TextStyle(fontSize: 11),
                ),
                trailing: Text(
                  '54min ago',
                  style: TextStyle(fontSize: 10),
                ),
                leading: Image.asset(
                  Images.bow,
                ),
                title: Text(
                  ' Your order placed Succefuly',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          }),
      //
    );
  }
}
