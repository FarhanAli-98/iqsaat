import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/appbar_actions.dart';
import 'package:iqsaat/utils/app_colors.dart';

import 'brand_details.dart';

class BrandsScreen extends StatefulWidget {
  @override
  _BrandsScreenState createState() => _BrandsScreenState();
}

class _BrandsScreenState extends State<BrandsScreen> {
  List<String> _brandsData = [
    "assets/images/brandImages/brand1.png",
    "assets/images/brandImages/brand2.png",
    "assets/images/brandImages/brand3.png",
    "assets/images/brandImages/brand4.png",
    "assets/images/brandImages/brand5.png",
    "assets/images/brandImages/brand6.png",
    "assets/images/brandImages/brand1.png",
    "assets/images/brandImages/brand2.png",
    "assets/images/brandImages/brand3.png",
    "assets/images/brandImages/brand4.png",
    "assets/images/brandImages/brand5.png",
    "assets/images/brandImages/brand6.png",
    "assets/images/brandImages/brand1.png",
    "assets/images/brandImages/brand2.png",
    "assets/images/brandImages/brand3.png",
    "assets/images/brandImages/brand4.png",
    "assets/images/brandImages/brand5.png",
    "assets/images/brandImages/brand6.png",
    "assets/images/brandImages/brand1.png",
    "assets/images/brandImages/brand2.png",
    "assets/images/brandImages/brand3.png",
    "assets/images/brandImages/brand4.png",
    "assets/images/brandImages/brand5.png",
    "assets/images/brandImages/brand6.png",
    "assets/images/brandImages/brand1.png",
    "assets/images/brandImages/brand2.png",
    "assets/images/brandImages/brand3.png",
    "assets/images/brandImages/brand4.png",
    "assets/images/brandImages/brand5.png",
    "assets/images/brandImages/brand6.png",
    "assets/images/brandImages/brand1.png",
    "assets/images/brandImages/brand2.png",
    "assets/images/brandImages/brand3.png",
    "assets/images/brandImages/brand4.png",
    "assets/images/brandImages/brand5.png",
    "assets/images/brandImages/brand6.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "All Brands",
            style: TextStyle(color: Colors.black),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          actions: appbarActions(context),
        ),
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 14,
            ),
            Center(child: Text('All Brandes',style:TextStyle(color: Colors.black,fontSize: 30) ,)),
            SizedBox(
              height: 5,
            ),
            GridView.builder(
              primary: false,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio:
                    (sizeWidth(context) * 1.5) / (sizeWidth(context) * 1.2),
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
              ),
              itemCount: _brandsData.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BrandDetailsScreen()));
                  },
                  child: Container(
                    width: 75,
                    height: 75,
                    // decoration: BoxDecoration(
                    //   border: Border.all(
                    //     color: Colors.grey[400],
                    //   ),
                    // ),
                    child: Image.asset(
                      _brandsData[index],
                      fit: BoxFit.fill,
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    ));
  }
}
