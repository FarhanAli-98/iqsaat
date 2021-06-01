import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/chip_container.dart';
import 'package:iqsaat/Widget/rounded_outline_button.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'about_tab.dart';
import 'pervious_ads.dart';
import 'profile_timeline_bar.dart';

class ProfileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
            children: <Widget>[
              const ProfileInfoColumn(),
              SizedBox(height: 12),
              Expanded(
                child: DefaultTabController(
        length: 3,
        child: Column(
          children: <Widget>[
            Material(
              elevation: 2,
              child: TabBar(
                indicatorColor: AppColors.primarycolor,
                labelColor: Colors.black,
                tabs: <Widget>[
                  Tab(child: Text("Timeline Ads")),
                  Tab(child: Text("About Shop")),
                  Tab(child: Text("Vault Ads"))
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  TimeLineBar(),
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
        Row(
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
            ChipContainer(
              leading: "Ads",
              trailing: "70",
            ),
          ],
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
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: CachedNetworkImage(
                  imageUrl:
                      "https://i.pinimg.com/originals/2c/40/b2/2c40b20db36393c6df7bf5ac32b1f08b.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
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
          Expanded(
            child: RoundedOutlineButton(
              text: "Edit",
              fontSize: 7,
              onTap: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (_) => ProfileDetails(),
                //   ),
                // );
              },
            ),
          ),
        ],
      ),
    );
  }
}
