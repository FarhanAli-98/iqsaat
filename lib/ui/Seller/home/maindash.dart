import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math' as math;

import 'package:iqsaat/utils/Icons.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Maindash extends StatelessWidget {
  // final AnimationController ? animationController;
  // final Animation<double>? animation;

  // const MediterranesnDietView(
  //     {Key? key, this.animationController, this.animation})
  //     : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 18),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.0),
              bottomLeft: Radius.circular(8.0),
              bottomRight: Radius.circular(8.0),
              topRight: Radius.circular(68.0)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.grey,
                offset: Offset(1.1, 1.1),
                blurRadius: 10.0),
          ],
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8, top: 4),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                height: 48,
                                width: 2,
                                decoration: BoxDecoration(
                                  //color: HexColor('#87A0E5')
                                  //  .withOpacity(0.5),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4.0)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 4, bottom: 2),
                                      child: Text(
                                        'Balance',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          //  fontFamily:
                                          // Colors.fontName,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                          letterSpacing: -0.1,
                                          color: AppColors.primarycolor,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: <Widget>[
                                        SizedBox(
                                          width: 28,
                                          height: 28,
                                          child:
                                              Icon(CupertinoIcons.money_dollar),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 4, bottom: 3),
                                          child: Text(
                                            '45,000',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              // fontFamily:
                                              //     Colors
                                              //         .fontName,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 4, bottom: 3),
                                          child: Text(
                                            'pkr',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              // fontFamily:
                                              //     Colors
                                              //         .fontName,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12,
                                              letterSpacing: -0.2,
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                height: 48,
                                width: 2,
                                decoration: BoxDecoration(
                                  // color: HexColor('#F56E98')
                                  //     .withOpacity(0.5),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4.0)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 4, bottom: 2),
                                      child: Text(
                                        'Pending',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          // fontFamily:
                                          //     Colors.fontName,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                          letterSpacing: -0.1,
                                          color: AppColors.primarycolor,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: <Widget>[
                                        SizedBox(
                                            width: 28,
                                            height: 28,
                                            child:
                                                Icon(Icons.hourglass_bottom)),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 4, bottom: 3),
                                          child: Text(
                                            '4',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              // fontFamily:
                                              //     Colors
                                              //         .fontName,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8, bottom: 3),
                                          child: Text(
                                            'Installments',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              // fontFamily:
                                              //     Colors
                                              //         .black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12,
                                              letterSpacing: -0.2,
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Center(
                      child: CircularPercentIndicator(
                        linearGradient: LinearGradient(
                            colors: [
                              AppColors.primarycolor.withOpacity(0.9),
                              AppColors.primarycolor.withOpacity(0.7),
                              AppColors.primarycolor.withOpacity(0.4)
                            ],
                            begin: const FractionalOffset(0.0, 0.0),
                            end: const FractionalOffset(0.5, 0.0),
                            stops: [0.0, 0.4, 1.0],
                            tileMode: TileMode.clamp),
                        radius: 100.0,
                        lineWidth: 5.0,
                        animation: true,
                        percent: 75.0 / 100,
                        center: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '75 %',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                // fontFamily:
                                //     Colors.fontName,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                letterSpacing: -0.1,
                                color: AppColors.primarycolor,
                              ),
                            ),
                            Text(
                              'Response Rate',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                // fontFamily:
                                //     Colors.fontName,
                                fontWeight: FontWeight.w500,
                                fontSize: 10,
                                letterSpacing: -0.1,
                                color: AppColors.black.withOpacity(0.7),
                              ),
                            ),
                          ],
                        ),
                        backgroundColor: Colors.grey[300],
                        circularStrokeCap: CircularStrokeCap.round,
                        //progressColor: AppColors.primarycolor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 24, right: 24, top: 8, bottom: 8),
              child: Container(
                height: 2,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                ),
              ),
            ),
      
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 8, bottom: 16),
              child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                 
                  buildExpanded(
                    "Sales",
                    45,
                    " This Month"
                  ),
                  SizedBox(width: 2,),
                   buildExpanded(
                    " Collection",
                    90,
                    " Installments"
                  ),
                   SizedBox(width: 2,),
                   buildExpanded(
                    "Next Level",
                    75,
                    " to level 2"
                  ),
                   SizedBox(width: 2,),
                
                  
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Expanded buildExpanded(String title,int percent,String descrip) {
    return Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          // //fontFamily: Colors.fontName,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          letterSpacing: -0.2,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child:LinearPercentIndicator(
      //leaner progress bar
      animation: true,
      animationDuration: 2000,
      lineHeight: 8.0,
      width: 108,
      percent: percent/ 100,
      
      
      linearStrokeCap: LinearStrokeCap.roundAll,
      linearGradient: LinearGradient(
                          colors: [
                            AppColors.primarycolor.withOpacity(0.9),
                            AppColors.primarycolor.withOpacity(0.7),
                            AppColors.primarycolor.withOpacity(0.4)
                          ],
                          begin: const FractionalOffset(0.0, 0.0),
                          end: const FractionalOffset(0.5, 0.0),
                          stops: [0.0, 0.4, 1.0],
                          tileMode: TileMode.clamp),
      backgroundColor: Colors.grey[300],
    


                        )
                    
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: FittedBox(
                                                    child: Row(
                                                      children: [
                                                        Text(
                            percent.toString()+"%",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              // fontFamily: Colors.black12,
                              fontWeight: FontWeight.w600,
                              fontSize: 11,
                              color: AppColors.primarycolor,
                            ),
                          ),
                           Text(
                            descrip,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              // fontFamily: Colors.black12,
                              fontWeight: FontWeight.w600,
                              fontSize: 11,
                              color: AppColors.black.withOpacity(0.8),
                            ),
                          ),
                                                      ],
                                                    ),
                        ),
                      ),
                    ],
                  ),
                );
  }
}
    Widget progress() {
    final double lvPercent = 56.0;
    final double salesTargetPercent = 32.0;
    final double responseRatePercent = 45.0;

    return Row(
      
      children: [
      
      Text("Road to lv 2:",
          style:
              TextStyle(color: AppColors.black, fontWeight: FontWeight.bold)),
     
      LinearPercentIndicator(
        //leaner progress bar
        animation: true,
        animationDuration: 1000,
        lineHeight: 20.0,
        percent: lvPercent / 100,
        center: Text(
          lvPercent.toString() + "%",
          style: TextStyle(
              fontSize: 12.0, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        linearStrokeCap: LinearStrokeCap.roundAll,
        progressColor: AppColors.primarycolor,
        backgroundColor: Colors.grey[300],
      ),
      
      Text("Monthly sales Target:",
          style:
              TextStyle(color: AppColors.black, fontWeight: FontWeight.bold)),
     
      LinearPercentIndicator(
        //leaner progress bar
        animation: true,
        animationDuration: 1000,
        lineHeight: 20.0,
        percent: salesTargetPercent / 50,
        center: Text(
          salesTargetPercent.toString() + "%",
          style: TextStyle(
              fontSize: 12.0, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        linearStrokeCap: LinearStrokeCap.roundAll,
        progressColor: AppColors.primarycolor,
        backgroundColor: Colors.grey[300],
      ),
      
      Text("Collection:",
          style:
              TextStyle(color: AppColors.black, fontWeight: FontWeight.bold)),
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
              fontSize: 12.0, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        linearStrokeCap: LinearStrokeCap.roundAll,
        progressColor: AppColors.primarycolor,
        backgroundColor: Colors.grey[300],
      ),
    ]);
    
}


