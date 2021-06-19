import 'dart:ffi';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/button.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class orderDetails extends StatefulWidget {
  @override
  _orderDetailsState createState() => _orderDetailsState();
}

class _orderDetailsState extends State<orderDetails> {
  final double _price = 94000;
  final double _advance = 26800; //((price/7)*2)...///2months
  final double _permonth = 13428; //(_price - advance)/7months

  Widget _packagedetail() {
    return Container(
      height: MediaQuery.of(context).size.height / 4.5,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: AppColors.backgroundColor,
          borderRadius: BorderRadius.circular(10),
           boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                      ),
      child: Container(

        padding: const EdgeInsets.only(left:10),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 20),
             
                Row(
                  children: [
                    Text(
                      "Selected Package:",
                      style: TextStyle(
                          fontSize: 16,
                          
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 27,
                    ),
                    Text(
                      "Package 2",
                      style: TextStyle(
                          fontSize: 16,
                          
                          color: AppColors.primarycolor,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Number of Months: ",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    Text("7 Months",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primarycolor,
                        )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                 
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(border:Border(top: BorderSide(color: AppColors.primarycolor,
              ),
                  )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             SizedBox(
                         height: 8,
                       ),
                        Text(
                          "Price per Month",
                          style: TextStyle(
                              fontSize: 16,
                             
                              color: Colors.black,
                              fontWeight: FontWeight.bold,)
                        ),
                       SizedBox(
                         height: 10,
                       ),
                        Text(
                          _permonth.toString()+"\P\K\R",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight:FontWeight.bold,
                              color: AppColors.primarycolor),
                        ),
                          ]
                      ),
                        SizedBox(
                          width: 40,
                          
                        ),
                       
              //         decoration: BoxDecoration( boxShadow: [
              //     BoxShadow(
              //       color: Colors.grey,
              //       offset: Offset(0.0, 1.0), //(x,y)
              //       blurRadius: 6.0,
              //     ),
              //   ],
              // ),
                  
                           Column(//mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                       SizedBox(
                         height: 8,
                       ),
                            Text(
                              "Advance",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                             SizedBox(
                           height: 10,
                       ),
                            Column(
                              children: [
                                Text(
                                  "2Months:" + _advance.toString()+"/P/K/R",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.black),
                                ),
                                Text(
                                   _advance.toString()+"/P/K/R",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.primarycolor),
                                )
                              ],
                            ),
                       
                      ],
                        ),
                    ],
                  ),
                ),
               

                
              ]),
        ),
    );
  }

  Widget orderProduct() {
    return Container(
                  padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                   
                    color: AppColors.backgroundColor,
                     borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                ),

      child: Column(
        children: [
          Column(children: <Widget>[
            SizedBox(
              height: 180.0,
              child: Stack(
                //clipBehavior: Clip.hardEdge,
                children: <Widget>[
                  Positioned.fill(
                    child: Image.asset(
                      'assets/images/cd70.jpeg',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Positioned(
                    bottom: 16.0,
                    left: 16.0,
                    right: 16.0,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '',
                        style: Theme.of(context).textTheme.headline5.copyWith(
                            color: AppColors.primarycolor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Honda CD70",
                          style:TextStyle(color: AppColors.primarycolor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,

                          )),


                TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text("Price:",
                          style:TextStyle(color: Colors.black,)),
                           Text( _price.toString(),
                          style:TextStyle(color: AppColors.primarycolor,)),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text("In Stock",
                          style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                           Text( "4",
                          style:TextStyle(color: AppColors.primarycolor,fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
    
              ],
            )
          ]),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orders', style: TextStyle(color: AppColors.primarycolor)),
        backgroundColor: AppColors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.all(10),
            height: SizeConfig.screenHeight,
            color: AppColors.backgroundColor,
            child: Column(
              children: [
                SizedBox(
                        
                        height: 5,
                      ),
                 Container(
                    decoration: BoxDecoration(border:Border(bottom: BorderSide(color: AppColors.primarycolor,
              ),
                  )),
          
                   
                   
                   child: Row(
                                children: [
                                  Text(
                                    "Order Id:",
                                  
                                    style: TextStyle(
                                        color: AppColors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "  45",
                                  
                                    style: TextStyle(
                                        color: AppColors.primarycolor,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                 ),
                         _buyerdetails(),
                 SizedBox(
                        
                        height: 10,
                      ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Product",
                      style: TextStyles.normalFontText,
                    ),
                    SizedBox(width: 20,),
                     TextButton(
                  onPressed: () {},
                  //Icon(Icons.remove_red_eye),
                  child: Text('   View Product'),
                ),

                  ],
                ),
               
                   orderProduct(),
                   SizedBox(
                        
                        height: 10,
                      ),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Package",
                      style: TextStyles.normalFontText,
                    ),
                    SizedBox(width: 20,),
                     TextButton(
                  onPressed: () {},
                  //Icon(Icons.remove_red_eye),
                  child: Text('   View Package'),
                ),
                  ],
                ),
                
                    _packagedetail(),
                    SizedBox(
                        
                        height: 10,
                      ),
                    
                
                Text(
                  "Buyer Note",
                  style: TextStyles.normalFontText,
                ),
                SizedBox(height: 5,),
                Container(
                  height: MediaQuery.of(context).size.height / 10,
                  decoration: BoxDecoration(
                      color: AppColors.backgroundColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(8)),
                ),
                Text(
                  "",
                  style: TextStyles.normalFontText,
                ),
              ],
            )),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            
            backgroundColor: AppColors.primarycolor,
                onPressed: () {
                  // Add your onPressed code here!
                },
                child: Icon(Icons.chat_bubble),
              ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
             
              FloatingActionButton.extended(
                
                onPressed: () {
                  // Add your onPressed code here!
                },
                label: const Text('Decline',style: TextStyle(color: Colors.black),),
                icon: const Icon(Icons.thumb_down,color: Colors.black,),
                backgroundColor: AppColors.backgroundColor,
              ),
              FloatingActionButton.extended(
                onPressed: () {
                  // Add your onPressed code here!
                },
                label: const Text('Accept'),
                
                icon: const Icon(Icons.thumb_up),
                backgroundColor: Colors.green[400],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double blockSizeHorizontal;
  static double blockSizeVertical;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
  }
}
Widget _buyerdetails()
{
  return Column(
    children: [
      
      Container(
                      padding:EdgeInsets.all(15),
                      decoration: BoxDecoration(
                      
                        color: AppColors.backgroundColor,
                         borderRadius: BorderRadius.only(
                           bottomLeft: Radius.circular(12),
                           bottomRight: Radius.circular(12),
                           
                           ),
                  
                          // boxShadow: [
                          //   BoxShadow(
                          //     color: Colors.grey,
                          //     offset: Offset(0.0, 1.0), //(x,y)
                          //     blurRadius: 8.0,
                          //   ),
                          // ],
                         ),
                    
        
                        
                      
                          
                        child:  Row(
                            children: [
                              
                              Center(
                                child: Column(
                                  children: [
                                   Stack(
            children: <Widget>[
              CircleAvatar(
                radius:40.0,
                child: ClipOval(child: Image.asset('assets/images/person.png', height: 150, width: 150, fit: BoxFit.cover,),),
              ),
             // 'assets/images/person.png'
              Positioned(bottom: 1, right: 1 ,child: Container(
                height: 20, width: 20,
                child: Icon(Icons.circle,
                 color: Colors.greenAccent,),
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
              ))
            ],
          ),

                                    // CircleAvatar(
                                    //   child: ClipOval(
                                    //     child: Icon(Icons.person),
                                    //   ),
                                    //   radius: 40.0,
                                    // ),
                                    SizedBox(height: 5,)
                                    ,
                                    Text("18//05//21",
                                        style: TextStyle(
                                            color: AppColors.primarycolor,
                                            fontSize: 15))
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 15,
                                //height: 80,
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Usama Yousaf",
                                        style: TextStyle(
                                            color: AppColors.black, fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(width: 20,),
 Align(
                                    alignment: Alignment.centerRight,
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.star,
                                            color: Colors.yellow, size: 17),
                                        Icon(Icons.star,
                                            color: Colors.yellow, size: 17),
                                        Icon(Icons.star,
                                            color: Colors.yellow, size: 17),
                                        Icon(Icons.star,
                                            color: Colors.yellow, size: 17),
                                        Icon(Icons.star_border, size: 17),
                                      ],
                                    ),
                                  ),

                                    ],
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                 
                                
                                  Row(
                                    children: [
                                      Icon(Icons.gps_fixed,
                                          color:  AppColors.black),
                                          SizedBox(width: 5,),
                                      Text(
                                        "Nile Street 01 Town Ship,Lahore",
                                        style: TextStyle(
                                            
                                            color: AppColors.primarycolor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                      
                    ),
    ],
  );
}