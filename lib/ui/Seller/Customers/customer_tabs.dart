import 'package:flutter/material.dart';
import './Customers_main.dart';


class customersTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text:"Ongoing"),
                Tab(text:"Finished"),
              ],
            ),
            title: Text('Customers Main'),
          ),
          body: TabBarView(
            children: [
              Customers(),
              Icon(Icons.directions_transit),
            ],
          ),
        ),
      ),
    );
  }
}