
import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/appBar.dart';
import 'package:iqsaat/Widget/button/custom_button.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/routes.dart';
import 'checkout.dart';
  final List<Map> myBagData = [
    {
      "itemImage": "assets/images/vehicle1.jpg",
      "itemName": "honda 70",

      "itemPrice": "12.50",
    },
    {
      "itemImage": "assets/images/vehicle1.jpg",
      "itemName": "honda 125",
      "itemPrice": "12.50",
    },
  ];

class MyVault extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarwithCenterTitle(context,"My Valut"),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                ListView.separated(
                  shrinkWrap: true,
                  primary: false,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){

                      },
                        child: Container(
                        padding: const EdgeInsets.all(14.0),
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
                                    // Row(
                                    //   children: [
                                        // Container(
                                        //   height: 20,
                                        //   width: 20,
                                        //   decoration: BoxDecoration(
                                        //     border: Border.all(
                                        //       color: Colors.grey[300],
                                        //     ),
                                        //     borderRadius:
                                        //         BorderRadius.circular(5),
                                        //     color: Colors.white,
                                        //   ),
                                        //   child: Center(
                                        //       child: Align(
                                        //     alignment: Alignment.center,
                                        //     child: Text(
                                        //       "-",
                                        //     ),
                                        //   )),
                                        // ),
                                        // SizedBox(
                                        //   width: 2,
                                        // ),
                                        // Container(
                                        //   height: 20,
                                        //   width: 28,
                                        //   decoration: BoxDecoration(
                                        //     border: Border.all(
                                        //       color: Colors.grey[300],
                                        //     ),
                                        //     borderRadius:
                                        //         BorderRadius.circular(5),
                                        //     color: Colors.white,
                                        //   ),
                                        //   child: Center(
                                        //       child: Align(
                                        //     alignment: Alignment.center,
                                        //     child: Text(
                                        //       "1",
                                        //       style: TextStyle(
                                        //         fontSize: 12,
                                        //       ),
                                        //     ),
                                        //   )),
                                        // ),
                                        // SizedBox(
                                        //   width: 2,
                                        // ),
                                        // Container(
                                        //   height: 20,
                                        //   width: 20,
                                        //   decoration: BoxDecoration(
                                        //       borderRadius:
                                        //           BorderRadius.circular(5),
                                        //       color: AppColors.primarycolor),
                                        //   child: Center(
                                        //       child: Align(
                                        //     alignment: Alignment.center,
                                        //     child: Text(
                                        //       "+",
                                        //       style: TextStyle(
                                        //           color: Colors.white),
                                        //     ),
                                        //   )),
                                        // ),
                                    //   ],
                                    // ),
                                    // SizedBox(
                                    //   height: 5,
                                    // ),
                                    // Text(
                                    //   myBagData[index]['itemCode'],
                                    //   style: TextStyle(fontSize: 10),
                                    // ),
                                
                                    Text(
                                      "${myBagData[index]["itemPrice"]} Rs",
                                      style: TextStyle(
                                          color: AppColors.primarycolor,
                                          fontWeight: FontWeight.bold),
                                    )
                                      // ),
                                      ,
                                          SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "3 monthly installment",
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
                                      onPress: () {

                                        bounceShowDialog( context,'Order Successfully send');
                                      },
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
                                        bounceShowDialog( context,'Remove From Bag');
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
                                myBagData.length.toString(),
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
                                '37.50 Rs',
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
