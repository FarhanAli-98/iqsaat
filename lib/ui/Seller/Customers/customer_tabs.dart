import 'package:flutter/material.dart';
import 'package:iqsaat/models/notification.dart';
import 'package:iqsaat/utils/app_colors.dart';
import './Customers_main.dart';
import './active_customers.dart';


class customersTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            elevation: 5.0,
            backgroundColor: Colors.white,
            bottom: TabBar(
              labelColor: AppColors.primarycolor,
              tabs: [
                Tab(text:"Ongoing",),
                Tab(text:"Finished"),
              ],
            ),
            title: Text('Customers Main',style:TextStyle(color: AppColors.primarycolor)),
            actions:<Widget>
            [
              
              GestureDetector(child: Icon(Icons.notifications_active),
              onTap: (){},),
              SizedBox(width: 4,),
             GestureDetector(child: Icon(Icons.message),
              onTap: (){},),
            ]
          ),
          body: TabBarView(
            children: [
              Customers(true),
              Customers(false),
            ],
          ),
        ),
      ),
    );
  }
}