import 'dart:async';
import 'package:flutter/material.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import '../ui/auth/loginPage.dart';
import 'package:page_transition/page_transition.dart';

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
    return MaterialApp(
        title: 'Clean Code',
        home: AnimatedSplashScreen(
          duration: 5000,
          splash:  Container(
                height: 160,
                width: 170,
                child: Image.asset(
                  'assets/appIcons/iqsaat.jpeg',
                   scale: 0.01,
                ),
              ),
           nextScreen: LoginPage(),
          splashTransition: SplashTransition.slideTransition,
          pageTransitionType: PageTransitionType.scale,
         // backgroundColor: Colors.blue
        )
    );
      // backgroundColor: AppColors.background,
      // body: SingleChildScrollView(
      //   child: Container(
      //     height: MediaQuery.of(context).size.height,
      //     width: MediaQuery.of(context).size.width,
      //     decoration: BoxDecoration(gradient: AppColors.background),
      //     child: Center(
      //         child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: <Widget>[
      //         Hero(
      //           tag: 'logo',
      //           child: Container(
      //            // height: 800,
      //             width: 500,
      //             child: Image.asset(
      //               'assets/appIcons/iqsaat.jpeg',
      //             ),
      //           ),
      //         ),
      //       ],
      //     )),
      //   ),
      // ),
  
  
  
    
  }
}
