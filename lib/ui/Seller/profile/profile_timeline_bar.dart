import 'package:flutter/material.dart';
import 'package:iqsaat/models/chat_item.dart';
import 'package:iqsaat/ui/buyer/home/home.dart';

class TimeLineBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 16),
      children: <Widget>[
        // SizedBox(height: 12),
        // UserPost(
        //   profileimageUrl: chatItems.last.imageUrl,
        //   title: "Farhan Ali  \u27A1  Northern Florida Regional Tournament",
        //   description:
        //       "Rent Honda BRV, Toyota Corolla, Toyota Yaris, Honda Civic in Islamabad with driver for your city and intercity car rental requirements.\n Honda BRV: 5,000/day in Islamabad & 6,000/day outside Islamabad",
        //   imageUrl: "assets/images/car1.webp",
        // ),
        // SizedBox(height: 12),
        // UserPost(
        //   profileimageUrl: chatItems.first.imageUrl,
        //   title: "Dan Jordan",
        //   description:
        //       "2015 - 86,000 km \n2015 Model Honda Civic UG 1.8 Vti Oriel Prosmatec Full Option Rebirth",
        //   imageUrl: "assets/images/image.webp",
        // ),
        // SizedBox(height: 12),
        // UserPost(
        //   profileimageUrl: chatItems.last.imageUrl,
        //   title: "Farhan Ali  \u27A1  Northern Florida Regional Tournament",
        //   description:
        //       "Rent Honda BRV, Toyota Corolla, Toyota Yaris, Honda Civic in Islamabad with driver for your city and intercity car rental requirements.\n Honda BRV: 5,000/day in Islamabad & 6,000/day outside Islamabad",
        //   imageUrl: "assets/images/car1.webp",
        // ),
      ],
    );
  }
}
