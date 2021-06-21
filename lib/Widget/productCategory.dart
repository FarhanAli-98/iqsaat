import 'package:flutter/material.dart';
import 'package:iqsaat/ui/buyer/home/uperCategoryBar/cnusmerElectronics.dart';
import 'package:iqsaat/ui/buyer/home/uperCategoryBar/homeAppliances.dart';
import 'package:iqsaat/ui/buyer/home/uperCategoryBar/mobilePads.dart';
import 'package:iqsaat/ui/buyer/home/uperCategoryBar/vehicles.dart';
import 'package:iqsaat/ui/buyer/home/home.dart';

class Categories extends StatefulWidget {
  final int indexs;

  const Categories({Key key, @required this.indexs}) : super(key: key);
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    "All",
    "Consumer Electronics",
    "Home Appliance",
    "Mobiles/Pads",
    "Vehicle"
  ];
  // By default our first item will be selected
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: SizedBox(
        height: 30,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
          print("def" + index.toString());
          if (index == 0) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => HomePage()));
          } else if (index == 1) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => Allitems(
                          title: "Consumer Electronics",
                        )));
          } else if (index == 2) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) =>
                        HomeAppiances(title: "HomeAppiances")));
          } else if (index == 3) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => MobilePads(
                          title: "MobilePads",
                        )));
          } else if (index == 4) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => Vehicles(
                          title: "Vehicles",
                        )));
          }
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: widget.indexs == index ? Colors.blueGrey : Colors.grey,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0 / 4), //top padding 5
              height: 2,
              width: 30,
              color: widget.indexs == index ? Colors.black : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}