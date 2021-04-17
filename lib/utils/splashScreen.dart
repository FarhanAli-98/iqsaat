import 'dart:async';
import 'package:flutter/material.dart';
import 'package:iqsaat/utils/app_colors.dart';

import '../ui/auth/loginPage.dart';


class SplashScreen extends StatefulWidget {
  // final String role;
  // SplashScreen({@required this.role});
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  check() {
  print("we are in splash Screen");
     return LoginPage();
    // print("splash screen = " + role);
    // if (role == "0") {
    //   return LoginPage();
    // } else if (role == "consumer") {
    //   return LoginPage();
    // } else if (role == "advertiser") {
    //   return LoginPage();
    // }
  }

  @override
  void initState() {
    super.initState();
    Timer(
        Duration(milliseconds: 4500),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => check())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(gradient: AppColors.background),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: 'logo',
                child: Container(
                 // height: 800,
                  width: 500,
                  child: Image.asset(
                    'assets/appIcons/iqsaat.jpeg',
                  ),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
