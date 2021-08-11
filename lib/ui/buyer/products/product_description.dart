import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/appBar.dart';
import 'package:iqsaat/Widget/button/custom_button.dart';
import 'package:iqsaat/Widget/custom_rating_bar.dart';
import 'package:iqsaat/Widget/slider/home_slider.dart';
import 'package:iqsaat/Widget/slider/product_slider.dart';
import 'package:iqsaat/provider/order_provider.dart';
import 'package:iqsaat/ui/Seller/chat_tab/chat_dash.dart';
import 'package:iqsaat/ui/Seller/profile/profile_tab.dart';
import 'package:iqsaat/ui/auth/loginPage.dart';
import 'package:iqsaat/ui/buyer/brands/packagetable.dart';
import 'package:iqsaat/ui/buyer/system/my_orders.dart';
import 'package:iqsaat/ui/buyer/system/vault.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/images.dart';
import 'package:iqsaat/utils/routes.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

DateTime now = DateTime.now();
String orderdate = DateFormat('yyyy-MM-dd').format(DateTime.now());

class ProdDescScreen extends StatefulWidget {
  final String id;
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
      this.package,
      this.id})
      : super(key: key);

  @override
  _ProdDescScreenState createState() => _ProdDescScreenState();
}

class _ProdDescScreenState extends State<ProdDescScreen> {
  OrderProvider orderProvider;
  bool yes = false;

  submitOrder(context) {
    Provider.of<OrderProvider>(context, listen: false)
        .orderCreate(
      widget.id,
    )
        .then((value) {
      if (value.success == true) {
        bounceShowDialog(context);
        setState(() {
          var body = {
            "itemImage": "${widget.image}",
            "date": "$orderdate",
            "orderId": "${widget.id}",
            "itemName": "${widget.name}",
            "itemPrice": "${widget.price}",
          };
          myOrdersList.add(body);
        });
      } else {
        showMessage("Order Placed Failed");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    orderProvider = Provider.of<OrderProvider>(context);
    return Scaffold(
      appBar: appBarwithCenterTitle(context, "Product Datile"),
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
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Container(
                              height: MediaQuery.of(context).size.height / 3,
                              width: sizeWidth(context) * 1.2,
                              child: Packagetable(price: widget.package)),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Divider(
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        buildShopCard(
                            "Shop Name",
                            'assets/images/brandImages/brand1.png',
                            "See Profile",
                            'Sense from'),
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
                            onPress: () {
                              submitOrder(
                                context,
                              );

                              setState(() {
                                // message=true;
                              });
                            },
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
            child: GestureDetector(
              onTap: () {
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
                            Image.asset(
                              "assets/appIcons/chatboxes.png",
                              scale: 1,
                            ),
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
                          setState(() {
                            var order = {
                              "itemImage": "${widget.image}",
                              "itemName": "${widget.name}",
                              "itemPrice": "${widget.price}",
                            };
                            myBagData.add(order);
                          });

                          AppRoutes.push(context, MyVault());
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

  Future bounceShowDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return new AlertDialog(
              backgroundColor: Colors.white,
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
                                'Order Successfully send',
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
                            Container(
                              child: Text(
                                "Order iD" +
                                    orderProvider.orderModel.details.adId
                                        .toString(),
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

  Widget buildShopCard(
      String name, String image, String profile, String status) {
    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: 1,
      borderOnForeground: false,
      //shape:ShapeBorder(),
      shadowColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),

      child: ListTile(
        leading: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              image,
            )),
        // Container(
        //     child: Image.asset(
        //   image,
        // )),
        title: Padding(
          padding: const EdgeInsets.only(top: 10.0, right: 8, left: 28),
          child: Text(
            name,
            style: TextStyle(fontSize: 18),
          ),
        ),
        subtitle: Container(
          padding: const EdgeInsets.only(top: 5, right: 8, left: 28, bottom: 5),
          child: GestureDetector(
            onTap: () {
              AppRoutes.push(context, ProfileTab());
            },
            child: Text(profile,
                style: TextStyle(
                  fontSize: 14,
                  color: AppColors.primarycolor,
                )),
          ),
        ),
      ),
    );
  }
}
