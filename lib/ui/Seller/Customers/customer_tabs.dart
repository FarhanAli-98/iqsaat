import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/tab_bar.dart';
import 'package:iqsaat/utils/app_colors.dart';
import './Customers_main.dart';
import './active_customers.dart';


class customersTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child:tabview(
          
          tab1: Customers(true),
           tab2: Customers(false),
            title: "Customers Main", 
            tabtitle1: "Ongoing",
             tabtitle2: "Finished")
      ),
    );
  }
}