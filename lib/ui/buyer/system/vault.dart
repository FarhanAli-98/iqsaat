
import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/appbar_actions.dart';
import 'package:iqsaat/Widget/button/custom_button.dart';
import 'package:iqsaat/utils/app_colors.dart';

import 'checkout.dart';


class MyVault extends StatelessWidget {
  final List<Map> myBagData = [
    {
      "itemImage": "assets/images/cartImages/cartImage1.png",
      "itemName": "G1 EAU DE Perfume (100 ml)",
      "itemCode": "SKU: HV-250031013",
      "itemPrice": "12.50",
    },
    {
      "itemImage": "assets/images/cartImages/cartImage2.png",
      "itemName": "Ciyoyo Combo(Straightener, Comb, Hair...",
      "itemCode": "SKU: HV-2500310221",
      "itemPrice": "12.50",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Add To Card",
            style: TextStyle(color: Colors.black),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          actions: appbarActions(context),
        ),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                ListView.separated(
                  shrinkWrap: true,
                  primary: false,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset(
                                    myBagData[index]['itemImage'],
                                    width: 85,
                                    height: 85,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 3),
                                      child: Container(
                                        width: sizeWidth(context) / 1.6,
                                        child: Text(
                                          myBagData[index]['itemName'],
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
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
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      myBagData[index]['itemCode'],
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "${myBagData[index]["itemPrice"]} QAR",
                                      style: TextStyle(
                                          color: AppColors.primarycolor,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Container(
                                    child: CustomButtom(
                                      buttonWidth: sizeWidth(context) / 2.25,
                                      buttonHeight: 45,
                                      buttonColor: AppColors.primarycolor,
                                      onPress: () {},
                                      text: "Order",
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Container(
                                    child: CustomButtom(
                                      buttonWidth: sizeWidth(context) / 2.25,
                                      buttonColor: AppColors.black,
                                      onPress: () {
                                        // Navigator.of(context).push(
                                        //     MaterialPageRoute(
                                        //         builder: (context) =>
                                        //             SignUpScreen()));
                                      },
                                      text: "Remove",
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                  itemCount: myBagData.length,
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: sizeWidth(context) / 2,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total Items',
                                style: TextStyle(),
                              ),
                              Text(
                                '3',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Subtotal ',
                                style: TextStyle(),
                              ),
                              Text(
                                '37.50 QAR',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 110,
                )
              ],
            ),
          ),
      
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.fromLTRB(14, 8, 14, 10),
                child: CustomButtom(
                  buttonHeight: 50,
                  onPress: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CheckoutScreen()));
                  },
                  text: "Process to checkout",
                  buttonColor: AppColors.secondaryColor,
                  buttonWidth: sizeWidth(context),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
