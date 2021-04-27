import 'dart:async';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:iqsaat/ui/saller/profile/shop_profile.dart';
import 'package:iqsaat/ui/user/home/user_home.dart';
import '../ui/auth/loginPage.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  final String role;
  SplashScreen({@required this.role});
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

    check(String role) {
    print("splash screen = " + role);
    if (role == null || role == '0') {
      print("roll null Store");
      return LoginPage();
    } else if (role == "buyer") {
       return HomePage();
    } else if (role == "seller") {
      return ShopProfile();
      /* if (res.comapnyId == null) {
        print(res.comapnyId);
        print('comapny id null');
        return CompanyProfile();
      } else if (res.adLength == null || res.adLength <= 0) {
        print(res.adLength);
        print('ad was null');
        return AddAdvertisementPage();
      } else if (res.paid == false) {
        print(res.paid);
        print('not paid');
        return SubscriptionPage();
      } else 
      {
        
      }*/
    }
  }

  @override
  void initState() {
    super.initState();
    Timer(
        Duration(milliseconds: 4500),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => check(widget.role))));
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
