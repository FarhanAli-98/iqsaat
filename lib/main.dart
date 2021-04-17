import 'package:flutter/material.dart';
import 'package:iqsaat/ui/saller/create_Ads/create_adds.dart';
import 'package:iqsaat/ui/saller/home/dashboard.dart';
import 'package:iqsaat/ui/saller/profile/profile_tab.dart';


void main() {
  runApp(MyApp());
}
//Hive Data temperary  database 
//roles
//
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IQsaat',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    // home: SplashScreen(),
     home: ProfileTab(),
    );
  }
}

