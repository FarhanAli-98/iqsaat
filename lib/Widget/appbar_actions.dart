import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iqsaat/ui/buyer/system/vault.dart';
import 'package:iqsaat/ui/buyer/system/notifications.dart';
import 'package:iqsaat/ui/buyer/system/search.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/images.dart';
import 'package:iqsaat/utils/nav_bar_icons_icons.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

List<Widget> appbarActions(BuildContext context) {
  return [
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: InkWell(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => SearchScreen()));
        },
        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300]),
              borderRadius: BorderRadius.circular(10)),
          child: Icon(
            Icons.search_rounded,
            color: Colors.black,
            size: 18,
          ),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: InkWell(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Notifications()));
        },
        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300]),
              borderRadius: BorderRadius.circular(10)),
          child: Icon(
            Icons.notifications_outlined,
            size: 18,
            color: Colors.black,
          ),
        ),
      ),
    ),

    Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: InkWell(
        onTap: () {
                 Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => MyVault()));
        },
        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300]),
              borderRadius: BorderRadius.circular(10)),
          child: Icon(
            CupertinoIcons.bag,
            size: 18,
            color: Colors.black,
          ),
        ),
      ),
    ),
  ];
}

//Appbar actions with less icons for different pages

List<Widget> appbarActionsLessIcons(BuildContext context) {
  return [
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300]),
              borderRadius: BorderRadius.circular(10)),
          child: Icon(
            Icons.upload_outlined,
            size: 18,
            color: Colors.black,
          ),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300]),
              borderRadius: BorderRadius.circular(10)),
          child: Icon(
            NavBarIcons.flashdeals,
            color: Colors.black,
            size: 16,
          ),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: InkWell(
        onTap: () {
          ;
        },
        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300]),
              borderRadius: BorderRadius.circular(10)),
          child: Icon(
            CupertinoIcons.bag,
            size: 18,
            color: Colors.black,
          ),
        ),
      ),
    ),
  ];
}

//book appointment app bar

List<Widget> appointmentappbarActionsLessIcons(BuildContext context) {
  return [
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300]),
              borderRadius: BorderRadius.circular(10)),
          child: Icon(
            Icons.notifications_outlined,
            size: 18,
            color: Colors.black,
          ),
        ),
      ),
    ),
    Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[300]),
                borderRadius: BorderRadius.circular(10)),
            child: ImageIcon(
              AssetImage(Images.bow),
              size: 18,
              color: Colors.black,
            ),
          ),
        ))
  ];
}

List<Widget> appbarExercise(BuildContext context) {
  return [
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300]),
              borderRadius: BorderRadius.circular(10)),
          child: ImageIcon(
            AssetImage(Images.fitness),
            color: Colors.black,
            size: 20,
          ),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300]),
              borderRadius: BorderRadius.circular(10)),
          child: ImageIcon(
            AssetImage(Images.chart),
            color: Colors.black,
            size: 20,
          ),
        ),
      ),
    ),
  ];
}
// period tracking

List<Widget> periodappbarActionsLessIcons(BuildContext context) {
  return [
    Padding(
      padding: const EdgeInsets.only(right: 30, top: 10, bottom: 10),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300]),
              borderRadius: BorderRadius.circular(10)),
          child: Icon(
            Icons.notifications_outlined,
            size: 18,
            color: Colors.black,
          ),
        ),
      ),
    ),
  ];
}
