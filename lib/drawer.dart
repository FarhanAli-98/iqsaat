import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/custom_field.dart';
import 'package:iqsaat/ui/Seller/Orders/orders_tab.dart';
import 'package:iqsaat/ui/Seller/Product/categories/seller_categories.dart';
import 'package:iqsaat/ui/Seller/create_Ads/CreateProducts/productsAds.dart';
import 'package:iqsaat/ui/Seller/home/dashboard/sellerHome.dart';
import 'package:iqsaat/ui/auth/loginPage.dart';
import 'package:iqsaat/ui/auth/terms_and_condition.dart';
import 'package:iqsaat/ui/buyer/map/mapview.dart';
import 'package:iqsaat/ui/buyer/profile/userProfile.dart';
import 'package:iqsaat/ui/buyer/system/contactUs.dart';
import 'package:iqsaat/ui/buyer/system/detailFAQS.dart';
import 'package:iqsaat/ui/buyer/system/search.dart';
import 'package:iqsaat/ui/chat_tab/chat_dash.dart';
import 'package:iqsaat/utils/Icons.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/routes.dart';
import 'package:iqsaat/ui/Seller/Customers/customer_tabs.dart';
import 'ui/Seller/profile/profile_tab.dart';
import 'ui/buyer/system/my_orders.dart';

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
                            margin: EdgeInsets.only(left: 32, bottom: 28),
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
                                height: size.width * 0.35,
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
                                                builder: (BuildContext
                                                        context) =>
                                                    AddAdvertisementPage()));
                                      },
                                      child: Container(
                                          margin: EdgeInsets.only(top: 0),
                                          child: Text("Create Ad")),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        sellerCategories()));
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
                                                        customersTab()));
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
                                                        ordersTab()));
                                      },
                                      child: Container(
                                          margin: EdgeInsets.only(top: 18),
                                          child: Text("Orders")),
                                    ),
                                    // InkWell(
                                    //   // onTap: () {
                                    //   //   Navigator.push(
                                    //   //       context,
                                    //   //       MaterialPageRoute(
                                    //   //           builder:
                                    //   //               (BuildContext context) =>
                                    //   //                   ));
                                    //   // },
                                    //   child: Container(
                                    //       margin: EdgeInsets.only(top: 18),
                                    //       child: Text("Reviews")),
                                    // ),
                                    // InkWell(
                                    //   onTap: () {
                                    //     Navigator.push(
                                    //         context,
                                    //         MaterialPageRoute(
                                    //             builder:
                                    //                 (BuildContext context) =>
                                    //                     user_history()));
                                    //   },
                                    //   child: Container(
                                    //       margin: EdgeInsets.only(top: 18),
                                    //       child: Text("History")),
                                    // ),
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
                          iconData: "assets/appIcons/chatboxes.png",
                          text: 'Chat',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
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
                          height: isCompanyTaped ? 10 : size.width * 0.45,
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            print("Logout");
                            AppRoutes.makeFirst(context, LoginPage());
                          },
                          child: Container(
                            // color: Colors.green,
                            height: 20,
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
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(80),
                                        ),
                                        child: CircleAvatar(
                                          backgroundColor:
                                              AppColors.greyBackColor,
                                          child: Image.asset(
                                            'assets/appIcons/iqsaat.jpeg',
                                            scale: 0.11,
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          AppRoutes.push(
                                              context, ProfilePage());
                                        },
                                        child: Container(
                                            margin: EdgeInsets.only(left: 21),
                                            child: Text(
                                              'Farhan ALi',
                                              style: TextStyle(
                                                  color:
                                                      AppColors.blackTextColor,
                                                  fontWeight: FontWeight.w600),
                                            )),
                                      )
                                    ],
                                  ),
                                ),
                                CustomField(
                                  iconData: "assets/appIcons/squares.png",
                                  text: 'Search Nearby Shops',
                                  onTap: () {
                                    AppRoutes.push(context, Mapview());
                                  },
                                ),
                                CustomField(
                                  iconData: "assets/appIcons/briefcase.png",
                                  text: 'My Order',
                                  onTap: () {
                                    AppRoutes.push(context, MyOrders());
                                  },
                                ),
                                CustomField(
                                  iconData: AppIcons.setting,
                                  text: 'FAQS',
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                FAQS1()));
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
                                                ContactUs()));
                                  },
                                ),
                                CustomField(
                                  iconData: AppIcons.termCondation,
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
                                  iconData: AppIcons.help,
                                  text: 'Contact us',
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                ContactUs()));
                                  },
                                ),
                                CustomField(
                                  iconData: AppIcons.search,
                                  text: 'Search',
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                SearchScreen()));
                                  },
                                ),
                                CustomField(
                                  iconData: "assets/appIcons/chatboxes.png",
                                  text: 'Chat With us',
                                  //Image.asset('assets/appIcons/icon_reviews.png'),
                                  onTap: () {
                                    AppRoutes.push(context, ChatTab());
                                  },
                                ),
                                Spacer(),
                                CustomField(
                                  iconData: AppIcons.logout,
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
