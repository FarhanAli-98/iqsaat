import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:iqsaat/Widget/drawer.dart';
import 'package:iqsaat/ui/auth/loginPage.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/routes.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

double width, height;

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  TextEditingController _searchController = TextEditingController();
  String _mapStyle;
  String selectedName = '';
  bool isIamHereIsRight = false;
  var longitude, latitude;
  bool isChipSelected = false;
  String uid;
  double lat, long;
  bool locationConformed = false;
  String chatId = '';

 
  @override
  void initState() {
    super.initState();


  }


  @override
  Widget build(BuildContext context) {


    buildSearchField() {
      return GestureDetector(
        onTap: () => AppRoutes.push(context, LoginPage()),
        child: Container(
          margin: EdgeInsets.only(right: 10, bottom: 5),
          padding: EdgeInsets.only(right: 15, left: 15),
          width: width * 0.8,
          height: height * 0.06,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 10,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Search',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              Icon(
                Icons.search,
                color: Colors.grey,
                size: 30,
              ),
             
            ],
          ),
        ),
      );
    }

    Widget buildAppar() {
      return Container(
        width: width,
        height: height * 0.1,
        padding: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(gradient: AppColors.appBar),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Builder(
                    builder: (context) => InkWell(
                          onTap: () {
                            Scaffold.of(context).openDrawer();
                          },
                          child: Container(
                            //width: 55,
                            // height: 30,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    spreadRadius: 2,
                                    blurRadius: 10,
                                  ),
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(50),
                                    topRight: Radius.circular(50))),
                            child: Image.asset(
                              'assets/appIcons/menu.png',
                              width: 50,
                              height: 50,
                            ),
                          ),
                        )),
                buildSearchField(),
              ],
            ),
          ],
        ),
      );
    }

   
   
   

  

    _body() {
      return Container(
        width: width,
        height: height,
        child: Stack(
          children: <Widget>[
          buildAppar(),
           Text("This is user Page")
  
          ],
        ),
      );
    }

    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        drawer: DrawerFull(context, MediaQuery.of(context).size),
        body: _body(),
      ),
    );
  }

 
 }

