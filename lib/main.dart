import 'package:flutter/material.dart';
import 'package:iqsaat/ui/saller/create_Ads/grid.dart';
import 'package:iqsaat/ui/user/system/splashScreen.dart';

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
     home: SplashScreen(),
    // home: Example01(),
    );
  }
}

