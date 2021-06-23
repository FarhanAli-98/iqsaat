import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/appbar_actions.dart';
import 'package:iqsaat/Widget/button/custom_button.dart';
import 'package:iqsaat/Widget/custom_rating_bar.dart';
import 'package:iqsaat/Widget/slider/home_slider.dart';
import 'package:iqsaat/Widget/slider/product_slider.dart';
import 'package:iqsaat/ui/buyer/brands/packagetable.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/images.dart';
import 'package:iqsaat/utils/nav_bar_icons_icons.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:select_form_field/select_form_field.dart';

class ProdDescScreen extends StatefulWidget {
  final String name;
  final String des;
  final String price;
  final String image;
  final List<int> package;

  const ProdDescScreen(
      {Key key,
      @required this.name,
      @required this.des,
      @required this.price,
      @required this.image,
      this.package})
      : super(key: key);

  @override
  _ProdDescScreenState createState() => _ProdDescScreenState();
}
 
class _ProdDescScreenState extends State<ProdDescScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Product Datile",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        actions: appbarActions(context),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(12),
              child: Column(
                children: [
                  CustomCarouselSlider(
                    autoPlay: false,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.name,
                                    //style: TextStyl.,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "5.0",
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      RatingBar(
                                        rating: 5,
                                        size: 16,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            ClipRRect(
                              child: Image.asset(
                                widget.image,
                                height: 35,
                                width: 35,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Text(widget.name.toUpperCase())
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                       
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "${widget.price} Rs",
                              style: TextStyle(
                                color: AppColors.primarycolor,
                                fontSize: 19,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5),
                              child: Text(
                                "",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 13,
                                    decoration: TextDecoration.lineThrough),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),

                        SizedBox(
                          height: 15,
                        ),
                        Divider(
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "DESCRIPTION",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(widget.des),

                        SizedBox(
                          height: 15,
                        ),
                        Divider(
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "PACKAGE",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(
                          height: 10,
                        ),

                        Container(padding: EdgeInsets.only(top:20,left:MediaQuery.of(context).size.width/25), child: Packagetable(price:widget.package)),
                        
                        SizedBox(
                          height: 25,
                        ),
                        Divider(
                          color: Colors.grey,
                        ),

                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          child: CustomButtom(
                            buttonWidth: sizeWidth(context),
                            buttonHeight: 50.0,
                            onPress: () {},
                            buttonColor: AppColors.primarycolor,
                            text: "BOOK AN ORDER",
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Divider(
                          color: Colors.grey,
                        ),
                        //  Row(
                        //    children: [
                        //      StepperBullet(),
                        //       StepperBullet(),
                        //        StepperBullet(),
                        //         StepperBullet(),
                        //    ],
                        //  ),
                        SizedBox(
                          height: 15,
                        ),
                        ProductSlider(
                            heading: "You may also like",
                            products: bestSellers,
                            package: widget.package),
                        SizedBox(
                          height: 70,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              child: Row(
                children: [
                  Container(
                    width: sizeWidth(context) / 2.6,
                    height: 60,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.primarycolor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            NavBarIcons.home,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Order',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          // Text(
                          //   'Total',
                          //   style: AppTextStyles.smallFontSize.copyWith(color: Colors.white),
                          // )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 60,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: AppColors.black,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              CupertinoIcons.bag,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'ADD TO BAG',
                              style: TextStyle(
                                fontSize: 19,
                                color: Colors.white,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
