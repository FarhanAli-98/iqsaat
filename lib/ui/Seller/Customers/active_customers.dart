import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:percent_indicator/percent_indicator.dart';

class active_customers extends StatelessWidget {
  double percent = 45.0;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 175.0,
        width: 350.0,
        padding: EdgeInsets.all(08),
        margin: EdgeInsets.all(08),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: AppColors.greyColor.withOpacity(0.15)),
        child: Row(children: [
          Expanded(
              flex: 5,
              child: Column(
                children: [
                  CircleAvatar(
                    child: ClipOval(
                      child: Icon(Icons.person),
                    ),
                    radius: 55.0,
                  ),
                ],
              )),
          SizedBox(
            width: 10,
          ),
          Expanded(
              flex: 10,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Buyer1',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '\R\S\:45,000',
                          style: TextStyle(color: AppColors.primarycolor),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 05),
                      child: RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: 'Product',
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            text: ' Haier 3041',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                ))
                      ])),
                    ),
                    SizedBox(
                      height: 05,
                    ),
                    Text(
                      'Plan:Monthly',
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 02),
                          height: 25,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.redAccent,
                              boxShadow: [
                                BoxShadow(
                                    color: AppColors.primarycolor,
                                    blurRadius: 1.5,
                                    offset: Offset(0, 2))
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Status:Delayed',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),

                              // SizedBox(
                              //   height: 03,
                              // ),
                              // Container(
                              //   height: 03,
                              //   width: 60,
                              //   color: Color(0xff6AB5D5),
                              // )
                            ],
                          ),
                        ),
                          Align(
                      alignment: Alignment.centerRight,
                      child: CircularPercentIndicator(
                        radius: 60.0,
                        lineWidth: 8.0,
                        animation: true,
                        percent: percent / 100,
                        center: Text(
                          percent.toString() + "%",
                          style: TextStyle(
                              fontSize: 10.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        backgroundColor: Colors.black,
                        circularStrokeCap: CircularStrokeCap.round,
                        progressColor: Colors.greenAccent,
                      ),
                    ),
                      ],
                    ),
                    SizedBox(
                      height: 02,
                    ),
                  
                  ])),
        ]));
  }
}
