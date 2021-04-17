import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


import 'productsAds.dart';

class CreateProducts extends StatefulWidget {
  @override
  _CreateProductsState createState() => _CreateProductsState();
}

class _CreateProductsState extends State<CreateProducts> {
  Material myItems(IconData icon, String heading) {
    return Material(
      color: Colors.white,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Material(
                  child: Icon(
                    icon,
                    color: Colors.black,
                    size: 40.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    heading,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //centerTitle: true,
        elevation: 0.0,
        
        backgroundColor:Colors.white,
        title: Text(
          'Select Category',
          style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black),
          // style: Styles.heading,
        ),
      ),
      body: StaggeredGridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 5.0,
        mainAxisSpacing: 5.0,
        children: <Widget>[
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => AddAdvertisementPage()));
              },
              child: myItems(Icons.mobile_friendly, "Mobile")),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => AddAdvertisementPage()));
            },
            child: myItems(
              Icons.point_of_sale,
              "Propertiy for sale",
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => AddAdvertisementPage()));
            },
            child: myItems(
              Icons.circle_notifications,
              "property rent",
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => AddAdvertisementPage()));
            },
            child: myItems(
              Icons.electrical_services_sharp,
              "Electornics",
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => AddAdvertisementPage()));
            },
            child: myItems(
              Icons.emoji_nature_sharp,
              "Animals",
            ),
          ),

          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => AddAdvertisementPage()));
            },
            child: myItems(
              Icons.computer_rounded,
              "jobs",
            ),
          )
          //  myItems(Icons.CreateProducts_customize, "More categoies"),
        ],
        staggeredTiles: [
          StaggeredTile.extent(1, 100.0),
          StaggeredTile.extent(1, 100.0),
          StaggeredTile.extent(1, 100.0),
          StaggeredTile.extent(1, 100.0),
          StaggeredTile.extent(1, 100.0),
          StaggeredTile.extent(1, 100.0),
          StaggeredTile.extent(1, 100.0),
          StaggeredTile.extent(1, 100.0),
        ],
      ),
    );
  }
}