// @dart=2.9
import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/appBar.dart';
import 'package:iqsaat/Widget/slider/product_gridview.dart';
import 'package:iqsaat/ui/Seller/Product/categories/categories.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/images.dart';

class BrandDetailsScreen extends StatefulWidget {
  final List<String> subcategories;

  const BrandDetailsScreen({Key key, this.subcategories}) : super(key: key);
  @override
  _BrandDetailsScreenState createState() => _BrandDetailsScreenState();
}

class _BrandDetailsScreenState extends State<BrandDetailsScreen> {
  List<String> subCats = [
    "Shefon Dress",
    "Butterfly Dress",
    "Trendy Dress",
    "Galabiya Dress",
    "Jalabiya",
    "Jumpsuit",
    "Exclusive",
    "Price: Low to High",
    "Price: High to Low",
    "Best Sellers",
  ];
  bool showSubcat = true;
  @override
  void initState() {
    super.initState();
    subCats=widget.subcategories;
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarwithCenterTitle(context,"SubCategory"),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: sizeWidth(context),
              height: 230,
              child: Image.asset(
                categories[2].image,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(200),
                      child: Image.asset(
                        categories[2].image,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Vehicle',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '4.0',
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                         
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Divider(),
            SizedBox(
              height: 5,
            ),
            showSubcat
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Subcategories",
                            style: TextStyle(
                                // color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            // /height: 200,
                            width: sizeWidth(context),
                            child: GridView.builder(
                                shrinkWrap: true,
                                primary: false,
                                itemCount: subCats.length,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisSpacing: 10,
                                        mainAxisSpacing: 10,
                                        childAspectRatio: (sizeWidth(context)) /
                                            (sizeWidth(context) * 0.25),
                                        crossAxisCount: 2),
                                itemBuilder: (_, i) {
                                  return AspectRatio(
                                    aspectRatio: (sizeWidth(context)) /
                                        (sizeWidth(context) * 0.25),
                                    child: Container(
                                      color: Colors.white,
                                      child: Material(
                                        color: Colors.transparent,
                                        child: InkWell(
                                          splashColor: AppColors.primarycolor,
                                          onTap: () {},
                                          child: Container(
                                            alignment: Alignment.center,
                                            height: 60,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  style: BorderStyle.solid,
                                                  color: Colors.grey[300],
                                                  width: 1.5),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            // color: Colors.white,
                                            child: Text(
                                              subCats[i],
                                              style: TextStyle(
                                                  // color: Colors.white,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                  )
                : Container(),
            Container(
              height: kToolbarHeight,
              width: sizeWidth(context),
              color: AppColors.primarycolor,
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.white54)),
                          child: Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Icon(Icons.filter_list_outlined,
                                color: Colors.white),
                          )),
                      SizedBox(
                        width: 14,
                      ),
                      Text(
                        "Filter",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        showSubcat = !showSubcat;
                      });
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.all(5),
                        child: Icon(
                          Icons.keyboard_arrow_up_rounded,
                          color: Colors.white,
                          size: 20,
                        )),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Text(
              'All Products',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 10),
             // child: ProductGridView(products: newArrivals),
            )
          ],
        ),
      ),
    );
  }
}
