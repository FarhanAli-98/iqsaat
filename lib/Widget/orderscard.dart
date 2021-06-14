import 'package:flutter/material.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/styles.dart';

class ordersCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildContainer();
  }
}

Container buildContainer() {
    return Container(
      height: 170,
      width: 350,
      padding: EdgeInsets.all(08),
      margin: EdgeInsets.all(08),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: AppColors.backgroundColor,),
      child: Row(children: [
        Expanded(
            flex: 5,
            child: Column(
              children: [
                CircleAvatar(
                  child: ClipOval(
                    child: Icon(Icons.verified_user),
                  ),
                  radius: 55.0,
                ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '45 mins ago',
                      style: TextStyle(
                          color: AppColors.primarycolor, fontSize: 15),
                    ),
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
                        'Haier 304',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '\R\S\:45,000',
                        style: TextStyle(color: AppColors.black),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 05),
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: 'Order By:',
                          style: TextStyle(color: Colors.black.withOpacity(0.7),fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: ' SellerName',
                          style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18))
                    ])),
                  ),
                   SizedBox(
                    height: 05,
                  ),
                
                  SizedBox(
                    height: 05,
                  ),
                  Row(
                    children: [
                      Text(
                        'Plan:',
                        style: TextStyle(color:AppColors.black.withOpacity(0.7), fontSize: 16,fontWeight: FontWeight.bold),
                      ),
                       Text(
                        'Monthly',
                        style: TextStyle(color:AppColors.black, fontSize: 18,fontWeight: FontWeight.bold,),
                      ),
                    ],
                  ),
                SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 02),
                        height: 25,
                        width: 100,
                        decoration: BoxStyles.deco,
                        // decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(25),
                        //     color: AppColors.primarycolor.withOpacity(0.5),
                        //     boxShadow: [
                        //       BoxShadow(
                        //           color: d,
                        //           offset: Offset(0, 2))
                        //     ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Accepted',
                              style: TextStyle(color: Colors.black, fontSize: 14,fontWeight: FontWeight.bold),
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
                       Container(
                        padding: EdgeInsets.only(top: 02),
                        height: 25,
                        width: 100,
                        decoration: BoxStyles.deco,
                        // decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(25),
                        //     color: AppColors.primarycolor.withOpacity(0.5),
                        //     boxShadow: [
                        //       BoxShadow(
                        //           color: d,
                        //           offset: Offset(0, 2))
                        //     ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Add Customer',
                              style: TextStyle(color: Colors.black, fontSize: 14,fontWeight: FontWeight.bold),
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
                    ],
                  ),
                ])),
      ]));
  }