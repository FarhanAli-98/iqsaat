
import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/appBar.dart';
import 'package:iqsaat/Widget/button/custom_button.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/routes.dart';
import 'package:iqsaat/utils/styles.dart';

import 'manage_address.dart';

class CheckoutScreen extends StatelessWidget {
  final List<Map> myOrderSummary = [
    {
      "itemImage": "assets/images/cartImages/cartImage1.png",
      "itemName": "G1 EAU DE Perfume (100 ml)",
      "itemPrice": "12.50",
    },
    {
      "itemImage": "assets/images/cartImages/cartImage2.png",
      "itemName": "Ciyoyo Combo(Straightener, Comb, Hair...",
      "itemPrice": "12.50",
    },
     {
      "itemImage": "assets/images/cartImages/cartImage2.png",
      "itemName": "Ciyoyo Combo(Straightener, Comb, Hair...",
      "itemPrice": "12.50",
    },
     {
      "itemImage": "assets/images/cartImages/cartImage2.png",
      "itemName": "Ciyoyo Combo(Straightener, Comb, Hair...",
      "itemPrice": "12.50",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: appBarwithCenterTitle(context, "Checkout"),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 14,
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Shipping Address",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      CustomButtom(
                      
                        text: 'Edit',
                        buttonColor: AppColors.secondaryColor,
                        buttonWidth: 25,
                        buttonHeight: 25,
                        textSize: 10, onPress: (){AppRoutes.push(context,ManageAddressScreen());},
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey[300],
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(
                          Icons.location_on_outlined,
                          color: Colors.black54,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Farhan ali',
                            style: TextStyles.smallFontSize,
                          ),
                          Text(
                            '+974 85125-4569',
                            style: TextStyles.smallFontSize,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            width: sizeWidth(context) / 1.4,
                            child: Text(
                              'Shah Jilani Road, Township Commercial Area Twp Commercial Area Lahore, Punjab 54770, Pakistan',
                              style: TextStyles.smallFontSize,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Order Summary",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      CustomButtom(
                        onPress: () {},
                        text: 'Edit',
                        buttonColor: AppColors.secondaryColor,
                        buttonWidth: 25,
                        buttonHeight: 25,
                        textSize: 10,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: ListView.separated(
                    shrinkWrap: true,
                    primary: false,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.asset(
                                  myOrderSummary[index]['itemImage'],
                                  width: 85,
                                  height: 75,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: sizeWidth(context) / 1.55,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: sizeWidth(context) / 3,
                                          child: Text(
                                            myOrderSummary[index]['itemName'],
                                            textAlign: TextAlign.start,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        Expanded(child: SizedBox()),
                                        Container(
                                          height: 20,
                                          width: 20,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.grey[300],
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Colors.white,
                                          ),
                                          child: Center(
                                              child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "-",
                                            ),
                                          )),
                                        ),
                                        SizedBox(
                                          width: 2,
                                        ),
                                        Container(
                                          height: 20,
                                          width: 28,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.grey[300],
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Colors.white,
                                          ),
                                          child: Center(
                                              child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "1",
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                          )),
                                        ),
                                        SizedBox(
                                          width: 2,
                                        ),
                                        Container(
                                          height: 20,
                                          width: 20,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: AppColors.primarycolor),
                                          child: Center(
                                              child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "+",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          )),
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
                                        Text(
                                          "${myOrderSummary[index]["itemPrice"]} QAR",
                                          style: TextStyle(
                                              color: AppColors.primarycolor,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'Remove',
                                          style: TextStyle(
                                            color: AppColors.primarycolor,
                                            decoration:
                                                TextDecoration.underline,
                                            fontSize: 12,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              // SizedBox(
                              //   height: 20,
                              // ),
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Divider();
                    },
                    itemCount: myOrderSummary.length,
                  ),
                ),
                Divider(),
                SizedBox(
                  height: 180,
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Promo Code",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: sizeWidth(context) / 1.1,
                          child: Row(
                            children: [
                              Container(
                                height: 45,
                                width: sizeWidth(context) / 1.5,
                                child: TextFormField(
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 13,
                                  ),
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey[200],
                                      ),
                                    ),
                                    fillColor: Colors.grey[100],
                                    filled: true,
                                    hintText: "Enter vouncher code",
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: CustomButtom(
                                  onPress: () {},
                                  text: "Apply",
                                  buttonColor: AppColors.secondaryColor,
                                  buttonWidth: 45,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(14, 8, 14, 10),
                    child: CustomButtom(
                      buttonHeight: 50,
                      text: "Continue",
                      buttonColor: AppColors.secondaryColor,
                      buttonWidth: sizeWidth(context), onPress: null,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
