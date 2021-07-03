import 'package:flutter/material.dart';
import 'package:iqsaat/utils/Icons.dart';
import 'package:iqsaat/utils/app_colors.dart';
class reportCard extends StatelessWidget {
  reportCard(
    {
      this.title,
      this.subtitle,
      this.imgurl,
      this.stat
    }
  );
  final String title,imgurl,subtitle;
  final int stat;
  
      

  


  @override
  Widget build(BuildContext context) {
  
        return Container(
          margin: EdgeInsets.only(left:10,right:10,top: 10,bottom: 15),
          
              width:MediaQuery.of(context).size.width/3.6,
              height:MediaQuery.of(context).size.height/4.1,
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 25, left: 0, right: 0, bottom: 16),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.grey,
                              offset: const Offset(1.1, 4.0),
                              blurRadius: 8.0),
                        ],
                        gradient: LinearGradient(
                          colors: [
                            AppColors.white,
                            AppColors.white,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(54.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 45, left: 4, right: 0, bottom: 8),
                        
                        child:Flexible(
                              flex: 1,
                              child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            
                                                        FittedBox(
                                                                                                                      child: Text(
                                title,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                 // //fontFamily: FitnessAppTheme.fontName,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  letterSpacing: 0.2,
                                  color:Colors.black,
                                
                              ),
                                                          ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 8, bottom: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                     subtitle,
                                      style: TextStyle(
                                        //fontFamily: FitnessAppTheme.fontName,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13,
                                        letterSpacing: 0.2,
                                        color: AppColors.primarycolor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                              Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      FittedBox(
                                                                              child: Text(
                                          stat.toString(),
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            //fontFamily: FitnessAppTheme.fontName,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25,
                                            letterSpacing: 0.2,
                                            color: AppColors.primarycolor,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 4, bottom: 3),
                                        child: Text(
                                          'installments',
                                          style: TextStyle(
                                            // fontFamily:
                                            //     FitnessAppTheme.fontName,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10,
                                            letterSpacing: 0.2,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                               
                          ],
                        ),
                      ),
                      )
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 2,
                    child: SizedBox(
                       width: 55,
                        height: 55,
                      child: ClipOval(
                        // color: Colors.grey,
                       
                        child: Image.asset(imgurl
                        ),
                      ),
                    ),
                  )
                ],
              ),
        );
      
  }
}