import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/appBar.dart';
import 'package:iqsaat/Widget/orderscard.dart';
import 'package:iqsaat/ui/Seller/Orders/ordersDetail.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/routes.dart';
import 'package:iqsaat/utils/styles.dart';

class buyer_orders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // appBar: appBarwithbackIcon(context,"Accepted Orders"),
          body: buildInkWell(context),

    );
  }

  InkWell buildInkWell(BuildContext context) {
    return InkWell(
       onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        orderDetails()));
                          },

 child: Container(
         child:ListView.builder(
           itemCount: 5,
          
itemBuilder: (context, index)
{
     
       return Container(
         margin: EdgeInsets.only(right:20,left:20,top:13,bottom:13),
         decoration: BoxStyles.deco,
         child:InkWell(

           onTap:(){
            AppRoutes.push(context, orderDetails());
           }
           ,
               child:ordersCard(
                 status: false,
                 prodname: "Samsung A71",
                 personname: "Usama",
                 price:47000,
                 date: DateTime.now(),
                 plan:"Monthly"
                 
                 ),
         ));
      
}

         
         
         
         ),




 )


 
 );
  }

 
  }
