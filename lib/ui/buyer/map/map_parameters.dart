import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/routes.dart';
import 'package:iqsaat/utils/styles.dart';

class MapIntegration extends StatefulWidget {
  const MapIntegration({Key key}) : super(key: key);

  @override
  _MapIntegrationState createState() => _MapIntegrationState();
}

class _MapIntegrationState extends State<MapIntegration> {
  bool isSwitched = false;
  bool iiSwitched = false;
  bool iiiSwitched = false;
  int count = 0;
  int count1 = 0;
  int count2 = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: IconButton(
                    icon: Icon(
                      Icons.format_list_bulleted,
                      color: Colors.black,
                    ),
                    onPressed: () => {
                          bounceShowDialog(),
                        }))));
  }

  Future bounceShowDialog() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return new AlertDialog(
              backgroundColor: Colors.grey.withOpacity(0.5),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              content: new Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Column(
                    children: [
                      Container(
                        // height: 100,
                        // width: 130,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              child: Image.asset(
                                'assets/images/mapIcon.jpeg',
                              ),
                            ),
                            Container(
                              child: Text(
                                'Set Location Perameters',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 15),
                          height: MediaQuery.of(context).size.height * 0.06,
                          width: MediaQuery.of(context).size.width * .85,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.all(
                              Radius.circular(13),
                            ),
                            border: Border.all(color: Colors.grey, width: 0.95),
                          ),
                          child: TextFormField(
                            decoration: new InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 4),
                                hintText: "Set Area",
                                fillColor: Colors.white,
                               
                                border: InputBorder.none),
                          )),
                              Container(
                          margin: EdgeInsets.only(top: 15),
                          height: MediaQuery.of(context).size.height * 0.06,
                          width: MediaQuery.of(context).size.width * .85,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.all(
                              Radius.circular(13),
                            ),
                            border: Border.all(color: Colors.grey, width: 0.95),
                          ),
                          child: TextFormField(
                            decoration: new InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 4),
                                hintText: "Set Redius",
                                fillColor: Colors.white,
                               
                                border: InputBorder.none),
                          )),
                   
                 
                 
                    ],
                  )));
        });
  }
}
