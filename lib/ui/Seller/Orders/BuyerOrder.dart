import 'package:flutter/material.dart';
import 'package:iqsaat/utils/app_colors.dart';
class Buyers_Order extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 170,
        width: 350,
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
                      child: Icon(Icons.verified_user),
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
                          'Haier Fridge 304',
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
                            text: 'Order By:',
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            text: ' SellerName',
                            style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold))
                      ])),
                    ),
                     SizedBox(
                      height: 05,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        '45 mins ago',
                        style: TextStyle(
                            color: AppColors.greenColor, fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      height: 05,
                    ),
                    Text(
                      'Plan:Monthly',
                      style: TextStyle(color: Colors.blueAccent, fontSize: 16,fontWeight: FontWeight.bold),
                    ),
                  SizedBox(height: 10,),
                    Container(
                      padding: EdgeInsets.only(top: 02),
                      height: 25,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: AppColors.primarycolor.withOpacity(0.5),
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
                            'View Details',
                            style: TextStyle(color: Colors.white, fontSize: 12,fontWeight: FontWeight.bold),
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
                  ])),
        ]));
  }
}