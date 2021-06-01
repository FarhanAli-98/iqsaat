import 'dart:math';
import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/providers_listView_container.dart';
import 'package:iqsaat/models/interest_item_model.dart';
import 'package:iqsaat/ui/Seller/home/dashboard/pie/indicator.dart';
import 'package:iqsaat/ui/Seller/home/dashboard/pie/sections.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:fl_chart/fl_chart.dart';
<<<<<<< HEAD:lib/ui/seller/home/dashboard.dart

=======
>>>>>>> main:lib/ui/saller/home/dashboard.dart

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}


class _DashboardState extends State<Dashboard> {
  int touchedIndex;
   final List<FlSpot> dummyData1 = List.generate(15, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

  final List<FlSpot> dummyData2 = List.generate(15, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

  final List<FlSpot> dummyData3 = List.generate(5, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });
  displayAccoutList() {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: Column(
        children: <Widget>[
          accountItems("Products in shop", r"27", "28-04-16", "Available",
              oddColour: Colors.blueAccent),
          accountItems(
              "Instalmments ongoing", r"3", "26-04-16", "credit"),
          accountItems("Installments Completed", r"20", "25-04-21", "Payment",
              oddColour: Colors.greenAccent),
              accountItems(
              "Delayed Installments", r"4", "Today", "Credit",
              oddColour: Colors.redAccent),
          accountItems(
              "Orders recieved", r"4", "April", "Payment"),
          
        ],
      ),
    );
  }
  Container accountItems(
          String item, String charge, String dateString, String type,
          {Color oddColour = Colors.lightBlue}) =>
      Container(
        decoration: BoxDecoration(color: oddColour),
        padding:
            EdgeInsets.only(top: 20.0, bottom: 20.0, left: 0, right:0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(item, style: TextStyle(fontSize: 16.0,fontWeight:FontWeight.bold)),
                Text(charge, style: TextStyle(fontSize:16.0,fontWeight: FontWeight.bold))
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(dateString,
                    style: TextStyle(color: Colors.grey, fontSize: 14.0)),
                Text(type, style: TextStyle(color: Colors.grey, fontSize: 14.0))
              ],
            ),
          ],
        ),
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          height:900, //MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(gradient: AppColors.background),

          child: Column(children: [
            Align(
                alignment: Alignment.topRight,
                child: Center(
                    child: Text('Welcome back!',
                        style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold)))),
             Container(
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.only(left: 10, top: 5),
                  height: 300,
                  width: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: AppColors.greyColor.withOpacity(0.15)),
                      child:SingleChildScrollView(child:  displayAccoutList() )
                  // child: Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //   children: [
                  //     Column(
                  //       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //       children: [
                  //         CircularPercentIndicator(
                  //           radius: 40.0,
                  //           lineWidth: 5.0,
                  //           percent: 0.67,
                  //           progressColor: AppColors.redColor,
                  //           backgroundColor: AppColors.white,
                  //           footer: Padding(
                  //             padding: const EdgeInsets.all(8.0),
                  //             child: Text('67%',
                  //                 style: TextStyle(
                  //                     color: Colors.black, fontSize: 15)),
                  //           ),
                  //         ),
                  //         Text(
                  //           'Selling Rate',
                  //           style: TextStyle(
                  //               color: AppColors.greyColor, fontSize: 12),
                  //         )
                  //       ],
                  //     ),
                  //     Column(
                  //       children: [
                  //         CircularPercentIndicator(
                  //           radius: 40.0,
                  //           lineWidth: 5.0,
                  //           percent: 0.53,
                  //           backgroundColor: AppColors.white,
                  //           progressColor: AppColors.primarycolor,
                  //           footer: Padding(
                  //             padding: const EdgeInsets.all(8.0),
                  //             child: Text(
                  //               '53%',
                  //               style:
                  //                   TextStyle(color: Colors.black, fontSize: 15),
                  //             ),
                  //           ),
                  //         ),
                  //         Text(
                  //           'Conversion Rate',
                  //           style: TextStyle(
                  //               color: AppColors.greyColor, fontSize: 12),
                  //         )
                  //       ],
                  //     ),
                  //     Column(
                  //       children: [
                  //         CircularPercentIndicator(
                  //           radius: 40.0,
                  //           lineWidth: 5.0,
                  //           percent: 0.80,
                  //           backgroundColor: AppColors.white,
                  //           progressColor: AppColors.greenColor,
                  //           footer: Padding(
                  //             padding: const EdgeInsets.all(8.0),
                  //             child: Text(
                  //               '80%',
                  //               style:
                  //                   TextStyle(color: Colors.black, fontSize: 15),
                  //             ),
                  //           ),
                  //         ),
                  //         Text(
                  //           'Overall Customer\n          Rating',
                  //           style: TextStyle(
                  //               color: AppColors.greyColor, fontSize: 12),
                  //         )
                  //       ],
                  //     )
                  //   ],
                  // ) ,
                  //
              ),
            
            SizedBox(
              height: 10,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Recent Orders',
                  style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),
                )),
           
            SizedBox(
              height: 10,
            ),
               Container(
              height: 180,
              child: ListView.builder(
                itemBuilder: (BuildContext context, int inedx) {
                  return ProvidersListViewContainer();
                },
                itemCount: 5,
                scrollDirection: Axis.horizontal,
              ),
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Orders by categories',
                  style: TextStyle(color: Colors.black, fontSize: 15,fontWeight: FontWeight.bold),
                )),
            Expanded(
              
              
                    child:SingleChildScrollView( 
                
                child:  Column(
               children:<Widget>[
                 SizedBox(height:150,),
                PieChart(
                  
                  PieChartData(
                    pieTouchData: PieTouchData(
                      touchCallback: (pieTouchResponse) {
                        setState(() {
                          if (pieTouchResponse.touchInput is FlLongPressEnd ||
                              pieTouchResponse.touchInput is FlPanEnd) {
                            touchedIndex = -1;
                          } else {
                            touchedIndex = pieTouchResponse.touchedSectionIndex;
                          }
                        });
                      },
                    ),
                    borderData: FlBorderData(show: false),
                    sectionsSpace: 0,
                    centerSpaceRadius: 40,
                    sections: getSections(touchedIndex),
                  ),
                ),
                SizedBox(height: 100,),
           
          Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: IndicatorsWidget(),
                  ),
                ]),])

                // child: LineChart(
                //   LineChartData(
                //     borderData: FlBorderData(show: false),
                //     lineBarsData: [
                //       LineChartBarData(
                //         spots: dummyData1,
                //         isCurved: true,
                //         barWidth: 1,
                //         colors: [
                //           Colors.red,
                //         ],
                //       ),
                //       LineChartBarData(
                //         spots: dummyData2,
                //         isCurved: true,
                //         barWidth: 1,
                //         colors: [
                //           AppColors.primarycolor,
                //         ],
                //       ),
                //       LineChartBarData(
                //         spots: dummyData3,
                //         isCurved: false,
                //         barWidth: 1,
                //         colors: [
                //           AppColors.greenColor,
                //         ],
                //       )
                //     ],
                //   ),
                // ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          
    //         Container(
    //           height: 200,
    //          // width: 400,
    //           child: GridView.count(
    //   crossAxisCount: 4,
    //   children: interstsList
    //       .map<Widget>(
    //           (item) => Padding(
    //             padding: const EdgeInsets.all(10.0),
    //             child: AspectRatio(
    //               aspectRatio: 1,
    //               child: ClipRRect(
    //                 borderRadius: BorderRadius.circular(12),
    //                 child: Image.asset(
    //                   item.image,
    //                   fit: BoxFit.cover,
    //                 ),
    //               ),
    //             ),
    //           ),
    //       )
    //       .toList(),
    // ),
    //         ),
         
          ]),
        ),
      ),
    );
  }
}
