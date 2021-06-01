import 'dart:ffi';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/button.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/styles.dart';

class orderDetails extends StatefulWidget {
  @override
  _orderDetailsState createState() => _orderDetailsState();
}

class _orderDetailsState extends State<orderDetails> {
  final double _price= 94000;
  final double _advance=26800;//((price/7)*2)...///2months
  final double _permonth=13428; //(_price - advance)/7months


Widget _packagedetail() {
    return Container(
      height: MediaQuery.of(context).size.height/4.5,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 20),
                 RaisedButton(
                   elevation: 5,
                        color: Colors.white,
                        child:Text("View Packages",style: TextStyle(
                      fontSize:15,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primarycolor)),
                            //Icon(Icons.bar_chart, color: AppColors.primarycolor),
                        onPressed: () {
                          //Navigator.pushNamed(context, 'transaction');
                          showDialog();
                              // context: context,
                              // builder: (BuildContext context) =>  );
                        },
                      ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Selected Package:",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                  width: 27,
                ),
                     Text(
                      "Package 2",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primarycolor),
                    ),
                  ],
                ),
                SizedBox(
                  height: 7,
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
                  width: 20,
                ),
                    Text(
                      "7 Months",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primarycolor,)
                    ),
                     

                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                 Row(//mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                 children: [
                  Text(
                    "Price per Month:",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                      SizedBox(
                  width: 37,
                ),
                   Text(
                      _permonth.toString(),
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primarycolor),
                    ),
                         SizedBox(
                  width: 40,
                ),
              Column(//mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                 children: [
                  Text(
                    "Advance",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                   Text(
                     "2Months:" + _advance.toString(),
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primarycolor),
                    ),
          
                ])
                ]),
                SizedBox(
                  width: 6,
                ),
             
                // Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                //   Text(
                //     "Total:75,000\P\K\R",
                //     style: TextStyle(
                //         fontSize: 16,
                //         fontWeight: FontWeight.bold,
                //         color: Colors.black),
                //   ),
                //   Text(
                //     "Recieved:45,000\P\K\R",
                //     style: TextStyle(
                //         fontSize: 16,
                //         fontWeight: FontWeight.bold,
                //         color: Colors.blueAccent),
                //   ),
                // ])
              ]),
        ),
      ),
    );
  }

Widget orderProduct ()

  {
       return Column(
            children: <Widget>[
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
                          'Honda CD70',
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              .copyWith(color: AppColors.primarycolor,fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.center,
              
                children: <Widget>[
                  TextButton(
                    onPressed: () {},
                    child: Text("Price:"+_price.toString(),style:TextStyles.normalFontText2),
                  ),
                  TextButton(
                    onPressed: () {},
                    child:  Text('In Stock:4',style:TextStyles.normalFontText2),
                  ),
                  SizedBox(width:2,),
                  TextButton(
                    onPressed: () {},
                        //Icon(Icons.remove_red_eye),
                        child:Text('   View Product'),
                    
                  ),
                ],
              )
            ]
       
       );
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
          appBar: AppBar(
            title: Text('Orders'),
            backgroundColor:AppColors.primarycolor,
          
          ),
          body: SingleChildScrollView(
                      child: Container(
              padding: EdgeInsets.only(top:10),
              height: SizeConfig.screenHeight,
        color: AppColors.backgroundColor,
        child:Column(
            children: [
                      Card(
                        color: AppColors.backgroundColor,
                        elevation: 4,
                                              child: Row(
                          children: [
                           Column(
                                children: [
                                  Align(
                                                 alignment: Alignment.centerRight,        
                                                              child: Text(
                                      "Order Id:45",
                                      style: TextStyle(color:AppColors.primarycolor,fontSize: 20
                                      ,fontWeight: FontWeight.bold),
                                    
                                    ),
                                  ),
                                  CircleAvatar(
                                    child: ClipOval(
                                      child: Icon(Icons.person),
                                    ),
                                    radius: 32.0,
                                  ),
                                  Text("18//05//21",style:TextStyle(color:AppColors.primarycolor,fontSize: 15))
                                ],
                              ),
                            
                            SizedBox(width: 10,),
                            Column(
                              children: [
                                Text("Buyer Name",style:TextStyle(color:AppColors.primarycolor,fontSize: 15),),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Icon(Icons.gps_fixed),
                                    Text("  location:",style:TextStyle(color:AppColors.primarycolor,fontSize: 15),),
                                  ],
                                )
                              ],
                            ),
                        
                            
                          ],
                        ),
                      ),
                     Text("Product",style:TextStyles.normalFontText,), 
              Card(
                child:orderProduct(),
              ),
              Text("Package:",style:TextStyles.normalFontText,),
              _packagedetail(),
              Text("Buyer Note",style:TextStyles.normalFontText,),
              Container(
               height: MediaQuery.of(context).size.height/8,
               
                decoration: BoxDecoration(
                  color: AppColors.white,
                   boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(8)
                ),
              ),
              Text("",style:TextStyles.normalFontText,),
            ],
        )
      ),
          ),
        
      floatingActionButton:
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          
          FloatingActionButton(
            onPressed: () {
              // Add your onPressed code here!
            },
                child:Icon(Icons.chat_bubble),
              
          ),
          FloatingActionButton.extended(
            onPressed: () {
              // Add your onPressed code here!
            },
            label: const Text('Approve'),
            icon: const Icon(Icons.thumb_up),
            backgroundColor: Colors.greenAccent[400],
          ),
          FloatingActionButton.extended(
            onPressed: () {
              // Add your onPressed code here!
            },
            label: const Text('Decline'),
            icon: const Icon(Icons.thumb_down),
            backgroundColor: Colors.redAccent[400],
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