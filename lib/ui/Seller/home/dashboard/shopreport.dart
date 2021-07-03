 import 'package:flutter/material.dart';
 import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/styles.dart';
 class shopReport extends StatefulWidget {
   @override
   _shopReportState createState() => _shopReportState();
   final int report;
   shopReport({Key key,this.report}):super(key: key);
 }
 
 class _shopReportState extends State<shopReport> {

   @override
   Widget build(BuildContext context) {
     return Container(
       //height: MediaQuery.of(context).size.height/1.5,
        
       margin: EdgeInsets.only(top:15,left: 15, right: 10),
        padding: EdgeInsets.fromLTRB(10, 10, 20, 10),
        decoration:BoxStyles.deco,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Sales Report",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.primarycolor,
              ),
            ),
            SizedBox(
              height: 11.0,
            ),
            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Installments",
                    style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                 
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        widget.report.toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ))
                ]),
            SizedBox(
              height: 11.0,
            ),
            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Active Customers",
                    style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        widget.report.toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ))
                ]),
            SizedBox(
              height: 11.0,
            ),
            Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "New Orders",
                    style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                 
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        widget.report.toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ))
                ]),
           
            SizedBox(
              height: 15.0,
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
                      'Customers',
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
                      'Orders',
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
  