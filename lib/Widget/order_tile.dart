import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:iqsaat/models/notification.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:timeago/timeago.dart' as timeago;

class EventTile extends StatelessWidget {
  const EventTile({
    Key key,
    this.isInvited = false,
    this.isFollowRequest = false,
    @required this.trailingText,
    @required this.notification,
  }) : super(key: key);

  final NotificationModel notification;
  final bool isInvited;
  final bool isFollowRequest;
  final String trailingText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16, top: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: AspectRatio(
              aspectRatio: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: CachedNetworkImage(
                  imageUrl: notification.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          if (isFollowRequest) SizedBox(width: 10),
          if (!isFollowRequest) SizedBox(width: 18),
          Expanded(
            flex: 6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                        flex: 3,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "${notification.user} ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize:  (14)),
                            ),
                            Text(
                              trailingText,
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize:  (12)),
                            ),
                          ],
                        )),
                    Flexible(
                      child: Text(
                        timeago.format(notification.time),
                        style: TextStyle(fontSize:  (12)),
                      ),
                    ),
                  ],
                ),
                if (isFollowRequest) SizedBox(height: 8),
                if (isFollowRequest)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: CachedNetworkImage(
                              imageUrl: notification.event.imageUrl,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 12),
                            Text(
                              notification.event.name,
                              style: TextStyle(
                                fontSize:  (14),
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 6),
                            Text(
                              notification.event.location,
                              style: TextStyle(
                                fontSize:  (12),
                                color: Colors.black54,
                              ),
                            ),
                            SizedBox(height: 6),
                            Text(
                              '''${DateFormat("HH:MM a").format(notification.event.startsAt)} - ${DateFormat("HH:MM a").format(notification.event.endsAt)} ''',
                              style: TextStyle(
                                fontSize:  (12),
                                color: Colors.black54,
                              ),
                            ),
                            SizedBox(height: 6),
                            Text(
                              notification.event.price == null
                                  ? "Free"
                                  : "Price from \$${notification.event.price}",
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColors.primarycolor,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                if (isInvited) SizedBox(height: 8),
                // if (isInvited)
                //   Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: <Widget>[
                //       Flexible(
                //         flex: 2,
                //         child: PrimaryButton(
                //           borderRaduis: BorderRadius.circular(6),
                //           padding: EdgeInsets.symmetric(
                //             vertical: 1,
                //             horizontal: 12,
                //           ),
                //           onTap: () {},
                //           text: "Accept",
                //         ),
                //       ),
                //       SizedBox(width: 12),
                //       Flexible(
                //         flex: 2,
                //         child: PrimaryButton(
                //           color: Color(0XFF9F9F9F),
                //           borderRaduis: BorderRadius.circular(6),
                //           padding: EdgeInsets.symmetric(
                //             vertical: 1,
                //             horizontal: 12,
                //           ),
                //           onTap: () {},
                //           text: "Decline",
                //         ),
                //       ),
                //       Expanded(
                //         child: Container(),
                //       ),
                //     ],
                //   ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
