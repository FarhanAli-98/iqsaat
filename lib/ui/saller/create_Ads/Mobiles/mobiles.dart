import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/order_tile.dart';
import 'package:iqsaat/models/notification.dart';
import 'package:iqsaat/utils/app_colors.dart';

class OrderList extends StatefulWidget {
  @override
  _OrderListState createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {

    final notificationss = notifications
        .where((noti) => noti.type == NotificationType.EventInvitation)
        .toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
        //centerTitle: true,
        elevation: 0.0,
        backgroundColor: AppColors.primarycolor,
        title: Text(
          'Order Replace',
          style: TextStyle(fontWeight: FontWeight.w400),
          // style: Styles.heading,
        ),
      ),
      body: SingleChildScrollView(



         

    child: ListView.separated(
      separatorBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4),
        child: Divider(color: Colors.black38),
      ),
      shrinkWrap: true,
      itemCount: notificationss.length,
      itemBuilder: (context, index) {
        final notification = notificationss[index];
        if (notification.type == NotificationType.EventInvitation) {
          return SingleChildScrollView(
            child: EventTile(
              trailingText: "Sending you a Order",
              notification: notification,
              isInvited: true,
              isFollowRequest: true,
            ),
          );
        }
        return Container();
      },
    )
      ),
      
    );
  }
}