
<<<<<<< HEAD
import 'package:iqsaat/ui/saller/profile/profile_tab.dart';
import 'package:iqsaat/utils/splashScreen.dart';

=======
import 'package:flutter/material.dart';
import 'package:iqsaat/provider/signup_provider.dart';
import 'package:iqsaat/ui/auth/loginPage.dart';
import 'package:iqsaat/utils/splashScreen.dart';
import 'package:provider/provider.dart';
>>>>>>> main


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
<<<<<<< HEAD
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IQsaat',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    // home: SplashScreen(),
    home: SplashScreen(),
=======
   Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
       // ChangeNotifierProvider.value(value: AppState()),
        ChangeNotifierProvider(create: (_) => RegisterProvider()),
        // ChangeNotifierProvider(create: (_) => SignUpProvider()),
        // ChangeNotifierProvider(create: (_) => CEPProvider()),
        //  ChangeNotifierProvider(create: (_) => PaymentProvider()),
        
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SplashScreen()
          
          ),
>>>>>>> main
    );
  }

}
