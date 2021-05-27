import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:iqsaat/Widget/appBar.dart';
import 'package:iqsaat/drawer.dart';
import 'package:iqsaat/Widget/three_dots_icon.dart';
import 'package:iqsaat/ui/Buyer/product_card.dart';
import 'package:iqsaat/ui/Buyer/product_categories.dart';
import 'package:iqsaat/ui/Product/products.dart';
import 'package:iqsaat/ui/Seller/create_Ads/CreateProducts/selectCategory.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/Widget/home_screen_row_widget.dart';
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
    const _Example01Tile(Colors.green, Icons.category, "AllCategory"),
    const _Example01Tile(Colors.amber, Icons.mobile_friendly, "mobile"),
    const _Example01Tile(Colors.deepOrange, Icons.computer, "computer"),
    const _Example01Tile(Colors.indigo, Icons.house, "house"),
    const _Example01Tile(Colors.pink, Icons.home_repair_service, "home"),
    const _Example01Tile(Colors.purple, Icons.business, "business"),
    const _Example01Tile(Colors.blue, Icons.bike_scooter, "bike"),
    const _Example01Tile(Colors.blue, Icons.room_service, "service"),
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    

    _body() {
      return SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          height: double.maxFinite,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(),
          child: Column(children: [
            Categories(indexs:0),

          //  SizedBox(height: 5),
            HomeScreenRow(text: 'Comming Up '),
            // SizedBox(
            //   height: 5,
            // ),

            Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(5),
                alignment: Alignment.center,
                constraints:
                    BoxConstraints.expand(height: 170, width: double.maxFinite),
                child: imageSlider(context)),
            // SizedBox(
            //   height: 10,
            // ),


            HomeScreenRow(text: 'Categories'),
            SizedBox(
              height: 10,
            ),


            Container(
              height:250,
              width: width,
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

            
            HomeScreenRow(text: 'Ads gven blew'),
            SizedBox(
              height: 10,
            ),
             Container(
               height: height,
              width: width,
               child: GridView.builder(
                   itemCount: products.length,
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                     crossAxisCount: 2,
                     mainAxisSpacing:5.0,
                     crossAxisSpacing: 10.0,
                     childAspectRatio: 0.75,
                   ),
                   itemBuilder: (context, index) => ItemCard(
                         product: products[index],
                         press: () => Navigator.push(
                             context,
                             MaterialPageRoute(
                               builder: (context) => CreateProducts(
                                
                               ),
                             )),
                       )),
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
        
        appBar: appBarUserSide(context,"Custome Side"),
       
        body: _body(),
      ),
    );
  }
}

Swiper imageSlider(context) {
  return new Swiper(
    autoplay: true,
    itemBuilder: (BuildContext context, int index) {
      return Image.network(
        "https://assetscdn1.paytm.com/images/catalog/view_item/646586/1600422816487.jpg",
         fit: BoxFit.fitWidth,
      );
    },
    itemCount: 3,
    viewportFraction: 1,
    scale: 1,
  );
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
                padding: const EdgeInsets.only(top: 20.0),
                child: Icon(
                  iconData,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              Text(
                title,
                style: TextStyle(color: Colors.white, fontSize: 13),
              )
            ],
          ),
        ),
      ),
    );
  }
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
 // UserPost(
            //   profileimageUrl: chatItems.last.imageUrl,
            //   title: "Farhan Ali  \u27A1  Township Lahore, Punjab",
            //   description:
            //       "Rent Honda BRV, Toyota Corolla, Toyota Yaris, Honda Civic in Islamabad with driver for your city and intercity car rental requirements.\n Honda BRV: 5,000/day in Islamabad & 6,000/day outside Islamabad",
            //   imageUrl: "assets/images/car1.webp",
            // ),
            // SizedBox(height: 12),
            // UserPost(
            //   profileimageUrl: chatItems.first.imageUrl,
            //   title: "Abdul hannan",
            //   description:
            //       "2015 - 86,000 km \n2015 Model Honda Civic UG 1.8 Vti Oriel Prosmatec Full Option Rebirth",
            //   imageUrl: "assets/images/image.webp",
            // ),
            // SizedBox(height: 12),
            // UserPost(
            //   profileimageUrl: chatItems.last.imageUrl,
            //   title: "Farhan Ali  \u27A1  Township Lahore, Punjab",
            //   description:
            //       "Rent Honda BRV, Toyota Corolla, Toyota Yaris, Honda Civic in Islamabad with driver for your city and intercity car rental requirements.\n Honda BRV: 5,000/day in Islamabad & 6,000/day outside Islamabad",
            //   imageUrl: "assets/images/car1.webp",
            // ),