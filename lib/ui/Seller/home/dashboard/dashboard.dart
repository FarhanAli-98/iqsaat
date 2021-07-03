// @dart=2.9
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/providers_listView_container.dart';
import 'package:iqsaat/models/interest_item_model.dart';
import 'package:iqsaat/Widget/reportview.dart';
import 'package:iqsaat/utils/Icons.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/styles.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:bezier_chart/bezier_chart.dart';
import 'package:intl/intl.dart';
import './salesreport.dart';
import './shopreport.dart';
import './Statistics/analysisshop.dart';
import './Statistics/analysisSale.dart';
import 'dashcard.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget upOverview() {
    // bool isSwitched = false;
    return Container(
      height: MediaQuery.of(context).size.height,
      width: 100,
      padding: EdgeInsets.all(4),
      // margin: EdgeInsets.only(le:70),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(12)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
      ),

      child: Column(children: [
        Text(
          "Balance",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Text(
          "45,500\p\k\r",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15.0,
            color: AppColors.primarycolor,
          ),
        ),
        SizedBox(height: 10.0),
        Text("Pending Installments",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 10)),
        Text(
          "4",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: AppColors.primarycolor,
          ),
        ),
      ]),
    );
  }

  Widget progress() {
    final double lvPercent = 56.0;
    final double salesTargetPercent = 32.0;
    final double responseRatePercent = 45.0;

    return Column(children: [
      SizedBox(
        height: 10,
      ),
      Text("Road to lv 2:",
          style:
              TextStyle(color: AppColors.black, fontWeight: FontWeight.bold)),
      SizedBox(
        height: 5,
      ),
      LinearPercentIndicator(
        //leaner progress bar
        animation: true,
        animationDuration: 1000,
        lineHeight: 20.0,
        percent: lvPercent / 100,
        center: Text(
          lvPercent.toString() + "%",
          style: TextStyle(
              fontSize: 12.0, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        linearStrokeCap: LinearStrokeCap.roundAll,
        progressColor: AppColors.primarycolor,
        backgroundColor: Colors.grey[300],
      ),
      SizedBox(
        height: 5,
      ),
      Text("Monthly sales Target:",
          style:
              TextStyle(color: AppColors.black, fontWeight: FontWeight.bold)),
      SizedBox(
        height: 5,
      ),
      LinearPercentIndicator(
        //leaner progress bar
        animation: true,
        animationDuration: 1000,
        lineHeight: 20.0,
        percent: salesTargetPercent / 50,
        center: Text(
          salesTargetPercent.toString() + "%",
          style: TextStyle(
              fontSize: 12.0, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        linearStrokeCap: LinearStrokeCap.roundAll,
        progressColor: AppColors.primarycolor,
        backgroundColor: Colors.grey[300],
      ),
      SizedBox(
        height: 5,
      ),
      Text("Collection:",
          style:
              TextStyle(color: AppColors.black, fontWeight: FontWeight.bold)),
      SizedBox(
        height: 5,
      ),
      LinearPercentIndicator(
        //leaner progress bar
        animation: true,
        animationDuration: 1000,
        lineHeight: 20.0,
        percent: 42 / 50,
        center: Text(
          salesTargetPercent.toString() + "%",
          style: TextStyle(
              fontSize: 12.0, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        linearStrokeCap: LinearStrokeCap.roundAll,
        progressColor: AppColors.primarycolor,
        backgroundColor: Colors.grey[300],
      ),
    ]);
  }

  static const _kTabPages = <Widget>[
    Center(child: Icon(Icons.alarm, size: 64.0, color: Colors.cyan)),
  ];
  static const _kTabs = <Tab>[
    Tab(
      text: 'Sales',
    ),
    Tab(
      text: 'Shop',
    ),
    // Tab(icon: Icon(Icons.cloud), text: 'Tab1'),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: _kTabPages.length,
      vsync: this,
    );
  }

  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          maindash(),
//           Container(
//             height: MediaQuery.of(context).size.height / 2.6,
//             // decoration: BoxDecoration(border: Border()),
//             child: SingleChildScrollView(
//               padding: EdgeInsets.only(left: 5, right: 5),
//               child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         //  SizedBox(width: 5),
//                         Row(
//                           children: [
//                             Container(
//                               height: MediaQuery.of(context).size.height / 8,
//                               width: MediaQuery.of(context).size.width / 2,
//                               //margin: EdgeInsets.only(right:110),
//                               margin: EdgeInsets.all(15),
//                               decoration: BoxDecoration(
//                                   color: Colors.cyan[100],
//                                   borderRadius: BorderRadius.only(
//                                       bottomLeft: Radius.circular(12))),
//                               child: upOverview(),
//                             ),
//                             Container(
//                                 height: 104,
//                                 width: 120,
//                                 margin: EdgeInsets.fromLTRB(18, 5, 5, 5),
//                                 padding: EdgeInsets.all(4),
//                                 //margin: EdgeInsets.only(right:110),
//                                 decoration: BoxStyles.deco,
//                                 child: Column(
//                                   children: [
//                                     Text("Response Rate:",
//                                         style: TextStyle(
//                                             color: AppColors.black,
//                                             fontWeight: FontWeight.bold)),
//                                     SizedBox(
//                                       height: 5,
//                                     ),
//                                     FittedBox(
//                                       child: CircularPercentIndicator(
//                                         radius: 65.0,
//                                         lineWidth: 10.0,
//                                         animation: true,
//                                         percent: 45.0 / 100,
//                                         center: Text(
//                                           "45.0" + "%",
//                                           style: TextStyle(
//                                               fontSize: 12.0,
//                                               fontWeight: FontWeight.w600,
//                                               color: Colors.black),
//                                         ),
//                                         backgroundColor: Colors.grey[300],
//                                         circularStrokeCap:
//                                             CircularStrokeCap.round,
//                                         progressColor: AppColors.primarycolor,
//                                       ),
//                                     ),
//                                   ],
//                                 )
// //

// //                   )
//                                 )
//                           ],
//                         ),
//                         Container(
//                           //height: MediaQuery.of(context).size.height/4,
//                           width: MediaQuery.of(context).size.width,
//                           margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
//                           padding: EdgeInsets.fromLTRB(10, 2, 10, 5),
//                           // margin: EdgeInsets.only(le:70),
//                           decoration: BoxStyles.deco,

//                           child: progress(),
//                         ),
//                       ],
//                     ),
//                   ]),
//             ),
//           ),
          Container(
            color: AppColors.backgroundColor,
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            child: DefaultTabController(
              length: 2,
              child: Scaffold(
                backgroundColor: AppColors.backgroundColor,
                appBar: PreferredSize(
                  //automaticallyImplyLeading: false,
                  preferredSize: const Size.fromHeight(40.0),
                  child: TabBar(
                    labelColor: AppColors.primarycolor,
                    labelStyle:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    tabs: [
                      Tab(text: "Sales"),
                      Tab(text: "Shop"),
                    ],
                  ),
                ),
                body: TabBarView(
                  children: [
                    Column(
                      children: [
                        Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          reportCard(
                            title:"Installments",
                            subtitle:"Active",
                            imgurl: AppIcons.inst,
                            stat: 34,
                          ),
                          reportCard(
                            title:"Orders",
                            subtitle:"New",
                            imgurl: AppIcons.order2,
                            stat: 15,
                          ),
                          reportCard(
                            title:"Customers",
                            subtitle:"Active",
                            imgurl: AppIcons.cust,
                            stat: 20,
                          ),
                           
                          

                        ],
                        ),

                        salesanalysis(),
                      ],
                    ),
                    Column(
                      children: [
                         Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          reportCard(
                            title:"Inventory",
                            subtitle:"Products",
                            imgurl: AppIcons.inventory,
                            stat: 25,
                          ),
                          reportCard(
                            title:"Sold ",
                            subtitle:"Completed",
                            imgurl: AppIcons.sold,
                            stat: 12,
                          ),
                          reportCard(
                            title:"Categories",
                            subtitle:"All",
                            imgurl: AppIcons.categ,
                            stat: 6,
                          ),
                           
                          

                        ],
                        ),
                        shopanalysis(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            //               child: Scaffold(
            //                 backgroundColor: AppColors.backgroundColor,
            //                 body:TabBarView(
            //   controller: _tabController,
            //   children: _analysisline(),

            // ),
            // bottomNavigationBar: Material(
            //   color: Colors.cyan[200],
            //   child: TabBar(
            //     tabs: _kTabs,
            //     controller: _tabController,
            //   ),
            // ),
            //             ),
          )
        ],
      ),
    );
  }
}
