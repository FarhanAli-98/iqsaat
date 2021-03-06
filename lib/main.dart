import 'package:iqsaat/provider/shop_provider.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:iqsaat/provider/login_provider.dart';
import 'package:iqsaat/provider/signup_provider.dart';
import 'package:iqsaat/utils/splashScreen.dart';
import 'package:provider/provider.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'hive/user_box.dart';
import 'provider/ads_provider.dart';
import 'provider/category_provider.dart';
import 'provider/order_provider.dart';
import 'provider/userProvider.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'dart:async';
String role;
UserBox res;
String owerid;
Box<dynamic> boxUser;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDir = await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);
  Hive.registerAdapter(UserBoxAdapter());
  boxUser = await Hive.openBox("user");
  print("Length  = = " + boxUser.length.toString());
  if (boxUser.length == 0) {
    print('saving role to 0');
    role = boxUser.length.toString();
  } else {
    res = boxUser.get(0) as UserBox;
    print(res.role);
    role = res.role;
    print(role);
  }
  runApp(MyApp(role));
}

class MyApp extends StatefulWidget {
  final String role;
  MyApp(this.role);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => RegisterProvider()),
        ChangeNotifierProvider(create: (_) => LoginProvider()),
        ChangeNotifierProvider(create: (_) => ShopProvider()),
        ChangeNotifierProvider(create: (_) => AdsProvider()),
        ChangeNotifierProvider(create: (_) => UserProvider()),
        ChangeNotifierProvider(create: (_) => CategoryProvider()),
        ChangeNotifierProvider(create: (_) => OrderProvider()),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false, //home: CompanyProfile()
          builder: EasyLoading.init(),
          home: FutureBuilder(
            future: Hive.openBox("user"),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError)
                  return Text(snapshot.error.toString());
                else
                 // return SellerHomePage();
                return SplashScreen(role: widget.role);
              } else
                return Scaffold();
            },
          )),
    );
  }

  @override
  void dispose() {
    Hive.close();
    super.dispose();
  }
}
