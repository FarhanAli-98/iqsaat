import 'package:flutter/material.dart';

import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/images.dart';
import 'package:intl/intl.dart';
import "package:iqsaat/ui/Seller/Product/categories/categories.dart";

class category_card extends StatelessWidget {
  final shopCategories categories;
  //  final String categorytitle;
  // final int productsnum;
  // final DateTime update;

  category_card({
    this.categories,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
        height: MediaQuery.of(context).size.height / 3.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.backgroundColor,
        ),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 3.9,
                margin: EdgeInsets.only( right: 2, left: 2, bottom: 0),
                width: sizeWidth(context),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    colorFilter: new ColorFilter.mode(
                        Colors.white.withOpacity(0.3), BlendMode.dstATop),
                    image: new AssetImage(categories.image),
                  ),
                  color: Colors.white,
                ),
                child: Container(
                    padding: EdgeInsets.only(
                        top: 30, right: 40, left: 55, bottom: 30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            20)), //color:Colors.amber[100]),
                       
                    child: Column(

                      children: [
                        Text(
                          categories.title,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            Text(
                              "Products in Shop:",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              categories.productscount.toString() + " Products",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 0,
                        ),
                        Row(
                          children: [
                            Text(
                              "Last Updated:",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              DateFormat('yyyy-MM-dd').format(categories.date),
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        )
                      ],
                    ))),
          ],
        ),
      ),
    );
  }
}
