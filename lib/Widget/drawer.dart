import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/custom_field.dart';
import 'package:iqsaat/ui/saller/home/chat.dart';
import 'package:iqsaat/ui/saller/home/profile/profile_screen.dart';
import 'package:iqsaat/ui/user/chat/chat.dart';
import 'package:iqsaat/ui/user/home/home_screen.dart';
import 'package:iqsaat/utils/Icons.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/routes.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  bool isCompanyTaped = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
      child: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.2),
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 5,
                child: Container(
                  width: size.width,
                  height: size.height,
                  decoration: BoxDecoration(gradient: AppColors.background),
                  // color: Colors.white,
                  child: Container(
                    width: size.width,
                    height: size.height,
                    child: ListView(
                      children: <Widget>[
                        Container(
                          width: double.infinity,
                          height: size.width * 0.4,
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 32, vertical: 28),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  height: 80,
                                  width: 80,
                                  child: CircleAvatar(
                                    backgroundColor: AppColors.greyBackColor,
                                    child: Icon(
                                      Icons.person_outline,
                                      color: AppColors.greyLocationIconColor,
                                    ),
                                  ),
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 21),
                                    child: Text(
                                      'Farhan Ali',
                                      style: TextStyle(
                                          color: AppColors.blackTextColor,
                                          fontWeight: FontWeight.w600),
                                    ))
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                           Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        HomeScreen()));
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 32, bottom: 30),
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                  'assets/appIcons/offlineVector.png',
                                  height: 16,
                                  width: 22,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  width: 17,
                                ),
                                Container(
                                  child: Text(
                                    'Advertise',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                             Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        ProfileScreen()));
                            
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 32, bottom: 30),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.person_outline,
                                ),
                                SizedBox(
                                  width: 17,
                                ),
                                Container(
                                  child: Text(
                                    'My Profile',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              isCompanyTaped = isCompanyTaped ? false : true;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 32, bottom: 18),
                            child: Row(
                              children: <Widget>[
                                Image.asset('assets/appIcons/company.png'),
                                SizedBox(
                                  width: 17,
                                ),
                                Container(
                                  child: Text(
                                    'My Shop',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                SizedBox(
                                  width: 13,
                                ),
                                Icon(isCompanyTaped
                                    ? Icons.keyboard_arrow_up
                                    : Icons.keyboard_arrow_down),
                              ],
                            ),
                          ),
                        ),
                        isCompanyTaped
                            ? Container(
                                height: size.width * 0.7,
                                width: size.width,
                                padding: EdgeInsets.only(left: size.width / 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    InkWell(
                                      onTap: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder:
                                        //             (BuildContext context) =>
                                        //                 AboutList()));
                                      },
                                      child: Container(
                                          margin: EdgeInsets.only(top: 18),
                                          child: Text("About")),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder:
                                        //             (BuildContext context) =>
                                        //                 SubscriptionPage()));
                                      },
                                      child: Container(
                                          margin: EdgeInsets.only(top: 18),
                                          child: Text("Subscription")),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder:
                                        //             (BuildContext context) =>
                                        //                 AdvertisementList()));
                                      },
                                      child: Container(
                                          margin: EdgeInsets.only(top: 18),
                                          child: Text("Advertisement")),
                                    ),
                                    /* InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        TeamManagement()));
                                      },
                                      child: Container(
                                          margin: EdgeInsets.only(top: 18),
                                          child: Text("Team Management")),
                                    ), */
                                    InkWell(
                                      onTap: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder:
                                        //             (BuildContext context) =>
                                        //                 Reviews()));
                                      },
                                      child: Container(
                                          margin: EdgeInsets.only(top: 18),
                                          child: Text("Reviews")),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        Chat()));
                                      },
                                      child: Container(
                                          margin: EdgeInsets.only(top: 18),
                                          child: Text("Reports")),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        //  Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder:
                                        //             (BuildContext context) =>
                                        //                 ChatTab())); 
                                      },
                                      child: Container(
                                          margin: EdgeInsets.only(top: 18),
                                          child: Text("Chat History")),
                                    ),
                                  ],
                                ))
                            : Container(),
                        InkWell(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (BuildContext context) =>
                            //             LanguagePage()));
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 32, bottom: 30),
                            child: Row(
                              children: <Widget>[
                                Image.asset('assets/appIcons/world.png'),
                                SizedBox(
                                  width: 17,
                                ),
                                Container(
                                  child: Text(
                                    'Language',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (BuildContext context) =>
                            //             HelpRequest()));
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 32, bottom: 30),
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                    'assets/appIcons/icon_help services.png'),
                                SizedBox(
                                  width: 17,
                                ),
                                Container(
                                  child: Text(
                                    'Help',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (BuildContext context) =>
                            //             HomePage()));
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 32, bottom: 30),
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                    'assets/appIcons/icon_Terms of Use.png'),
                                SizedBox(
                                  width: 17,
                                ),
                                Container(
                                  child: Text(
                                    'Terms of use',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: isCompanyTaped ? 20 : size.width * 0.45,
                        ),
                        InkWell(
                          onTap: () {
                            print("Logout");
                            // AppRoutes.makeFirst(context, LoginPage());
                          },
                          child: Container(
                            // color: Colors.green,
                            height: 40,
                            margin: EdgeInsets.only(left: 32, bottom: 50),
                            child: Row(
                              children: <Widget>[
                                Image.asset('assets/appIcons/icon_logout.png'),
                                SizedBox(
                                  width: 17,
                                ),
                                Container(
                                  child: Text(
                                    'Logout',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      margin: EdgeInsets.only(top: size.height / 8),
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          )),
                      child: Center(
                          child: IconButton(
                              icon: Icon(
                                Icons.dashboard,
                                color: Colors.black,
                                size: 30,
                              ),
                              onPressed: () => AppRoutes.pop(context))),
                    ),
                  )
                ],
              )),
            ],
          )),
    );

    /*  Drawer(
      child: Container(
        width: width,
        height: height,
        child: ),
    ); */
  }
}
// //<--------------------------------User Side Drawer-------------------------------------->

