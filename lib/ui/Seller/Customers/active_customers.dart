import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:iqsaat/ui/Seller/Customers/finished_details.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/styles.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:intl/intl.dart';
import './active_details.dart';
import './finished_details.dart';

class active_customers extends StatelessWidget {
  bool ongoing = true;
  double percent = 45.0;
  active_customers(bool ongoing) {
    this.ongoing = ongoing;
  }

  DateTime now = DateTime.now();
  String installmentStDate = DateFormat('yyyy-MM-dd').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    ongoing ? percent = 45.0 : percent = 100.0;
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) =>
                    ongoing ? Active_details() : finished_details()));
      },
      child: Container(
        //color: Colors.white,
          height: MediaQuery.of(context).size.height / 3.9,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.all(12),
          decoration: BoxStyles.deco,
          child: Row(children: [
            Expanded(
                flex: 5,
                child: Column(
                  children: [
                    CircleAvatar(
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/person.png',
                          height: 350,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      radius: 55.0,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    ongoing
                        ? Text(
                            "Started:",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          )
                        : Text(
                            "Ended:",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                    SizedBox(
                      height: 2.0,
                    ),
                    Text(
                      installmentStDate,
                      style: TextStyle(
                          color: AppColors.primarycolor,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
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
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 05),
                        child: RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: 'Product:',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              )),
                          TextSpan(
                              text: ' Haier 3041',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ))
                        ])),
                      ),
                      SizedBox(
                        height: 05,
                      ),
                      Row(
                        children: [
                          Text(
                            'Plan:  ',
                            style: TextStyle(
                                color: AppColors.black.withOpacity(0.7),
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Monthly',
                            style: TextStyle(
                                color: AppColors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.arrow_drop_down),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ongoing
                              ? Container(
                                  padding: EdgeInsets.only(top: 2,bottom: 2),
                                  height: 25,
                                  width: 110,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(28),
                                      color: Colors.black,
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
                                        'Delayed',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
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
                                )
                              : Container(
                                  padding: EdgeInsets.only(top: 02),
                                  height: 25,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: Colors.greenAccent,
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
                                        'Status:Done',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 11,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                 Text(
                            '\R\S\:45,000',
                            style: TextStyle(color: AppColors.primarycolor,fontWeight: FontWeight.bold),
                          )
                         
                        ],
                      ),
                     
                    ])),
          ])),
    );
  }
}
