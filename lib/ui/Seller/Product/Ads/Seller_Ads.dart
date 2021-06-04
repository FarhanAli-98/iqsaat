import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:iqsaat/utils/app_colors.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:iqsaat/Widget/home_screen_row_widget.dart';

import 'ads_card.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SellerAds extends StatefulWidget {
  

  @override
  _SellerAdsState createState() => _SellerAdsState();
}

class _SellerAdsState extends State<SellerAds> {
  //final items = List<Widget>.generate(5, (i) => AdsCard());
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text("My Ads",style: TextStyle(color: AppColors.primarycolor,)),
      ),
      body: Container(
        color: AppColors.backgroundColor,
        child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    HomeScreenRow(text: 'Categories'),
                       Container(
              height: MediaQuery.of(context).size.height/3.5,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: StaggeredGridView.count(
                  //  shrinkWrap: true,
                    crossAxisCount: 4,
                    staggeredTiles: _staggeredTiles,
                    children: _tiles,
                    mainAxisSpacing: 2.0,
                    crossAxisSpacing: 2.0,
                    padding: const EdgeInsets.all(2.0),
                  )),
            ),
            SizedBox(height: 20,),
                    HomeScreenRow(text: 'All Categories'),
                    Container(
                      height: MediaQuery.of(context).size.height/1.5,
                      width: MediaQuery.of(context).size.width/0.5,

                                          child: Scrollbar(
            child:ListView.builder(
  itemCount: 5,
  itemBuilder: (context, index) {
    return  Container(
                        decoration: BoxDecoration(
              color: AppColors.backgroundColor,
              borderRadius: BorderRadius.circular(10),
               boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0.0, 1.0), //(x,y)
                                    blurRadius: 6.0,
                                  ),
                                ],
                                ),
                         // height: 400,
                          margin: const EdgeInsets.all(8),
                          
                          child:AdsCard(),
                        );
  },
)
        
          ),
                    ),
                  ],
                ),
        ),
      ),
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
    return Container(
      child: Card(
        color: backgroundColor,
        child: InkWell(
          onTap: () {},
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
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
      ),
    );
  }
}