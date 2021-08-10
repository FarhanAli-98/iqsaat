import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/appBar.dart';
import 'package:iqsaat/Widget/button/custom_button.dart';
import 'package:iqsaat/Widget/custom_rating_bar.dart';
import 'package:iqsaat/Widget/slider/home_slider.dart';
import 'package:iqsaat/ui/Seller/chat_tab/chat_dash.dart';
import 'package:iqsaat/ui/buyer/system/vault.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/images.dart';
import 'package:iqsaat/utils/routes.dart';

class ProductDetail extends StatefulWidget {
  final String name;
  final String des;
  final String price;
  final String image;
  final String package;
  final String month;
  final String customername;

  const ProductDetail(
      {Key key,
      @required this.name,
      @required this.des,
      @required this.price,
      @required this.image,
      @required this.package,
      @required this.customername,
      @required this.month})
      : super(key: key);

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar:appBarwithCenterTitle(context,"Product Detail"),
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
                                Images.bikes,
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
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

                        Text(widget.price+" RS per "+widget.month + " Monthly installment"),
                        SizedBox(
                          height: 25,
                        ),
                        Divider(
                          color: Colors.grey,
                        ),
                        Text(
                          "BUYER NOTE",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(
                          height: 15,
                        ),

                        Text("Here you write buyer"),
                         SizedBox(
                          height: 25,
                        ),
                        Divider(
                          color: Colors.grey,
                        ),
                        Container(
                          child: CustomButtom(
                            buttonWidth: sizeWidth(context),
                            buttonHeight: 50.0,
                            onPress: () {
                              bounceShowDialog(context,"Order Accepted");
                            },
                            buttonColor: AppColors.primarycolor,
                            text: "ACCEPT ORDER",
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: GestureDetector(
              onTap: (){
                AppRoutes.push(context, ChatTab());
              },
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
                        padding: const EdgeInsets.fromLTRB(16, 18, 8, 8),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                           Image.asset("assets/appIcons/chatboxes.png",scale: 1,),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Chat',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                     
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {

                          AppRoutes.push(context,  MyVault());
                        },
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
                                'ADD TO VAULT',
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
            ),
          )
        ],
      ),
    );
  }
  Future bounceShowDialog(BuildContext context,title) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return new AlertDialog(
              // backgroundColor: Colors.white.withOpacity(0.9),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              content: new Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        // height: 100,
                        // width: 130,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 90,
                              width: 90,
                              child: Image.asset(
                                'assets/images/successfully.png',
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Container(
                              child: Text(
                                title,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            CustomButtom(
                              buttonWidth: 70,
                              buttonHeight: 50.0,
                              onPress: () {
                                AppRoutes.pop(context);
                              },
                              buttonColor: AppColors.primarycolor,
                              text: "Ok",
                            ),
                          ],
                        ),
                      ),
                    ],
                  )));
        });
  }
}
