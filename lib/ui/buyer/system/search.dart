import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/slider/search_slider_card.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/images.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: buildSearchField(context),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: 15,
        ),
        SearchSlider(
          heading: "Search Result",
          products: phones,
        ),
      ]),
    );
  }
}

buildSearchField(context) {
  return Row(
    children: [
      Container(
        margin: EdgeInsets.only(top: 4, bottom: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 10,
                offset: Offset(2, 5)),
          ],
        ),
        width: MediaQuery.of(context).size.width * .8,
        height: 50,
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey,
                size: 15,
              ),
              suffixIcon: Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.highlight_off,
                  color: Colors.grey,
                  size: 15,
                ),
              ),
              hintText: "Search Products, Brands & Apllcense",
              hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
              filled: true,
              fillColor: Colors.white,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20, vertical: 2),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.black12, width: 1.0)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.white12, width: 1.0)),
              border: InputBorder.none),
          onChanged: (string) {},
        ),
      ),
      GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Container(
              width: MediaQuery.of(context).size.width * .2,
              child: Padding(
                padding: const EdgeInsets.only(right: 3.0),
                child: Center(
                    child: Text(
                  "Cancel",
                  style: TextStyle(
                      fontFamily: "JannaLT", color: AppColors.primarycolor),
                )),
              )),
        ),
      ),
    ],
  );
}
