
// class _DashboardState extends State<Dashboard> {
//   int touchedIndex;
//    final List<FlSpot> dummyData1 = List.generate(15, (index) {
//     return FlSpot(index.toDouble(), index * Random().nextDouble());
//   });

//   final List<FlSpot> dummyData2 = List.generate(15, (index) {
//     return FlSpot(index.toDouble(), index * Random().nextDouble());
//   });

//   final List<FlSpot> dummyData3 = List.generate(5, (index) {
//     return FlSpot(index.toDouble(), index * Random().nextDouble());
//   });
//   displayAccoutList() {
//     return Container(
//       margin: EdgeInsets.all(5.0),
//       child: Column(
//         children: <Widget>[
//           accountItems("Products in shop", r"27", "28-04-16", "Available",
//               oddColour: Colors.blueAccent),
//           accountItems(
//               "Instalmments ongoing", r"3", "26-04-16", "credit"),
//           accountItems("Installments Completed", r"20", "25-04-21", "Payment",
//               oddColour: Colors.greenAccent),
//               accountItems(
//               "Delayed Installments", r"4", "Today", "Credit",
//               oddColour: Colors.redAccent),
//           accountItems(
//               "Orders recieved", r"4", "April", "Payment"),
          
//         ],
//       ),
//     );
//   }
//   Container accountItems(
//           String item, String charge, String dateString, String type,
//           {Color oddColour = Colors.lightBlue}) =>
//       Container(
//         decoration: BoxDecoration(color: oddColour),
//         padding:
//             EdgeInsets.only(top: 20.0, bottom: 20.0, left: 0, right:0),
//         child: Column(
//           children: <Widget>[
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 Text(item, style: TextStyle(fontSize: 16.0,fontWeight:FontWeight.bold)),
//                 Text(charge, style: TextStyle(fontSize:16.0,fontWeight: FontWeight.bold))
//               ],
//             ),
//             SizedBox(
//               height: 10.0,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 Text(dateString,
//                     style: TextStyle(color: Colors.grey, fontSize: 14.0)),
//                 Text(type, style: TextStyle(color: Colors.grey, fontSize: 14.0))
//               ],
//             ),
//           ],
//         ),
//       );
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Container(
//           padding: EdgeInsets.all(10),
//           height:900, //MediaQuery.of(context).size.height,
//           width: MediaQuery.of(context).size.width,
//           decoration: BoxDecoration(gradient: AppColors.background),

//           child: Column(children: [
//             Align(
//                 alignment: Alignment.topRight,
//                 child: Center(
//                     child: Text('Welcome back!',
//                         style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold)))),
//              Container(
//                   padding: EdgeInsets.all(5),
//                   margin: EdgeInsets.only(left: 10, top: 5),
//                   height: 300,
//                   width: 400,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(25),
//                       color: AppColors.greyColor.withOpacity(0.15)),
//                       child:SingleChildScrollView(child:  displayAccoutList() )
//                   // child: Row(
//                   //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   //   children: [
//                   //     Column(
//                   //       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   //       children: [
//                   //         CircularPercentIndicator(
//                   //           radius: 40.0,
//                   //           lineWidth: 5.0,
//                   //           percent: 0.67,
//                   //           progressColor: AppColors.redColor,
//                   //           backgroundColor: AppColors.white,
//                   //           footer: Padding(
//                   //             padding: const EdgeInsets.all(8.0),
//                   //             child: Text('67%',
//                   //                 style: TextStyle(
//                   //                     color: Colors.black, fontSize: 15)),
//                   //           ),
//                   //         ),
//                   //         Text(
//                   //           'Selling Rate',
//                   //           style: TextStyle(
//                   //               color: AppColors.greyColor, fontSize: 12),
//                   //         )
//                   //       ],
//                   //     ),
//                   //     Column(
//                   //       children: [
//                   //         CircularPercentIndicator(
//                   //           radius: 40.0,
//                   //           lineWidth: 5.0,
//                   //           percent: 0.53,
//                   //           backgroundColor: AppColors.white,
//                   //           progressColor: AppColors.primarycolor,
//                   //           footer: Padding(
//                   //             padding: const EdgeInsets.all(8.0),
//                   //             child: Text(
//                   //               '53%',
//                   //               style:
//                   //                   TextStyle(color: Colors.black, fontSize: 15),
//                   //             ),
//                   //           ),
//                   //         ),
//                   //         Text(
//                   //           'Conversion Rate',
//                   //           style: TextStyle(
//                   //               color: AppColors.greyColor, fontSize: 12),
//                   //         )
//                   //       ],
//                   //     ),
//                   //     Column(
//                   //       children: [
//                   //         CircularPercentIndicator(
//                   //           radius: 40.0,
//                   //           lineWidth: 5.0,
//                   //           percent: 0.80,
//                   //           backgroundColor: AppColors.white,
//                   //           progressColor: AppColors.greenColor,
//                   //           footer: Padding(
//                   //             padding: const EdgeInsets.all(8.0),
//                   //             child: Text(
//                   //               '80%',
//                   //               style:
//                   //                   TextStyle(color: Colors.black, fontSize: 15),
//                   //             ),
//                   //           ),
//                   //         ),
//                   //         Text(
//                   //           'Overall Customer\n          Rating',
//                   //           style: TextStyle(
//                   //               color: AppColors.greyColor, fontSize: 12),
//                   //         )
//                   //       ],
//                   //     )
//                   //   ],
//                   // ) ,
//                   //
//               ),
            
//             SizedBox(
//               height: 10,
//             ),
//             Align(
//                 alignment: Alignment.centerLeft,
//                 child: Text(
//                   'Recent Orders',
//                   style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),
//                 )),
           
//             SizedBox(
//               height: 10,
//             ),
//                Container(
//               height: 150,
//               child: ListView.builder(
//                 itemBuilder: (BuildContext context, int inedx) {
//                   return ProvidersListViewContainer();
//                 },
//                 itemCount: 5,
//                 scrollDirection: Axis.horizontal,
//               ),
//             ),
//             Align(
//                 alignment: Alignment.centerLeft,
//                 child: Text(
//                   'Orders by categories',
//                   style: TextStyle(color: Colors.black, fontSize: 15,fontWeight: FontWeight.bold),
//                 )),
//             Expanded(
              
              
//                     child:SingleChildScrollView( 
                
//                 child:  Column(
//                children:<Widget>[
//                  SizedBox(height:150,),
//                 PieChart(
                  
//                   PieChartData(
//                     pieTouchData: PieTouchData(
//                       touchCallback: (pieTouchResponse) {
//                         setState(() {
//                           if (pieTouchResponse.touchInput is FlLongPressEnd ||
//                               pieTouchResponse.touchInput is FlPanEnd) {
//                             touchedIndex = -1;
//                           } else {
//                             touchedIndex = pieTouchResponse.touchedSectionIndex;
//                           }
//                         });
//                       },
//                     ),
//                     borderData: FlBorderData(show: false),
//                     sectionsSpace: 0,
//                     centerSpaceRadius: 40,
//                     sections: getSections(touchedIndex),
//                   ),
//                 ),
//                 SizedBox(height: 100,),
           
//           Row(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(16),
//                     child: IndicatorsWidget(),
//                   ),
//                 ]),])

//                 // child: LineChart(
//                 //   LineChartData(
//                 //     borderData: FlBorderData(show: false),
//                 //     lineBarsData: [
//                 //       LineChartBarData(
//                 //         spots: dummyData1,
//                 //         isCurved: true,
//                 //         barWidth: 1,
//                 //         colors: [
//                 //           Colors.red,
//                 //         ],
//                 //       ),
//                 //       LineChartBarData(
//                 //         spots: dummyData2,
//                 //         isCurved: true,
//                 //         barWidth: 1,
//                 //         colors: [
//                 //           AppColors.primarycolor,
//                 //         ],
//                 //       ),
//                 //       LineChartBarData(
//                 //         spots: dummyData3,
//                 //         isCurved: false,
//                 //         barWidth: 1,
//                 //         colors: [
//                 //           AppColors.greenColor,
//                 //         ],
//                 //       )
//                 //     ],
//                 //   ),
//                 // ),
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
          
//     //         Container(
//     //           height: 200,
//     //          // width: 400,
//     //           child: GridView.count(
//     //   crossAxisCount: 4,
//     //   children: interstsList
//     //       .map<Widget>(
//     //           (item) => Padding(
//     //             padding: const EdgeInsets.all(10.0),
//     //             child: AspectRatio(
//     //               aspectRatio: 1,
//     //               child: ClipRRect(
//     //                 borderRadius: BorderRadius.circular(12),
//     //                 child: Image.asset(
//     //                   item.image,
//     //                   fit: BoxFit.cover,
//     //                 ),
//     //               ),
//     //             ),
//     //           ),
//     //       )
//     //       .toList(),
//     // ),
//     //         ),
         
//           ]),
//         ),
//       ),
//     );
//   }
// }
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
  Widget _chart(BuildContext context)
  {
    final fromDate = DateTime(2021, 05, 13);
  final toDate = DateTime.now();

  final date1 = DateTime.now().subtract(Duration(days: 2));
  final date2 = DateTime.now().subtract(Duration(days: 3));
   return Dialog(
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)), //this right here
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
     Widget _card()
    {
      return Container(
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Colors.blueGrey[400],
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
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 11.0,
                      ),
                      Row(
                       crossAxisAlignment:CrossAxisAlignment.center,
                        children:<Widget>
                        [
                       Text(
                            "Active Products:",
                            style: TextStyle(color: Colors.grey[300],fontSize: 16,fontWeight: FontWeight.bold),
                          ),
                      SizedBox(width: 190,),
                      Align(alignment: Alignment.centerRight,
                      child:RichText(text:TextSpan(
                          children: [
                            TextSpan(
                              text: "34",
                            ),
                            
                          ],
                          
                        ),))
                        ]),
                         SizedBox(
                        height: 11.0,
                      ),
                        Row(
                       crossAxisAlignment:CrossAxisAlignment.center,
                        children:<Widget>
                        [
                        Text(
                            "Products Sold:",
                            style: TextStyle(color: Colors.grey[300],fontSize: 16,fontWeight: FontWeight.bold),
                          ),
                      
                      SizedBox(width: 195,),
                      Align(alignment: Alignment.centerRight,
                      child:RichText(text:TextSpan(
                          children: [
                            TextSpan(
                              text: "34",
                            ),
                            
                          ],
                          
                        ),))
                        ]),
                         SizedBox(
                        height: 11.0,
                      ),
                           Row(
                       crossAxisAlignment:CrossAxisAlignment.center,
                        children:<Widget>
                        [
                      
                             Text(
                            "Total Products:",
                            style: TextStyle(color: Colors.grey[300],fontSize: 16,fontWeight: FontWeight.bold),
                          ),
                      SizedBox(width: 207,),
                      Align(alignment: Alignment.centerRight,
                      child:RichText(text:TextSpan(
                          children: [
                            TextSpan(
                              text: "34",
                            ),
                            
                          ],
                          
                        ),))
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
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 11.0),
                              color: Colors.blueGrey,
                              onPressed: () {},
                              child: Text(
                                'Products',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(9.0),
                                  side: BorderSide(color: Colors.white)),
                            ),
                          ),
                          Flexible(
                            child: RaisedButton(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 11.0),
                              color: Colors.blueGrey,
                              onPressed: () {},
                              child: Text(
                                'Shop',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(9.0),
                                  side: BorderSide(color: Colors.white)),
                            ),
                          ),
                          Flexible(
                            child: RaisedButton(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 11.0),
                              color: Colors.blueGrey,
                              onPressed: () {},
                              child: Text(
                                'Installments',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(9.0),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
              
            );
    }

     Widget _salesreport()
    {
      return Container(
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Colors.blueGrey[400],
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                      Text(
                        "Selling Report",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 11.0,
                      ),
                      Row(
                       crossAxisAlignment:CrossAxisAlignment.center,
                        children:<Widget>
                        [
                       Text(
                            "Products Sold:",
                            style: TextStyle(color: Colors.grey[300],fontSize: 16,fontWeight: FontWeight.bold),
                          ),
                      SizedBox(width: 190,),
                      Align(alignment: Alignment.centerRight,
                      child:RichText(text:TextSpan(
                          children: [
                            TextSpan(
                              text: "34",
                            ),
                            
                          ],
                          
                        ),))
                        ]),
                         SizedBox(
                        height: 11.0,
                      ),
                        Row(
                       crossAxisAlignment:CrossAxisAlignment.center,
                        children:<Widget>
                        [
                        Text(
                            "Active Customers:",
                            style: TextStyle(color: Colors.grey[300],fontSize: 16,fontWeight: FontWeight.bold),
                          ),
                      
                      SizedBox(width: 161,),
                      Align(alignment: Alignment.centerRight,
                      child:RichText(text:TextSpan(
                          children: [
                            TextSpan(
                              text: "34",
                            ),
                            
                          ],
                          
                        ),))
                        ]),
                         SizedBox(
                        height: 11.0,
                      ),
                           Row(
                       crossAxisAlignment:CrossAxisAlignment.center,
                        children:<Widget>
                        [
                      
                             Text(
                            "New Orders:",
                            style: TextStyle(color: Colors.grey[300],fontSize: 16,fontWeight: FontWeight.bold),
                          ),
                      SizedBox(width: 207,),
                      Align(alignment: Alignment.centerRight,
                      child:RichText(text:TextSpan(
                          children: [
                            TextSpan(
                              text: "34",
                            ),
                            
                          ],
                          
                        ),))
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
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 11.0),
                              color: Colors.blueGrey,
                              onPressed: () {},
                              child: Text(
                                'Customers',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(9.0),
                                  side: BorderSide(color: Colors.white)),
                            ),
                          ),
                          Flexible(
                            child: RaisedButton(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 11.0),
                              color: Colors.blueGrey,
                              onPressed: () {},
                              child: Text(
                                'Products',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(9.0),
                                  side: BorderSide(color: Colors.white)),
                            ),
                          ),
                          Flexible(
                            child: RaisedButton(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 11.0),
                              color: Colors.blueGrey,
                              onPressed: () {},
                              child: Text(
                                'Orders',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(9.0),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
              
            );
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Welcome back,",
              style: Theme.of(context)
                  .textTheme
                  .display1
                  .apply(color: Colors.grey[500]),
            ),
            Row(
              children: [
                Text(
                  "Mr. Usama",
                  style: Theme.of(context)
                      .textTheme
                      .display1
                      .apply(color: Colors.blueGrey, fontWeightDelta: 2),
                      
                ),
                SizedBox(width: 80,)
                ,
                 Row(
                   
                            children: <Widget>[
                              // Text(
                              //   "Overall review:",
                              //   style:TextStyle(fontWeight: FontWeight.bold)
                              // ),

                              Icon(Icons.star,
                                  color: Colors.yellow, size: 19),
                              Icon(Icons.star,
                                  color: Colors.yellow, size: 19),
                              Icon(Icons.star,
                                  color: Colors.yellow, size: 19),
                              Icon(Icons.star,
                                  color: Colors.yellow, size: 19),
                              Icon(Icons.star_border, size: 19),
                            ],
                          ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            _salesreport(),
           
            SizedBox(
              height: 15.0,
            ),
                   
            // Container(
            //   margin: EdgeInsets.symmetric(vertical: 15.0),
            //   height: MediaQuery.of(context).size.height / 4,
            //   child: ListView.builder(
            //     scrollDirection: Axis.horizontal,
            //   //  itemCount: historyContainerList.length,
            //     itemBuilder: (ctx,i) {
            //   //    return HistoryContainer(id: i);
            //     },
            //   ),
            // ),
        
       Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Analysis",
                    style: Theme.of(context)
                        .textTheme
                        .title
                        .apply(color: Colors.blueGrey, fontWeightDelta: 2),
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
                              .apply(color: Colors.blueGrey, fontWeightDelta: 2),
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
                  SizedBox(width: 110,),
                  Flexible(
                    child: Column(
                      children: <Widget>[
                        Text(
                          "",
                          style: Theme.of(context).textTheme.title.apply(
                              color: Color(0xff17dcb0), fontWeightDelta: 2),
                          textAlign: TextAlign.center,
                        ),
                        RaisedButton(
                          color: Colors.blueGrey,
                          child: Text("View", style: TextStyle(color: Colors.white),),
                          onPressed: () {
                            //Navigator.pushNamed(context, 'transaction');
                            showDialog(context: context, builder: (BuildContext context) => _chart(context));
                          },
                        )
                      ],
                    ),
                  )
              ],
          ),
          //      },
          //   itemCount: 2,
          //   scrollDirection: Axis.horizontal,
          // ),
      
         
            
            // PieChart(
                    
            //         PieChartData(
            //           pieTouchData: PieTouchData(
            //             touchCallback: (pieTouchResponse) {
            //               setState(() {
            //                 if (pieTouchResponse.touchInput is FlLongPressEnd ||
            //                     pieTouchResponse.touchInput is FlPanEnd) {
            //                  // touchedIndex = -1;
            //                 } else {
            //                  // touchedIndex = pieTouchResponse.touchedSectionIndex;
            //                 }
            //               });
            //             },
            //           ),
            //           borderData: FlBorderData(show: false),
            //           sectionsSpace: 0,
            //           centerSpaceRadius: 40,
            //          // sections: getSections(touchedIndex),
            //         )),
            SizedBox(height: 15.0,),
           _card(),
          ]
        
        ),
      ),
    );

 
  }
}