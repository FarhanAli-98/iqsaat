import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/tab_bar.dart';
import 'package:iqsaat/ui/Seller/Orders/Acceptedorders.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'BuyerOrder.dart';

class ordersTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child:tabview(
          
          tab1:   buyer_orders(),
           tab2: accepted_orders(),
            title: "Orders Main", 
            tabtitle1: "Recieved",
             tabtitle2: "Accepted")
      ),
    );
  }
}