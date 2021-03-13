import 'package:flutter/material.dart';
import 'package:iqsaat/utils/colors.dart';


class HomeScreenListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Row(
                  children: [
                    Container(
                    
                      height:130,
                      width:150,
                       decoration: BoxDecoration(
                    color: AppColor.fillColor.withOpacity(0.58),
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  color: AppColor.green.withOpacity(.2),
                                 // offset: Offset(5, -10),
                                 spreadRadius: 3,
                                  blurRadius: 5),
                            ]
                  ),
                  child: Column(
                   children: [
                     Container(
                       padding: EdgeInsets.only(right:05,top:05),
                       height: 75,
                       width:150,
                       decoration:BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/rect.png'),fit: BoxFit.cover),),
                       child: Align(
                         alignment: Alignment.topRight,
                         child: Image.asset('assets/images/1345.png'),
                     )),
                     Padding(
                           padding: const EdgeInsets.only(left:5.0,right:05,bottom: 05,top:05),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                         Text('DJ',style: TextStyle(color:Colors.white),),
                         Text('\$200',style: TextStyle(color:Colors.white),),
                       ],),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left:5.0,right:05,bottom: 05),
                       child:  Align(
                         alignment: Alignment.topLeft,
                         child: Image.asset('assets/images/star.png')),
                     ),
                        Container(
                          margin: EdgeInsets.only(top:05),
                            height: 02,
                            width: 120,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Colors.blue,
                                Colors.green
                              ])
                            ),
                          
                        )
                   ], 
                  ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                       Container(
                         margin: EdgeInsets.only(right: 10),
                      height:130,
                      width:150,
                       decoration: BoxDecoration(
                    color: AppColor.fillColor.withOpacity(0.58),
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  color: AppColor.green.withOpacity(.2),
                                 // offset: Offset(5, -10),
                                 spreadRadius: 3,
                                  blurRadius: 5),
                            ]
                  ),
                  child: Column(
                   children: [
                     Container(
                        padding: EdgeInsets.only(right:05,top:05),
                       height: 75,
                       width:150,
                       decoration:BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/Rectangle.png'),fit: BoxFit.cover)),
                       child:Align(
                         alignment: Alignment.topRight,
                         child: Image.asset('assets/images/1345.png'),
                     )
                     ),
                     Padding(
                           padding: const EdgeInsets.only(left:5.0,right:05,bottom: 05,top: 05),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                         Text('Gutarist',style: TextStyle(color:Colors.white),),
                         Text('\$150',style: TextStyle(color:Colors.white),),
                       ],),
                     ),
                     Padding(
                        padding: const EdgeInsets.only(left:5.0,right:05,bottom: 05),
                       child: Align(
                         alignment: Alignment.topLeft,
                         child: Image.asset('assets/images/star.png')),
                     ),
                        Container(
                          margin: EdgeInsets.only(top:05),
                            height: 02,
                            width: 120,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Colors.blue,
                                Colors.green
                              ])
                            ),
                          
                        )
                   ], 
                  ),
                      )]
                    
                  
                );
  }
}