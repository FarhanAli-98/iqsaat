
import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/appBar.dart';
import 'package:iqsaat/Widget/custom_rating_bar.dart';
import 'package:iqsaat/utils/app_colors.dart';
  final List<Map> myOrdersList = [
      {
        "itemImage": "assets/images/cartImages/cartImage1.png",
        "date": "14 May 2021",
        "orderId": "Order ID - #4223215",
        "itemName": "G1 EAU DE Perfume (100 ml)",
        "itemPrice": "12.50",
      },
      {
        "itemImage": "assets/images/cartImages/cartImage2.png",
        "date": "14 May 2021",
        "orderId": "Order ID - #4223215",
        "itemName": "Ciyoyo Combo(Straightener, Comb, Hair...",
        "itemPrice": "12.50",
      },
      {
        "itemImage": "assets/images/cartImages/cartImage1.png",
        "date": "14 May 2021",
        "orderId": "Order ID - #4223215",
        "itemName": "G1 EAU DE Perfume (100 ml)",
        "itemPrice": "12.50",
      },
    ];
class MyOrders extends StatelessWidget {
  const MyOrders({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: appBarwithCenterTitle(context,"My Order"),
      body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                height: 14,
            ),
            ListView.separated(
                shrinkWrap: true,
                primary: false,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 70,
                                width: 80,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset(
                                    myOrdersList[index]['itemImage'],
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: sizeWidth(context) / 1.55,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: sizeWidth(context) / 3,
                                          child: Text(
                                            myOrdersList[index]['itemName'],
                                            textAlign: TextAlign.start,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        // Container(
                                        //   child:
                                        //    Text(
                                        //     myOrdersList[index]['orderId'],
                                        //     textAlign: TextAlign.start,
                                        //     style: TextStyle(fontSize: 11),
                                        //   ),
                                        // ),
                                        Expanded(child: SizedBox()),
                                        Text(
                                          myOrdersList[index]['date'],
                                          textAlign: TextAlign.start,
                                          style: TextStyle(fontSize: 11),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  // Text(
                                  //   myBagData[index]['itemCode'],
                                  //   style: TextStyle(fontSize: 10),
                                  // ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: sizeWidth(context) / 1.55,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Text(
                                            "${myOrdersList[index]["itemPrice"]} QAR",
                                            style: TextStyle(
                                                color: AppColors.primarycolor,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        // Text(
                                        //   'Remove',
                                        //   style: TextStyle(
                                        //     color: AppColors.primarycolor,
                                        //     decoration: TextDecoration.underline,
                                        //     fontSize: 12,
                                        //   ),
                                        // )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  RatingBar(
                                    rating: 0,
                                    size: 25,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Rate this product now',
                                    style: TextStyle(fontSize: 11),
                                  )
                                ],
                              ),
                              // SizedBox(
                              //   height: 20,
                              // ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider();
                },
                itemCount: myOrdersList.length,
            ),
            SizedBox(
                height: 10,
            ),
            Container(
                alignment: Alignment.center,
                height: 60,
                width: sizeWidth(context),
                color: Colors.grey[100],
                child: Text('No more Orders',
                    textAlign: TextAlign.center, style: TextStyle(fontSize: 16)),
            )
          ],
        ),
              ),
      ),
    );
  }
}
