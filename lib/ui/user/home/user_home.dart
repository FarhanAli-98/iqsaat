import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:iqsaat/Widget/drawer.dart';
import 'package:iqsaat/ui/auth/loginPage.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/routes.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iqsaat/Widget/home_Screen_listview.dart';
import 'package:iqsaat/Widget/home_screen_row_widget.dart';
import 'package:iqsaat/utils/colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

double width, height;

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  // TextEditingController _searchController = TextEditingController();
  // String _mapStyle;
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

    // ignore: unused_element
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
        padding: EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(),
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: 20),
            HomeScreenRow(text: 'My Active orders'),
            Container(
              height: 140,
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      margin: EdgeInsets.only(
                          top: 10, right: 20, bottom: 10, left: 10),
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                      height: 120,
                      width: 360,
                      decoration: BoxDecoration(
                          color: AppColor.fillColor.withOpacity(0.58),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                                color: AppColor.green.withOpacity(.2),
                                // offset: Offset(5, -10),
                                spreadRadius: 3,
                                blurRadius: 5),
                          ]),
                      child: Row(
                        children: [
                          Expanded(
                              flex: 2,
                              child: Image.asset('assets/images/laptop1.jpg')),
                          Expanded(
                              flex: 5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Align(
                                      alignment: Alignment.topRight,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 05),
                                        child: Text('Salls Session',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12)),
                                      )),
                                  Text(
                                    'Laptop 7th Generation',
                                    style: TextStyle(
                                        color: AppColor.textBlue, fontSize: 20),
                                  ),
                                  Text(
                                    '\$2666',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 08,
                                  ),
                                  //HomeScreenWidget(),
                                ],
                              )),
                        ],
                      ),
                    ),
                  );
                },
                scrollDirection: Axis.horizontal,
                itemCount: 3,
              ),
            ),
            SizedBox(height: 05),
            HomeScreenRow(
              text: 'Popular Services',
            ),
            Container(
                margin: EdgeInsets.only(top: 05, bottom: 05),
                height: 130,
                //width: 100,
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        margin: EdgeInsets.all(05),
                        height: 130,
                        width: 130,
                        decoration: BoxDecoration(
                            color: AppColor.fillColor.withOpacity(0.58),
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  color: AppColor.green.withOpacity(.2),
                                  // offset: Offset(5, -10),
                                  spreadRadius: 3,
                                  blurRadius: 5),
                            ]),
                        child: Column(
                          children: [
                            Container(
                                height: 75,
                                width: 120,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/phone1.jpg'),
                                        fit: BoxFit.cover))),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 5.0, right: 05, bottom: 05),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Mobiles Phones',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    '\$200',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 5.0, right: 05),
                              child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Icon(
                                    FontAwesomeIcons.heart,
                                    color: Colors.red,
                                    size: 10,
                                  )),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 05),
                              height: 02,
                              width: 100,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [Colors.blue, Colors.green])),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                )),
            SizedBox(height: 05),
            HomeScreenRow(text: 'Popular Artist'),
            Container(
                margin: EdgeInsets.only(top: 05),
                height: 150,
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.only(
                        left: 10,
                      ),
                      height: 150,
                      width: 130,
                      decoration: BoxDecoration(
                        color: AppColor.fillColor.withOpacity(0.35),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15)),
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/23.png'),
                                      fit: BoxFit.cover)),
                              child: Padding(
                                padding: EdgeInsets.only(top: 05, right: 05),
                                child: Align(
                                    alignment: Alignment.topRight,
                                    child: Icon(
                                      FontAwesomeIcons.heart,
                                      color: Colors.white,
                                      size: 15,
                                    )),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 8.0,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Ed Shreen',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.only(top: 03, bottom: 03),
                                    height: 12,
                                    width: 65,
                                    decoration: BoxDecoration(
                                        color: AppColor.green,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Center(
                                      child: Text(
                                        'Singer',
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Fee- \$500',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset('assets/images/star.png'),
                                      Text(
                                        '205  ',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  Container(
                                      height: 02,
                                      width: 115,
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(colors: [
                                        Colors.blue,
                                        Colors.green
                                      ]))),
                                ],
                              ),
                            )
                          ]),
                    );
                  },
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                )),
            Container(
              margin: EdgeInsets.only(top: 08),
              padding: EdgeInsets.all(10),
              height: 120,
              width: 335,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColor.fillColor.withOpacity(0.5),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Invite Friends and Get Upto \$100',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    'Introduce your friends to fastest way\n                to get things done',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 08),
                    height: 30,
                    width: 110,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColor.green),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Invite Friends',
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 05),
            HomeScreenRow(text: 'My Custom Offer'),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.only(top: 05, left: 08, right: 08),
              height: 150,
              width: 340,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColor.fillColor.withOpacity(0.5),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Image.asset(
                            'assets/images/ab-pic.png',
                            height: 70,
                          )),
                      Expanded(
                          flex: 4,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Hair Style',
                                    style: TextStyle(
                                        color: AppColor.textBlue, fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 05,
                                  ),
                                  Text(
                                    '\$26',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              //HomeScreenWidget()
                            ],
                          ))
                    ],
                  ),
                  Container(
                    height: 0.5,
                    width: 350,
                    color: AppColor.green,
                  ),
                  SizedBox(
                    height: 08,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Offer Valid At All Times. Lucky You!',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 16,
                            width: 76,
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColor.green),
                              borderRadius: BorderRadius.circular(05),
                            ),
                            child: Center(
                                child: Text(
                              'Open In chat',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            )),
                          ),
                          SizedBox(height: 10),
                          Container(
                            height: 16,
                            width: 76,
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColor.textBlue),
                              borderRadius: BorderRadius.circular(05),
                            ),
                            child: Center(
                                child: Text(
                              'Review',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            )),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 05),
            HomeScreenRow(text: 'Recently Saved'),
            Container(
                margin: EdgeInsets.only(top: 10, right: 10),
                height: 130,
                width: 350,
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return HomeScreenListView();
                  },
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                )),
            SizedBox(height: 05),
            HomeScreenRow(text: 'Inspired by Your Browsing History'),
            Container(
                margin: EdgeInsets.only(top: 10, right: 10),
                height: 130,
                width: 350,
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return HomeScreenListView();
                  },
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                ))
          ]),
        ),
      );
    }

    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        drawer: DrawerFull(context, MediaQuery.of(context).size),
         appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(
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
                              blurRadius: 10,
                              spreadRadius: 5,
                              color: Colors.black12)
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

        actions: <Widget>[
          GestureDetector(
              onTap: (){}, 
              child: Container(
                margin: EdgeInsets.only(right: 13),
                child: Image.asset(
                  'assets/appIcons/offlineVector.png',
                  width: 33,
                  height: 24,
                ),
              ))
        ],
        title: Row(
          children: <Widget>[
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/appIcons/image47.png'),
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Farhanja Ali',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                Text(
                  'TFDD',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ],
            )
          ],
        ),
      ),
      
        body: _body(),
      ),
    );
  }
}
