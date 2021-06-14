import 'package:flutter/material.dart';
import 'package:iqsaat/provider/categoryProvider.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:provider/provider.dart';

double width, height,_height;
CategoryProvider categoryProvider;

List dropList = [];
List filterList = [];
List temp =[];
class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool isVisibal = true;
  // ignore: missing_return
  double _updateState(String cate) {
    setState(() {
      isVisibal = !isVisibal;
    });
  }

  @override
  void initState() {
    super.initState();
    getCateory(context);
    filterList = dropList;
    _height=0;
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    categoryProvider = Provider.of<CategoryProvider>(context);

    return Container(
      decoration: BoxDecoration(gradient: AppColors.background),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(80),
            child: Container(
              padding: EdgeInsets.only(top: 10),
              color: Colors.transparent,
              child: AppBar(
              
                backgroundColor: Colors.transparent,
                elevation: 0,
                title: buildSearchField(),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(top: 10),
              width: width,
              height: height - 30,
              child: Column(
                children: <Widget>[
                  Text(
                    "All Catagory",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),

                  //-----------------------(  Accomodation Catagory        )-------------------------------

                  Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: filterList.length,
                        itemBuilder: (BuildContext context, i) {
                          List subCat =List();
                          bool hide = false;
                          return Container(
                            child: Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    _updateState(filterList[i]);
                                    hide = true;
                                    _height=60;
                                    setState(() {
                                      // categoryProvider.getCategory.data[i].subcategoryId
                                      //     .data[i].subCategories
                                      //     .forEach((element) {
                                      //   if (!subCat.contains(element.name)) {
                                      //     subCat.add(element.name);
                                      //   }
                                      // });
                                    });
                                    print(hide);
                                    print('it is my  sooob caatt '+subCat.length.toString());
                                    temp.clear();
                                    print("All items Exist in"+subCat.toString());
                                    temp=subCat;
                                    
                                  },
                                  child: buildCatagoryItem(
                                      AppColors.yellowColor, filterList[i]),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Visibility(
                                  visible: isVisibal,
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 400),
                                    width: width,
                                    
                                    height: _height,
                                    child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: temp.length,
                                        itemBuilder: (BuildContext context, val) {
                                          print('this is my length = ' +
                                             temp.length.toString());
                                          return buildCatagoryItem(AppColors.white, temp[val]);
                                        }),
                                  ),
                                ),
                                 SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          )),
    );
  }

  buildSearchField() {
    return Container(
      margin: EdgeInsets.only(top: 4, right: 5, bottom: 5),
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
      width: 298,
      height: 48,
      child: TextField(
        decoration: InputDecoration(
            suffixIcon: Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.search,
                color: Colors.grey,
                size: 30,
              ),
            ),
            hintText: "Search",
            hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50.0),
                borderSide: BorderSide(color: Colors.black12, width: 1.0)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50.0),
                borderSide: BorderSide(color: Colors.white12, width: 1.0)),
            border: InputBorder.none),
        onChanged: (string) {
          setState(() {
            filterList = dropList
                .where((element) =>
                    (element.toLowerCase().contains(string.toLowerCase())))
                .toList();
          });
        },
      ),
    );
  }

   buildCatagoryItem(Color c, String title) {
             return Container(
               margin: EdgeInsets.only(left: 16),
               height: 48,
               child: Chip(
                 elevation: 1,
                 backgroundColor: c,
                 label: Container(
                   padding: EdgeInsets.only(left: 16, top: 4, bottom: 10, right: 12),
                   height: 48,
                   // width: 153,
                   child: Center(
                     child: Text(
                       title,
                       textAlign: TextAlign.center,
                       style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 14,
                           color: Colors.black),
                     ),
                   ),
                 ),
               ),
             );
           }
  getCateory(context) async {
    await Provider.of<CategoryProvider>(context, listen: false)
        .cateResponse()
        .then((value) {
      //   categoryProvider.getCategory.data.forEach((element) {
      //   print("main categoty name is = " + element.name.toString());
      //   dropList.add(element.name.toString());
      //   //   element.subCategories.forEach((sub) {
      //   //   subCat.add(sub.name.toString());
      //   // });
      // });
    });
  }
}