class DrawerFull extends PreferredSize {
  DrawerFull(BuildContext context, Size size)
      : super(
            preferredSize: Size.fromHeight(0),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
              child: Container(
                  width: size.width,
                  height: size.height,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 5,
                        child: Container(
                          width: size.width,
                          height: size.height,
                          decoration:
                              BoxDecoration(gradient: AppColors.background),
                          // color: Colors.white,
                          child: Container(
                            width: size.width,
                            height: size.height,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 32, vertical: 28),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        height: 80,
                                        width: 80,
                                        child: CircleAvatar(
                                          backgroundColor:
                                              AppColors.greyBackColor,
                                          child: Image.asset(
                                              'assets/appIcons/profile.png'),
                                        ),
                                      ),
                                      Container(
                                          margin: EdgeInsets.only(left: 21),
                                          child: Text(
                                            'Farhan ALi',
                                            style: TextStyle(
                                                color: AppColors.blackTextColor,
                                                fontWeight: FontWeight.w600),
                                          ))
                                    ],
                                  ),
                                ),
                               
                              CustomField(
                                iconData: AppIcons.world,
                                  text: 'Profile',
                                  onTap: () {                              
                                  },
                                ),
                                CustomField(
                                  iconData: AppIcons.world,
                                  text: 'Settings',
                                  onTap: () {                              
                                  },
                                ),
                                CustomField(
                                  iconData: AppIcons.world,
                                  text: 'Search',
                                  onTap: () {                              
                                  },
                                ),
                                CustomField(
                                  iconData: AppIcons.world,
                                  text: 'My reviews',
                                  //Image.asset('assets/appIcons/icon_reviews.png'),
                                  onTap: () {                              
                                  },
                                ),
                                CustomField(
                                  iconData: AppIcons.world,
                                  text: 'Language',
                                  onTap: () {  
                                    //Image.asset( 'assets/appIcons/world.png'),                            
                                  },
                                ),
                                CustomField(
                                  iconData: AppIcons.world,
                                  text: 'Consumer Term of Use',
                                  onTap: () {    
                                    //Image.asset('assets/appIcons/icon_Terms of Use.png'),                          
                                  },
                                ),
                                CustomField(
                                  iconData: AppIcons.world,
                                  text: 'Help',
                                  onTap: () {    
                                    //Image.asset('assets/appIcons/icon_help services.png'),                          
                                  },
                                ),
                                CustomField(
                                  iconData: AppIcons.world,
                                  text: 'Search',
                                  onTap: () {                              
                                  },
                                ),
                                Spacer(),
                                CustomField(
                                  iconData: AppIcons.world,
                                  text: 'Logout User',
                                  onTap: () {    
                                    //Image.asset('assets/appIcons/icon_logout.png'),                          
                                  },
                                ),
                                
                               
                               
                              
                               
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                          child: Stack(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              margin: EdgeInsets.only(top: size.height / 10),
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(30),
                                    bottomRight: Radius.circular(30),
                                  )),
                              child: Center(
                                  child: IconButton(
                                      icon: Icon(
                                        Icons.clear,
                                        color: Colors.black,
                                        size: 30,
                                      ),
                                      onPressed: () => AppRoutes.pop(context))),
                            ),
                          )
                        ],
                      )),
                    ],
                  )),
            ));
}
