
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/providers_listView_container.dart';
import 'package:iqsaat/models/interest_item_model.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:iqsaat/ui/Seller/home/pie/indicator.dart';
import 'package:iqsaat/ui/Seller/home/pie/sections.dart';
import 'package:flutter/material.dart';
import 'package:bezier_chart/bezier_chart.dart';
import 'package:intl/intl.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  Widget _chart(BuildContext context) {
    final fromDate = DateTime(2021, 05, 13);
    final toDate = DateTime.now();

    final date1 = DateTime.now().subtract(Duration(days: 2));
    final date2 = DateTime.now().subtract(Duration(days: 3));
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0)), //this right here
      child: Container(
        height: MediaQuery.of(context).size.height / 2,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Container(
            color: Colors.red[200],
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            child: BezierChart(
              fromDate: fromDate,
              bezierChartScale: BezierChartScale.WEEKLY,
              toDate: toDate,
              selectedDate: toDate,
              series: [
                BezierLine(
                  label: "Duty",
                  onMissingValue: (dateTime) {
                    if (dateTime.day.isEven) {
                      return 10.0;
                    }
                    return 5.0;
                  },
                  data: [
                    DataPoint<DateTime>(value: 10, xAxis: date1),
                    DataPoint<DateTime>(value: 50, xAxis: date2),
                  ],
                ),
              ],
              config: BezierChartConfig(
                verticalIndicatorStrokeWidth: 3.0,
                verticalIndicatorColor: Colors.black26,
                showVerticalIndicator: true,
                verticalIndicatorFixedPosition: false,
                backgroundColor: Colors.blueGrey,
                footerHeight: 30.0,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _card() {
    return Container(
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.lightBlue[100],
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Shop Report",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: AppColors.primarycolor,
            ),
          ),
          SizedBox(
            height: 11.0,
          ),
          Row(crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
            Text(
              "Active Products:",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 190,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "34:",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ]),
          SizedBox(
            height: 11.0,
          ),
          Row(crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
            Text(
              "Products Sold:",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 203,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "34:",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            )
          ]),
          SizedBox(
            height: 11.0,
          ),
          Row(crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
            Text(
              "Total Products:",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 207,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "34:",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            )
          ]),
          SizedBox(
            height: 11.0,
          ),
          SizedBox(
            height: 5.0,
          ),
        ],
      ),
    );
  }

  Widget _salesreport() {
    return Container(
        margin: EdgeInsets.only(left: 15, right: 15),
        padding: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: Colors.lightBlue[100],
            borderRadius: BorderRadius.only(
              topLeft: Radius.elliptical(15, 15),
              topRight: Radius.elliptical(15, 15),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Selling Report",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: AppColors.primarycolor,
              ),
            ),
            SizedBox(
              height: 11.0,
            ),
            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Products Sold:",
                    style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 190,
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "34:",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ))
                ]),
            SizedBox(
              height: 11.0,
            ),
            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Active Customers:",
                    style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 161,
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "34:",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ))
                ]),
            SizedBox(
              height: 11.0,
            ),
            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "New Orders:",
                    style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 207,
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "34:",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ))
                ]),
            SizedBox(
              height: 11.0,
            ),
            // Row(
            //   children: <Widget>[
            //     Icon(Icons.online_prediction, color: Colors.grey[300]),
            //     SizedBox(width: 5.0),
            //     Text(
            //       "Active Customers:",
            //       style: TextStyle(color: Colors.grey[300],fontSize: 16),
            //     )
            //   ],
            // ),
            SizedBox(
              height: 11.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Flexible(
                  child: RaisedButton(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 11.0),
                    color: Colors.blueGrey,
                    onPressed: () {},
                    child: Text(
                      'Customers',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(9.0),
                        side: BorderSide(color: Colors.white)),
                  ),
                ),
                Flexible(
                  child: RaisedButton(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 11.0),
                    color: Colors.blueGrey,
                    onPressed: () {},
                    child: Text(
                      'Products',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(9.0),
                        side: BorderSide(color: Colors.white)),
                  ),
                ),
                Flexible(
                  child: RaisedButton(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 11.0),
                    color: Colors.blueGrey,
                    onPressed: () {},
                    child: Text(
                      'Orders',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(9.0),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ));
  }

  Widget _analysisline() {
    return Container(
      margin: EdgeInsets.only(left: 25, right: 25),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.teal[100],
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15)),
      ),
      child: Column(
        children: [
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  "Analysis",
                  style: Theme.of(context)
                      .textTheme
                      .title
                      .apply(color: AppColors.primarycolor, fontWeightDelta: 2),
                ),
              ),
              Icon(Icons.timelapse, color: Colors.black.withOpacity(.71)),
              Text(
                "This month",
                style: TextStyle(color: Colors.black.withOpacity(.71)),
              ),
            ],
          ),

          Divider(
            height: 30,
          ),
          //      ListView.builder(

          // itemBuilder: (BuildContext context, int index) {
          Row(
            children: <Widget>[
              Flexible(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Sales Analysis",
                      style: Theme.of(context)
                          .textTheme
                          .title
                          .apply(color: Colors.black, fontWeightDelta: 2),
                    ),
                    Text(
                      "Created 20.10.2020",
                      style: TextStyle(color: Colors.black.withOpacity(.71)),
                    ),
                    Text(
                      "Originator:shop ",
                      style: TextStyle(color: Colors.black.withOpacity(.71)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 110,
              ),
              Flexible(
                child: Column(
                  children: <Widget>[
                    Text(
                      "",
                      style: Theme.of(context)
                          .textTheme
                          .title
                          .apply(color: Color(0xff17dcb0), fontWeightDelta: 2),
                      textAlign: TextAlign.center,
                    ),
                    RaisedButton(
                      color: Colors.cyan[200],
                      child:
                          Icon(Icons.bar_chart, color: AppColors.primarycolor),
                      onPressed: () {
                        //Navigator.pushNamed(context, 'transaction');
                        showDialog(
                            context: context,
                            builder: (BuildContext context) => _chart(context));
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget upOverview() {
    return Container(
      height: 200,
      width: 100,
      padding: EdgeInsets.all(4),
      // margin: EdgeInsets.only(le:70),
      decoration: BoxDecoration(
          color: Colors.cyan[100],
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(12))),
      child: Column(children: [
      
         Text("Balance",style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),),
        
        
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
              fontSize: 10
            )),
        
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
      Text("Road to lv 2:",
          style: TextStyle(
              color: AppColors.primarycolor, fontWeight: FontWeight.bold)),
      SizedBox(
        height: 10,
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
      Text("Monthly sales Target:",
          style: TextStyle(
              color: AppColors.primarycolor, fontWeight: FontWeight.bold)),
      SizedBox(
        height: 10,
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
      Text("Response rate:",
          style: TextStyle(
              color: AppColors.primarycolor, fontWeight: FontWeight.bold)),
      SizedBox(
        height: 10,
      ),
      CircularPercentIndicator(
        radius: 58.0,
        lineWidth: 10.0,
        animation: true,
        percent: 45.0 / 100,
        center: Text(
          "45.0" + "%",
          style: TextStyle(
              fontSize: 12.0, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        backgroundColor: Colors.grey[300],
        circularStrokeCap: CircularStrokeCap.round,
        progressColor: Colors.redAccent,
      )
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 5, right: 5),
      
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.cyan[100],
                  border: Border.all(
                    color: Colors.cyan[100],
                    width: 9,
                  ),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.elliptical(15, 15),
                      bottomRight: Radius.elliptical(15, 15)),
                ),
                child: Column(children: <Widget>[
                  Text(
                    "Welcome back,",
                    style: Theme.of(context)
                        .textTheme
                        .display1
                        .apply(color: AppColors.primarycolor),
                  ),
                  Row(
                    children: [
                      Text(
                        "Mr. Usama",
                        style: Theme.of(context).textTheme.display1.apply(
                            color: AppColors.primarycolor, fontWeightDelta: 2),
                      ),
                      SizedBox(
                        width: 80,
                      ),
                      Row(
                        children: <Widget>[
                          // Text(
                          //   "Overall review:",
                          //   style:TextStyle(fontWeight: FontWeight.bold)
                          // ),

                          Icon(Icons.star, color: Colors.yellow, size: 19),
                          Icon(Icons.star, color: Colors.yellow, size: 19),
                          Icon(Icons.star, color: Colors.yellow, size: 19),
                          Icon(Icons.star, color: Colors.yellow, size: 19),
                          Icon(Icons.star_border, size: 19),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  //  Align(alignment: Alignment.bottomRight,
                  //child:upOverview())
                ]),
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 200,
                    width: 250,
                    margin: EdgeInsets.only(left:5),
                    padding: EdgeInsets.all(10),
                    // margin: EdgeInsets.only(le:70),
                    decoration: BoxDecoration(
                        color: Colors.cyan[100],
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(12))),
                    child: progress(),
                  ),
                  SizedBox(width: 5),
                  Container(
                    height: 100,
                    width: 120,
                    padding: EdgeInsets.all(0),
                    //margin: EdgeInsets.only(right:110),
                    decoration: BoxDecoration(
                        color: Colors.cyan[100],
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(12))),
                    child: upOverview(),
//

//                   )
                  )
                ],
              ),

              
              SizedBox(
                height: 15.0,
              ),
            
              _salesreport(),

              _analysisline(),

            
              SizedBox(
                height: 15.0,
              ),
              _card(),
              _analysisline()
            ]),
      ),
      
    );
  }
}
