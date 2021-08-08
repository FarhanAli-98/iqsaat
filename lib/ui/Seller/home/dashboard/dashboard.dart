import 'package:flutter/material.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/styles.dart';
import 'package:percent_indicator/percent_indicator.dart';
import './salesreport.dart';
import './shopreport.dart';
import './Statistics/analysisshop.dart';
import './Statistics/analysisSale.dart';


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
      padding: EdgeInsets.all(10),
      // margin: EdgeInsets.only(le:70),
      decoration: BoxDecoration(
          color: AppColors.white,
          
          borderRadius: BorderRadius.all( Radius.circular(12)),
          boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
          

          ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
          style: TextStyle(
              color: AppColors.primarycolor, fontWeight: FontWeight.bold)),
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
              fontSize: 12.0, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        linearStrokeCap: LinearStrokeCap.roundAll,
        progressColor: Colors.blue[400],
        backgroundColor: Colors.grey[300],
      ),
      SizedBox(
        height: 5,
      ),
      Text("Monthly sales Target:",
          style: TextStyle(
              color: AppColors.primarycolor, fontWeight: FontWeight.bold)),
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
              fontSize: 12.0, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        linearStrokeCap: LinearStrokeCap.roundAll,
        progressColor: Colors.blue[400],
        backgroundColor: Colors.grey[300],
      ),
       SizedBox(
        height: 5,
      ),
      Text("Collection:",
          style: TextStyle(
              color: AppColors.primarycolor, fontWeight: FontWeight.bold)),
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
              fontSize: 12.0, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        linearStrokeCap: LinearStrokeCap.roundAll,
        progressColor: Colors.blue[400],
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: 
      SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2.6,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                         child: Text(
                                "Afzal electronics",
                                style: Theme.of(context).textTheme.display1.apply(
                                    color: AppColors.primarycolor,
                                    fontWeightDelta: 2),
                              ),
                       ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 200,
                          width: 250,
                          margin: EdgeInsets.only(left: 5),
                          padding: EdgeInsets.all(10),
                          // margin: EdgeInsets.only(le:70),
                    decoration: BoxStyles.deco,
                                          
                          child: progress(),
                        ),
                        SizedBox(width: 5),
                        Column(
                          children: [
                            Container(
                              height: 100,
                              width: 120,
                              padding: EdgeInsets.all(0),
                              //margin: EdgeInsets.only(right:110),
                              decoration: BoxDecoration(
                                 // color: Colors.cyan[100],
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(12))),
                              child: upOverview(),
                            ),
                            Container(
                                height: 100,
                                width: 100,
                                margin: EdgeInsets.all(5),
                                padding: EdgeInsets.all(4),
                                //margin: EdgeInsets.only(right:110),
                                decoration: BoxStyles.deco,
                                child: Column(
                                  children: [
                                    Text("Response Rate:",
                                        style: TextStyle(
                                            color: AppColors.primarycolor,
                                            fontWeight: FontWeight.bold)),
                                    CircularPercentIndicator(
                                      radius: 58.0,
                                      lineWidth: 10.0,
                                      animation: true,
                                      percent: 45.0 / 100,
                                      center: Text(
                                        "45.0" + "%",
                                        style: TextStyle(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                      ),
                                      backgroundColor: Colors.grey[300],
                                      circularStrokeCap:
                                          CircularStrokeCap.round,
                                      progressColor: Colors.redAccent,
                                    ),
                                  ],
                                )
//

//                   )
                                )
                          ],
                        )
                      ],
                    ),
                  ]),
            ),
            Container(
              color: AppColors.backgroundColor,
              height: MediaQuery.of(context).size.height /2,
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
                          salesReport(),
                          salesanalysis(),
                        ],
                      ),
                      Column(
                        children: [
                           shopreport(),
                            Shopanalysis(),
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
      ),
   
   
   
    );
  }
}
