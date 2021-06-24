import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/screen_size_utils.dart';
import 'package:iqsaat/utils/styles.dart';
import 'package:intl/intl.dart';

class ordersCard extends StatelessWidget {


  bool status=false;
  String prodname,personname;
  int price;
  DateTime date;
  String plan;
  Function func;
  
  ordersCard({
   @required this.status,
   @required this.prodname,
   @required this.personname,
   @required this.price,
   @required this.plan,
   @required this.date,
   @required this.func

  });


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: func,
          child: Container(
        height: MediaQuery.of(context).size.height/3.9,
       // width: DS.mq.width,
        padding: EdgeInsets.all(08),
        margin: EdgeInsets.all(08),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: AppColors.backgroundColor,),
        child: Row(
          
          children: [
          Expanded(
              flex: 4,
              child: Column(
                children: [
                 CircleAvatars.profile,
                 
                    Container(
                      margin: EdgeInsets.only(top:15,bottom: 5,left: 10),
                      child: Align(
                      
                        alignment: Alignment.bottomLeft,
                        child: Column(
                          children: [
                            status ? Text(
                              'Accepted on:',
                              style: TextStyle(
                                  color: AppColors.black.withOpacity(0.5), fontSize: 12),
                            ):
                              Text(
                              'Ordered on:',
                              style: TextStyle(
                                  color: AppColors.black.withOpacity(0.5), fontSize: 12),
                            ),
                            Text(
                              DateFormat('yyyy-MM-dd').format(date),
                              style: TextStyle(
                                  color: AppColors.primarycolor, fontSize: 15),
                            ),
                          ],
                        ),
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
                          prodname,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '\R\S\:' + price.toString(),
                          style: TextStyle(color: AppColors.black,fontWeight: FontWeight.bold),
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
                            text: personname,
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Plan:',
                          style: TextStyle(color:AppColors.black.withOpacity(0.7), fontSize: 16,fontWeight: FontWeight.bold),
                        ),

                         Text(
                           plan,
                          style: TextStyle(color:AppColors.black, fontSize: 18,fontWeight: FontWeight.bold,),
                        ),
                      ],
                    ),
                  SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                         padding: EdgeInsets.only(top: 2,bottom: 2),
                            width: sizeWidth(context)/3,
                            //height: MediaQuery.of(context).size.width*.07,
                          decoration:
                           BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: AppColors.primarycolor.withOpacity(0.2),
                              boxShadow: [
                                // BoxShadow(
                                //     color: App,
                                //     offset: Offset(0, 2))
                              ]),
                          
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
                              status ?
                              Text(
                                'Accepted',
                                style: TextStyle(color: AppColors.black, fontSize: 16,fontWeight: FontWeight.bold),
                              ):
                              Text(
                                'Ongoing',
                                style: TextStyle(color: AppColors.black, fontSize: 16,fontWeight: FontWeight.bold),
                              )

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
        ])),
    );
  }
}

