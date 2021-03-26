import 'package:flutter/material.dart';
import 'package:iqsaat/ui/splashScreen.dart';
void main() {
  runApp(MyApp());
}
//Hive Data temper database 
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
    );
  }
}

