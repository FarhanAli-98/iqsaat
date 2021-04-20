import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/appBar.dart';
import 'package:iqsaat/Widget/home_screen_row_widget.dart';
import 'package:iqsaat/ui/Buyer/product_categories.dart';

import '../../../../drawer.dart';

class Vehicles extends StatefulWidget {
  Vehicles({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _VehiclesState createState() => _VehiclesState();
}

double width, height;

class _VehiclesState extends State<Vehicles> {
  @override
  Widget build(BuildContext context) {
    _body() {
      return SingleChildScrollView(
        child: Container(
            child: Column(
          children: [
           Categories(indexs:4),
            SizedBox(height: 10),
            HomeScreenRow(text: 'Vehicles '),
            Container(
              height: height,
              width: width,
              child: GridView.builder(
                itemCount: 12,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 8.5 / 10.0,
                  crossAxisCount: 2,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                      padding: EdgeInsets.all(0),
                      
                      child: Card(
                        margin: EdgeInsets.all(10),
                          semanticContainer: true,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: Column(
                            
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                  child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://images.unsplash.com/photo-1525609004556-c46c7d6cf023?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Y2Fyc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80'),
                                      fit: BoxFit.fill),
                                ),
                              )),
                              Padding(
                                  padding: EdgeInsets.all(2),
                                  child: Text(
                                    "Sumsang 4",
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        fontStyle: FontStyle.normal),
                                  )),
                              Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    "Location: Pakistan UMT | Views 350",
                                    style: TextStyle(
                                        fontSize: 10.0, color: Colors.grey),
                                  )),
                              Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    " 2552",
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ],
                          )));
                },
              ),
            )
         
         
         
          ],
        )),
      );
    }

    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        drawer: DrawerFull(context, MediaQuery.of(context).size),
        appBar: appBarUserSide(context, "Vehicles"),
        body: _body(),
      ),
    );
  }
}
