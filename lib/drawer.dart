import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/custom_field.dart';
import 'package:iqsaat/ui/Seller/Product/Ads/Seller_Ads.dart';
import 'package:iqsaat/ui/Seller/Product/Ads/categories.dart';
import 'package:iqsaat/ui/Seller/Reviews/reviewTablist.dart';
import 'package:iqsaat/ui/Seller/Reviews/reviews.dart';
import 'package:iqsaat/ui/Seller/create_Ads/CreateProducts/addNewProducts.dart';
import 'package:iqsaat/ui/Seller/create_Ads/CreateProducts/productsAds.dart';
import 'package:iqsaat/ui/Seller/home/dashboard/sellerHome.dart';
import 'package:iqsaat/ui/auth/loginPage.dart';
import 'package:iqsaat/ui/auth/terms_and_condition.dart';
import 'package:iqsaat/ui/user/help/languagePage.dart';
import 'package:iqsaat/ui/user/help/helpRequestPage.dart';
import 'package:iqsaat/ui/user/profile/user_profile.dart';
import 'package:iqsaat/utils/Icons.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/routes.dart';
import 'package:iqsaat/ui/History/user_history.dart';
import 'package:iqsaat/ui/Seller/Product/Ads/Seller_Ads.dart';
import 'package:iqsaat/ui/Seller/Customers/customer_tabs.dart';


import 'ui/Seller/profile/profile_tab.dart';
import 'ui/shared/chat/chat_dash.dart';

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
                      
                        CustomField(
                          iconData: AppIcons.termCondation,
                          text: 'Home',
                           onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        SellerHomePage()));
                          },
                        
                  
                          
                        ),
                        CustomField(
                          iconData: AppIcons.termCondation,
                          text: 'Profile',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        ProfileTab()));
                          },
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
                                        fontSize: 15,
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
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        AddAdvertisementPage()));
                                      },
                                      child: Container(
                                          margin: EdgeInsets.only(top: 18),
                                          child: Text("Create Ad")),
                                    ),
                                       InkWell(
                                      onTap: () {
                                    Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        SellerAds()));
                                      },
                                      child: Container(
                                          margin: EdgeInsets.only(top: 18),
                                          child: Text("Products")),
                                    ),
                                  
                                    InkWell(
                                      onTap: () {
                                         Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                      customersTab() ));
                                        
                                      },
                                      child: Container(
                                          margin: EdgeInsets.only(top: 18),
                                          child: Text("Customers")),
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
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                     ExpansionTileSample()  )
                                                        
                                                        );
                                      },
                                      child: Container(
                                          margin: EdgeInsets.only(top: 18),
                                          child: Text("Reviews")),
                                    ),
                                    InkWell(
                                      // onTap: () {
                                      //   Navigator.push(
                                      //       context,
                                      //       MaterialPageRoute(
                                      //           builder:
                                      //               (BuildContext context) =>
                                      //                   ));
                                      // },
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
                                                        user_history()));
                                      },
                                      child: Container(
                                          margin: EdgeInsets.only(top: 18),
                                          child: Text("History")),
                                    ),
                                  ],
                                ))
                            : Container(),
                        CustomField(
                          iconData: AppIcons.help,
                          text: 'Help',
                          onTap: () {
                            //Image.asset('assets/appIcons/icon_help services.png'),
                          },
                        ),
                             CustomField(
                                  iconData: AppIcons.world,
                                  text: 'Chat',
                                  onTap: () {
                                    Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        ChatTab()));
                                  
                                  },
                                ),
                        CustomField(
                          iconData: AppIcons.termCondation,
                          text: 'Terms of use',
                          // onTap: () {
                          //  Navigator.push(
                          //               context,
                          //               MaterialPageRoute(
                          //                   builder: (BuildContext context) =>
                          //                       CartScreen()));
                          // },
                        ),
                        SizedBox(
                          height: isCompanyTaped ? 30 : size.width * 0.45,
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            print("Logout");
                             AppRoutes.makeFirst(context, LoginPage());
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
                                              'assets/appIcons/iqsaat.jpeg',scale: 0.11,),
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
                                     Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        ProfilePage()));
                                    
                                  },
                                ),
                               
                                CustomField(
                                  iconData: AppIcons.world,
                                  text: 'Language',
                                  onTap: () {
                                     Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                LanguagePage()));
                                  },
                                ),
                                CustomField(
                                  iconData: AppIcons.world,
                                  text: 'Term of Use',
                                  onTap: () {
                                     Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                TermsAndConditionScreen()));
                                  },
                                ),
                                CustomField(
                                  iconData: AppIcons.world,
                                  text: 'Help',
                                  onTap: () {
                                   Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                HelpRequest()));
                                  },
                                ),
                                 CustomField(
                                  iconData: AppIcons.world,
                                  text: 'Settings',
                                  onTap: () {},
                                ),
                                CustomField(
                                  iconData: AppIcons.world,
                                  text: 'Search',
                                  onTap: () {},
                                ),
                                CustomField(
                                  iconData: AppIcons.world,
                                  text: 'My reviews',
                                  //Image.asset('assets/appIcons/icon_reviews.png'),
                                  onTap: () {},
                                ),
                             

                              
                            
                                Spacer(),
                                CustomField(
                                  iconData: AppIcons.world,
                                  text: 'Logout User',
                                  onTap: () {
                                      AppRoutes.makeFirst(context, LoginPage());
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
