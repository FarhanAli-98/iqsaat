import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/tab_bar.dart';
import 'package:iqsaat/ui/Seller/Orders/Acceptedorders.dart';
import 'BuyerOrder.dart';

class OrdersTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child:tabview(
          
          tab1:   Buyer_orders(),
           tab2: Accepted_orders(),
            title: "Orders Main", 
            tabtitle1: "Recieved",
             tabtitle2: "Accepted")
      ),
    );
  }
}