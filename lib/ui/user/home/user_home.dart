import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:iqsaat/Widget/rounded_outline_button%20copy.dart';
import 'package:iqsaat/drawer.dart';
import 'package:iqsaat/Widget/three_dots_icon.dart';
import 'package:iqsaat/models/chat_item.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/Widget/home_screen_row_widget.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'mapview.dart';

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
  List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
   StaggeredTile.extent(1, 100.0),
    StaggeredTile.extent(1, 100.0),
  StaggeredTile.extent(1, 100.0),
  StaggeredTile.extent(1, 100.0),
  StaggeredTile.extent(1, 100.0),
  StaggeredTile.extent(1, 100.0),
  StaggeredTile.extent(1, 100.0),
  StaggeredTile.extent(1, 100.0),
];

List<Widget> _tiles = const <Widget>[
 
  const _Example01Tile(Colors.green, Icons.car_rental,"car"),
  const _Example01Tile(Colors.amber, Icons.mobile_friendly,"mobile"),
  const _Example01Tile(Colors.deepOrange, Icons.computer,"computer"),
  const _Example01Tile(Colors.indigo, Icons.house,"house"),
  const _Example01Tile(Colors.pink, Icons.home_repair_service,"home"),
  const _Example01Tile(Colors.purple, Icons.business,"business"),
  const _Example01Tile(Colors.blue, Icons.bike_scooter,"bike"),
  const _Example01Tile(Colors.blue, Icons.room_service,"service"),
];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
            HomeScreenRow(text: 'Comming Up '),
             SizedBox(
              height: 20,
            ),
            
            Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(5),
                alignment: Alignment.center,
                constraints:
                    BoxConstraints.expand(height: 150, width: double.infinity),
                child: imageSlider(context)),
           SizedBox(
              height: 20,
            ),
            
             HomeScreenRow(text: 'Services'),
           SizedBox(
              height: 20,
            ),
            
            Container(
              height: 200,
              width: 400,
              child: Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: StaggeredGridView.count(
                crossAxisCount: 4,
                staggeredTiles: _staggeredTiles,
                children: _tiles,
                mainAxisSpacing: 3.0,
                crossAxisSpacing: 3.0,
                padding: const EdgeInsets.all(2.0),
              )),
            ),
         
            
         
            SizedBox(height: 20),
             HomeScreenRow(text: 'Ads'),
              SizedBox(
              height: 20,
            ),
            
            UserPost(
              profileimageUrl: chatItems.last.imageUrl,
              title: "Farhan Ali  \u27A1  Township Lahore, Punjab",
              description:
                  "Rent Honda BRV, Toyota Corolla, Toyota Yaris, Honda Civic in Islamabad with driver for your city and intercity car rental requirements.\n Honda BRV: 5,000/day in Islamabad & 6,000/day outside Islamabad",
              imageUrl: "assets/images/car1.webp",
            ),
            SizedBox(height: 12),
            UserPost(
              profileimageUrl: chatItems.first.imageUrl,
              title: "Abdul hannan",
              description:
                  "2015 - 86,000 km \n2015 Model Honda Civic UG 1.8 Vti Oriel Prosmatec Full Option Rebirth",
              imageUrl: "assets/images/image.webp",
            ),
            SizedBox(height: 12),
            UserPost(
              profileimageUrl: chatItems.last.imageUrl,
              title: "Farhan Ali  \u27A1  Township Lahore, Punjab",
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
               onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (c) => Mapview())),
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
                    'USER',
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
            child: Text(description),
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

class SearchAppBar extends StatefulWidget {
  final TextEditingController controller;
  final VoidCallback onTap;

  const SearchAppBar({Key key, this.controller, this.onTap}) : super(key: key);

  @override
  _SearchAppBarState createState() => _SearchAppBarState();
}

class _SearchAppBarState extends State<SearchAppBar> {
  bool filtered = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Material(
          elevation: 4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AnimatedContainer(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOutCubic,
                alignment: Alignment.center,
                color: Colors.white,
                height: 50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    AppBar(
                      leading: IconButton(
                        icon: Icon(
                          Icons.filter_list,
                          color: filtered
                              ? AppColors.primarycolor
                              : Colors.black54,
                        ),
                        onPressed: () {
                          filtered = !filtered;
                          setState(() {});
                        },
                      ),
                      title: TextField(
                        controller: widget.controller,
                        decoration: InputDecoration(
                          hintText: "Search students, events and more",
                          hintStyle: TextStyle(color: Colors.black54),
                        ),
                      ),
                      actions: <Widget>[
                        AspectRatio(
                          aspectRatio: 1,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.black38,
                                borderRadius: BorderRadius.circular(6)),
                            margin: EdgeInsets.symmetric(
                              horizontal: 14,
                              vertical: 14,
                            ),
                            child: IconButton(
                              padding: EdgeInsets.zero,
                              icon: Icon(
                                Icons.close,
                                size: 18,
                                color: Colors.white,
                              ),
                              onPressed: widget.onTap,
                            ),
                          ),
                        )
                      ],
                    ),
                    if (filtered)
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Expanded(
                                child: RoundedOutlineButton(
                                  borderRadius: 6,
                                  widthRatio: 0.0,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  onTap: () {},
                                  text: "Students",
                                ),
                              ),
                              SizedBox(width: 6),
                              Expanded(
                                child: RoundedOutlineButton(
                                  borderRadius: 6,
                                  widthRatio: 0.0,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  onTap: () {},
                                  text: "Events",
                                ),
                              ),
                              SizedBox(width: 6),
                              Expanded(
                                child: RoundedOutlineButton(
                                  borderRadius: 6,
                                  widthRatio: 0.0,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  onTap: () {},
                                  text: "Universities",
                                ),
                              ),
                              SizedBox(width: 6),
                              Expanded(
                                child: RoundedOutlineButton(
                                  borderRadius: 6,
                                  widthRatio: 0.0,
                                  fontSize: 13,
                                  fontWeight: FontWeight.normal,
                                  onTap: () {},
                                  text: "Businesses",
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
class _Example01Tile extends StatelessWidget {
  const _Example01Tile(this.backgroundColor, this.iconData, this.title);

  final Color backgroundColor;
  final IconData iconData;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: InkWell(
        onTap: () {},
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: Icon(
                  iconData,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              Text(title,style: TextStyle(color: Colors.white,fontSize: 13),)
            ],
          ),
        ),
      ),
    );
  }
}
