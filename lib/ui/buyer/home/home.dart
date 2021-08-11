import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:iqsaat/Widget/appBar.dart';
import 'package:iqsaat/Widget/data_patterns/product_slider.dart';
import 'package:iqsaat/Widget/slider/category_slider.dart';
import 'package:iqsaat/Widget/slider/home_slider.dart';
import 'package:iqsaat/Widget/slider/product_slider.dart';
import 'package:iqsaat/drawer.dart';
import 'package:iqsaat/provider/adsProvider.dart';
import 'package:iqsaat/ui/buyer/brands/brands_screen.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/images.dart';
import 'package:iqsaat/utils/routes.dart';
import 'package:provider/provider.dart';

import '../../../main.dart';

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
  bool isSearching = false;
  AdsProvider adsProvider;
  double width, height;

//Functions
  getAllRendomAds() {
    Provider.of<AdsProvider>(context, listen: false)
        .fetchedAds()
        .then((value) => ({
     
            }));
  }

  void initState() {
    super.initState();
    getAllRendomAds();
  }

  @override
  Widget build(BuildContext context) {
    adsProvider = Provider.of<AdsProvider>(context);
    _body(BuildContext context) {
      return SingleChildScrollView(
        child: // adsProvider.getAllAds.data==null? CircularProgressIndicator():
            Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CustomCarouselSlider(),
              SizedBox(
                height: 15,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SliderHeading(
                    headingString: "All Category",
                    press: () {
                      AppRoutes.push(context, BrandsScreen());
                    },
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 70,
                child: ListView.separated(
                    separatorBuilder: (_, i) {
                      return SizedBox(
                        width: 15,
                      );
                    },
                    itemCount: allBrandsImages.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, i) {
                      return Padding(
                        padding: i == 0
                            ? const EdgeInsets.only(left: 10)
                            : const EdgeInsets.only(left: 0.0),
                        child: Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(500),
                          ),
                          child: Container(
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(500),
                                color: Colors.grey[300]),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(500),
                                child: InkWell(
                                  onTap: () {},
                                  borderRadius: BorderRadius.circular(500),
                                  child: Image.asset(
                                    allBrandsImages[i],
                                    fit: BoxFit.fill,
                                  ),
                                )),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 15,
              ),
              ProductSlider(
                heading: "New Phones",
                products: phones,
              ),
              SizedBox(
                height: 15,
              ),
              ProductSlider(
                heading: "AUTOMOBILES",
                products: vehicles,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  child: Image.asset(
                "assets/images/banner2.jpg",
                width: sizeWidth(context),
                height: sizeWidth(context),
                fit: BoxFit.fill,
              )),
              SizedBox(
                height: 20,
              ),
              ProductSlider(
                heading: "Home Aplicense",
                products: newArrivals,
              ),
               SizedBox(
                height: 15,
              ),
            adsProvider ==null ? Center(child: CircularProgressIndicator()):
              SliderForProduct(
                heading: "Home Aplicense",
                products: adsProvider.getAllAds.data//newArrivals,
              ),
             
            ],
          ),
        ),
      );
    }

    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
      adsProvider = Provider.of<AdsProvider>(context);
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        drawer: DrawerFull(context, MediaQuery.of(context).size),
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(
                Icons.format_list_bulleted,
                color: Colors.black,
              ),
              onPressed: () => scaffoldKey.currentState.openDrawer()),
          backgroundColor: Colors.white,
          title: Text(
            res.firstName + " " + res.lastName,
            style: TextStyle(color: Colors.black),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          actions: appbarActions(context),
        ),
        body: adsProvider == null ? Center(child: CircularProgressIndicator()): _body(context),
      ),
    );
  }
}
