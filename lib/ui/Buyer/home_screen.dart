import 'package:flutter/material.dart';
import './home_body.dart';
import 'package:iqsaat/drawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer:AppDrawer(),
      appBar: buildAppBar(),
      body:
      
        Body(),
      
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.lightBlueAccent,
        elevation: 0,
        leading: Builder(
            builder: (context) => InkWell(
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                  child: Container(
                    //width: 55,
                    // height: 30,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 5,
                              color: Colors.black12)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(50),
                            topRight: Radius.circular(50))),
                    child: Image.asset(
                      'assets/appIcons/menu.png',
                      width: 50,
                      height: 50,
                    ),
                  ),
                )),

        actions: <Widget>[
          GestureDetector(
              onTap: (){}, 
              child: Container(
                margin: EdgeInsets.only(right: 13),
                child: Image.asset(
                  'assets/appIcons/offlineVector.png',
                  width: 33,
                  height: 24,
                ),
              ))
        ],
        title: Row(
          children: <Widget>[
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/appIcons/image47.png'),
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Seller1',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                Text(
                  'view and edit',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ],
            )
          ],
        ),
      
      
    );
  }

//Widget buildFloatingSearchBar() {

  // return FloatingSearch(
  //         trailing: CircleAvatar(
  //           child: Text("RD"),
  //         ),
  //         drawer: Drawer(
  //           child: Container(),
  //         ),
  //         onChanged: (String value) {},
  //         onTap: () {},
  //         decoration: InputDecoration.collapsed(
  //           hintText: "Search...",
  //         ),
  //         children: [
  //         ],
  //       ));
}

//}