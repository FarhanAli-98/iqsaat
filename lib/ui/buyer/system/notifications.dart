import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/appBar.dart';
import 'package:iqsaat/utils/images.dart';
import 'package:iqsaat/utils/routes.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
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
