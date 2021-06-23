import 'package:iqsaat/provider/shopProvider.dart';
import 'package:iqsaat/ui/buyer/brands/brand_details.dart';
import 'package:iqsaat/ui/buyer/brands/brands_screen.dart';
import 'package:iqsaat/ui/buyer/home/home.dart';
import 'package:iqsaat/utils/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:iqsaat/provider/login_provider.dart';
import 'package:iqsaat/provider/signup_provider.dart';
import 'package:provider/provider.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'hive/user_box.dart';
import 'provider/adsProvider.dart';
import 'provider/categoryProvider.dart';
import 'provider/userProvider.dart';

String role;
UserBox res;
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
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false, //home: CompanyProfile()
          home: FutureBuilder(
            future: Hive.openBox("user"),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                print(snapshot.data.toString());
                if (snapshot.hasError)
                  return Text(snapshot.error.toString());
                else
                //return BrandDetailsScreen();
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

