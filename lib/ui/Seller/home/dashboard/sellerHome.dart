
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iqsaat/drawer.dart';


import 'dashboard/dashboard.dart';

class SellerHomePage extends StatefulWidget {
  @override
  _SellerHomePageState createState() => _SellerHomePageState();
}

double width, height;

class _SellerHomePageState extends State<SellerHomePage> {
 
  bool isChatSelected = false;
  bool isChat = false;
  bool isNotification = false;
  bool isNotificationCancelClicked = false;
  bool isDashBoard = false;
  bool isRadioScreen = false;
  String selectedUid;
  PageController pageController;
  int page = 0;
<<<<<<< HEAD:lib/ui/Seller/home/seller_home.dart
=======

>>>>>>> main:lib/ui/Seller/home/dashboard/sellerHome.dart
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(
            builder: (context) => InkWell(
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                  child: Container(
                    //width: 55,
                    // height: 30,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 5,
                              color: Colors.black12)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(50),
                            topRight: Radius.circular(50))),
                    child: Image.asset(
                      'assets/appIcons/menu.png',
                      width: 50,
                      height: 50,
                    ),
                  ),
                )),

        actions: <Widget>[
          GestureDetector(
              onTap: (){}, 
              child: Container(
                margin: EdgeInsets.only(right: 13),
                child: Image.asset(
                  'assets/appIcons/offlineVector.png',
                  width: 33,
                  height: 24,
                ),
              ))
        ],
        title: Row(
          children: <Widget>[
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/appIcons/image47.png'),
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Farhan Ali',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                Text(
                  'Seller',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ],
            )
          ],
        ),
      ),
      body:  Dashboard()
    );
  }
  
}