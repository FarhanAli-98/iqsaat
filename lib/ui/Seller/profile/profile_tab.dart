import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/appBar.dart';
import 'package:iqsaat/Widget/chip_container.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'about_tab.dart';
import 'pervious_ads.dart';

class ProfileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar:appBarwithbackIcon(context,"Shop Profile"),
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
            children: <Widget>[
              const ProfileInfoColumn(),
              SizedBox(height: 12),
              Expanded(
                child: DefaultTabController(
        length: 2,
        child: Column(
          children: <Widget>[
            Material(
              elevation: 2,
              child: TabBar(
                indicatorColor: AppColors.primarycolor,
                labelColor: Colors.black,
                tabs: <Widget>[
                  Tab(child: Text("About Shop")),
                  Tab(child: Text("Vault Ads"))
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  AboutTab(),
                  PerviousAds(),
                ],
              ),
            )
          ],
        ),
                ),
              )
            ],
          ),
      ),
    );
  }
}

class ProfileInfoColumn extends StatelessWidget {
  const ProfileInfoColumn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ProfileRow(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            "AFZAL Electronics is one of the leading electronics companies of Pakistan. ",
            style: TextStyle(color: Colors.black54),
          ),
        ),
        SizedBox(height: 12),
        Container(
          width: MediaQuery.of(context).size.width,
                  child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ChipContainer(
                leading: "Receved oders",
                trailing: "13",
              ),
              ChipContainer(
                leading: "Daliver orders",
                trailing: "7",
              ),
            
            ],
          ),
        ),
      ],
    );
  }
}

class ProfileRow extends StatelessWidget {
  const ProfileRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Row(
        children: <Widget>[
        Container(
          height: 80,
          width: 80,
          child: Image.asset("assets/images/afzal.png")),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Afzal Electronics",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Installments",
                    style: TextStyle(color: Colors.black54),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Easy Buy",
                    style: TextStyle(color: Colors.black54),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Perfect Planing",
                    style: TextStyle(color: Colors.black54),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Best Quality",
                    style: TextStyle(color: Colors.black54),
                  ),
                ],
              ),
            ),
          ),
    
        ],
      ),
    );
  }
}
