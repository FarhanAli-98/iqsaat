import 'dart:math';
import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/providers_listView_container.dart';
import 'package:iqsaat/models/interest_item_model.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:fl_chart/fl_chart.dart';

class Dashboard extends StatelessWidget {
   final List<FlSpot> dummyData1 = List.generate(15, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

  final List<FlSpot> dummyData2 = List.generate(15, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

  final List<FlSpot> dummyData3 = List.generate(5, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          // height: MediaQuery.of(context).size.height,
          // width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(gradient: AppColors.background),
          child: Column(children: [
            Align(
                alignment: Alignment.topRight,
                child: Center(
                    child: Text('Welcome back!',
                        style: TextStyle(color: Colors.black, fontSize: 18)))),
            Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(left: 20, top: 10),
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: AppColors.greyColor.withOpacity(0.15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircularPercentIndicator(
                          radius: 40.0,
                          lineWidth: 5.0,
                          percent: 0.67,
                          progressColor: AppColors.redColor,
                          backgroundColor: AppColors.white,
                          footer: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('67%',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15)),
                          ),
                        ),
                        Text(
                          'Selling Rate',
                          style: TextStyle(
                              color: AppColors.greyColor, fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        CircularPercentIndicator(
                          radius: 40.0,
                          lineWidth: 5.0,
                          percent: 0.53,
                          backgroundColor: AppColors.white,
                          progressColor: AppColors.primarycolor,
                          footer: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '53%',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                          ),
                        ),
                        Text(
                          'Conversion Rate',
                          style: TextStyle(
                              color: AppColors.greyColor, fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        CircularPercentIndicator(
                          radius: 40.0,
                          lineWidth: 5.0,
                          percent: 0.80,
                          backgroundColor: AppColors.white,
                          progressColor: AppColors.greenColor,
                          footer: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '80%',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                          ),
                        ),
                        Text(
                          'Overall Customer\n          Rating',
                          style: TextStyle(
                              color: AppColors.greyColor, fontSize: 12),
                        )
                      ],
                    )
                  ],
                )),
            SizedBox(
              height: 10,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Recent Orders',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                )),
            Container(
              height: 150,
              child: ListView.builder(
                itemBuilder: (BuildContext context, int inedx) {
                  return ProvidersListViewContainer();
                },
                itemCount: 5,
                scrollDirection: Axis.horizontal,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Send List of Orders',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                )),
            Card(
              child:  Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              height: 200,
              child: LineChart(
                LineChartData(
                  borderData: FlBorderData(show: false),
                  lineBarsData: [
                    LineChartBarData(
                      spots: dummyData1,
                      isCurved: true,
                      barWidth: 1,
                      colors: [
                        Colors.red,
                      ],
                    ),
                    LineChartBarData(
                      spots: dummyData2,
                      isCurved: true,
                      barWidth: 1,
                      colors: [
                        AppColors.primarycolor,
                      ],
                    ),
                    LineChartBarData(
                      spots: dummyData3,
                      isCurved: false,
                      barWidth: 1,
                      colors: [
                        AppColors.greenColor,
                      ],
                    )
                  ],
                ),
              ),
            ),),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
             // width: 400,
              child: GridView.count(
      crossAxisCount: 4,
      children: interstsList
          .map<Widget>(
              (item) => Padding(
                padding: const EdgeInsets.all(10.0),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      item.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
          )
          .toList(),
    ),
            ),
         
          ]),
        ),
      ),
    );
  }
}
