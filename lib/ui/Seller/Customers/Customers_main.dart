import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:flutter/material.dart';
import '../Orders/BuyerOrder.dart';
import './active_customers.dart';

class Customers extends StatefulWidget {
  @override
  _CustomersState createState() => _CustomersState();
}

class _CustomersState extends State<Customers> {
  @override
  Widget build(BuildContext context) {
    //  return Scaffold(
    //     appBar: AppBar(
    //       title:Text( "Customers"),
    //       backgroundColor: Colors.blue[100],


    //     ),

        return Container
        (
            child:body(context),
      );
      
  }
  Widget body(BuildContext context
  )
  {
      return Column(
         mainAxisAlignment: MainAxisAlignment.start,
         children: <Widget>
         [
           SizedBox(
              height: 10,
            ),
           Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '   Recent Orders',
                  style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),
                )),
           
            SizedBox(
              height: 10,
            ),
               Container(
                 height: 170,
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Buyers_Order();
                },
                itemCount: 5,
                scrollDirection: Axis.horizontal,
              ),
            ),
            SizedBox(
              height: 10,
            ),
             Align(
                alignment: Alignment.centerLeft,
                
                child: Text(
                  '   Active Customers',
                  style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),
                )),
           
            SizedBox(
              height: 10,
            ),
            Container(
              height: 350,
              child: ListView.builder(
                  itemBuilder: (BuildContext context, int inedx) {
                    return active_customers();
                  },
                  itemCount: 5,
                  scrollDirection: Axis.vertical,
                ),
            ),
          
         ],
       );
  }
}

