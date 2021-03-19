import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:iqsaat/Widget/drawer.dart';
import 'package:iqsaat/Widget/three_dots_icon.dart';
import 'package:iqsaat/models/chat_item.dart';
import 'package:iqsaat/ui/auth/loginPage.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/routes.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iqsaat/Widget/home_screen_row_widget.dart';
import 'package:iqsaat/utils/colors.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:timeago/timeago.dart' as timeago;

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
            HomeScreenRow(text: 'Comming Up Services'),
             Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(5),
                    alignment: Alignment.center,
                    constraints: BoxConstraints.expand(
                        height: 150, width: double.infinity),
                    child: imageSlider(context)),
            
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
                            color: Colors.white,
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
                                            'assets/images/bike.png'),
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
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  Text(
                                    '\$200',
                                    style: TextStyle(color: Colors.black),
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
                          
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                )),
            SizedBox(height: 05),
             Container(
                margin: EdgeInsets.only(top: 05, bottom: 05),
                height: 120,
                //width: 100,
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        margin: EdgeInsets.all(05),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.white,
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
                                width: 100,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/LED.jpg'),
                                        fit: BoxFit.cover))),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 5.0, right: 05, bottom: 05),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Mobiles',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  Text(
                                    '\$200',
                                    style: TextStyle(color: Colors.black),
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
                          
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                )),
            
            HomeScreenRow(text: 'Newest Post'),
              SizedBox(height: 12),

                UserPost(
                  profileimageUrl: chatItems.last.imageUrl,
                  title:
                      "Farhan Ali  \u27A1  Northern Florida Regional Tournament",
                  description:
                      "Rent Honda BRV, Toyota Corolla, Toyota Yaris, Honda Civic in Islamabad with driver for your city and intercity car rental requirements.\n Honda BRV: 5,000/day in Islamabad & 6,000/day outside Islamabad",
                  imageUrl: "assets/images/car1.webp",
                ),
                SizedBox(height: 12),
                 UserPost(
                  profileimageUrl: chatItems.first.imageUrl,
                  title: "Dan Jordan",
                  description:
                      "2015 - 86,000 km \n2015 Model Honda Civic UG 1.8 Vti Oriel Prosmatec Full Option Rebirth",
                  imageUrl: "assets/images/image.webp",
                ),
                SizedBox(height: 12),
                 UserPost(
                  profileimageUrl: chatItems.last.imageUrl,
                  title:
                      "Farhan Ali  \u27A1  Northern Florida Regional Tournament",
                  description:
                      "Rent Honda BRV, Toyota Corolla, Toyota Yaris, Honda Civic in Islamabad with driver for your city and intercity car rental requirements.\n Honda BRV: 5,000/day in Islamabad & 6,000/day outside Islamabad",
                  imageUrl: "assets/images/car1.webp",
                ),

             




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
  Swiper imageSlider(context) {
  return new Swiper(
    autoplay: true,
    itemBuilder: (BuildContext context, int index) {
      return new Image.network(
        "https://lahorerealestate.com/wp-content/uploads/2019/11/DHA-Bahawalpur-Installment-Plots-Balloting-2019.jpg",
        // fit: BoxFit.fitHeight,
      );
    },
    itemCount: 10,
    viewportFraction: 0.75,
    scale: 1,
  );
}



class UserPost extends StatelessWidget {
  final String profileimageUrl;
  final String title;
  final String description;
  final String imageUrl;
  const UserPost({
    Key key,
    @required this.profileimageUrl,
    @required this.title,
    @required this.description,
    @required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.greyBackground.withOpacity(0.4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.all(4.0),
              child: AspectRatio(
                aspectRatio: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(200),
                  child: CachedNetworkImage(
                    imageUrl: profileimageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            title: Text(
               title,
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(
                timeago.format(
                  DateTime.now().subtract(
                    Duration(minutes: 43),
                  ),
                ),
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            trailing: Container(
              width: 30,
              child: ThreeDotsIcon(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 4,
            ),
            child: Text( description),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(imageUrl),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              bottom: 12,
              top: 12,
            ),
            child: Text(
              "View Complete Post",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 14,
              ),
            ),
          )
        ],
      ),
    );
  }
}