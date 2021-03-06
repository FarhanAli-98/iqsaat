import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:flutter/material.dart';
import '../Orders/BuyerOrder.dart';
import './active_customers.dart';

class Customers extends StatefulWidget {
  @override
  bool ongoing=true;
  Customers(bool ongoing)
  {
    this.ongoing=ongoing;
  }
  _CustomersState createState() => _CustomersState(ongoing);
}

class _CustomersState extends State<Customers> {
  bool _ongoing=true;
  
  
  _CustomersState(bool ongoing)
  {
    this._ongoing=ongoing;
    
    
  }
  @override
  Widget build(BuildContext context) {
    //  return Scaffold(
    //     appBar: AppBar(
    //       title:Text( "Customers"),
    //       backgroundColor: Colors.blue[100],

    //     ),


    return Container(
      
      child: body(context),
    );
  }

  Widget body(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          
          

          Align(
            
              alignment: Alignment.centerLeft,
              child:_ongoing ? Text(
                '   Active Customers',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ):
                Text(
                '   Installments Completed',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              )
              ,
          SizedBox(
            height: 10,
          ),
         _ongoing ? Container(
            height: MediaQuery.of(context).size.height/1.4,
            
            child:ListView.builder(
              itemBuilder: (BuildContext context, int inedx) {
               return  active_customers(true);
               

              },
              itemCount: 5,
              scrollDirection: Axis.vertical,
            ),
          )
          :
          Container(
            height: MediaQuery.of(context).size.height/1.4,
            child:ListView.builder(
              itemBuilder: (BuildContext context, int inedx) {
               return  active_customers(false);
               

              },
              itemCount: 5,
              scrollDirection: Axis.vertical,
            ),
          ),
        ],
      ),
    );
  }
}
