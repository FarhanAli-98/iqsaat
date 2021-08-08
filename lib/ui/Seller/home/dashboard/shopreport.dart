 import 'package:flutter/material.dart';
 import 'package:iqsaat/utils/app_colors.dart';
 class shopreport extends StatefulWidget {
   @override
   _shopreportState createState() => _shopreportState();
 }
 
 class _shopreportState extends State<shopreport> {
   @override
   Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 15, right: 15),
        padding: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: AppColors.backgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Shop Report",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: AppColors.primarycolor,
              ),
            ),
            SizedBox(
              height: 11.0,
            ),
            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Products Sold:",
                    style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 190,
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "34",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ))
                ]),
            SizedBox(
              height: 11.0,
            ),
            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Active Products:",
                    style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 176,
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "34",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ))
                ]),
            SizedBox(
              height: 11.0,
            ),
            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Total Products:",
                    style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 190,
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "34",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ))
                ]),
            SizedBox(
              height: 11.0,
            ),
            SizedBox(
              height: 11.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Flexible(
                  child: RaisedButton(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 11.0),
                    color:  AppColors.primarycolor,
                    onPressed: () {},
                    child: Text(
                      'Shop',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(9.0),
                        side: BorderSide(color: Colors.white)),
                  ),
                ),
                Flexible(
                  child: RaisedButton(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 11.0),
                    color:  AppColors.primarycolor,
                    onPressed: () {},
                    child: Text(
                      'Products',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(9.0),
                        side: BorderSide(color: Colors.white)),
                  ),
                ),
                Flexible(
                  child: RaisedButton(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 11.0),
                    color:  AppColors.primarycolor,
                    onPressed: () {},
                    child: Text(
                      'Ads',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(9.0),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ));
  }
 }