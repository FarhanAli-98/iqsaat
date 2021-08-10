import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/appBar.dart';
import 'package:iqsaat/Widget/button/custom_button.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/routes.dart';

class InstallmentTable extends StatelessWidget {
  TextEditingController _titleController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarwithCenterTitle(context, "Installment"),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.only(
                      top: 14.0, left: 10, right: 10, bottom: 5),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          // AppRoutes.push(context, ChatPage());String number, String name, String time, String status ,context,flag
                        },
                        child: buildChatDash(
                            "1", 'june', "23/12/2021", 'paid', context, true),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {
                          // AppRoutes.push(context, ChatPage());String number, String name, String time, String status ,context,flag
                        },
                        child: buildChatDash(
                            "2", 'july', "23/1/2021", 'paid', context, true),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {
                          // AppRoutes.push(context, ChatPage());String number, String name, String time, String status ,context,flag
                        },
                        child: buildChatDash(
                            "3", 'Auguest', "23/2/2021", 'paid', context, true),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {
                          // AppRoutes.push(context, ChatPage());String number, String name, String time, String status ,context,flag
                        },
                        child: buildChatDash("4", 'October', "23/3/2021",
                            'unpaid', context, false),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                // ListView.separated(
                //   shrinkWrap: true,
                //   primary: false,
                //   itemBuilder: (context, index) {
                //     return InkWell(
                //       onTap: () {},
                //       child: Container(
                //         padding: const EdgeInsets.only(top:14.0,left:10,right:10,bottom: 5),
                //         child: Column(
                //           children: [
                //             InkWell(
                //               onTap: () {
                //                 // AppRoutes.push(context, ChatPage());
                //               },
                //               child: buildChatDash(
                //                   "Name",
                //                   'assets/images/profile2.jpeg',
                //                   "09:41 AM",
                //                   'placed order this weekend?'),
                //             ),

                // Row(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     ClipRRect(
                //       borderRadius: BorderRadius.circular(5),
                //       child: Image.asset(
                //         myBagData[index]['itemImage'],
                //         width: 85,
                //         height: 85,
                //       ),
                //     ),
                //     SizedBox(
                //       width: 10,
                //     ),
                //     Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         Padding(
                //           padding: const EdgeInsets.only(top: 3),
                //           child: Container(
                //             width: sizeWidth(context) / 1.6,
                //             child: Text(
                //               myBagData[index]['itemName'],
                //               overflow: TextOverflow.ellipsis,
                //             ),
                //           ),
                //         ),
                //         SizedBox(
                //           height: 10,
                //         ),

                //         Text(
                //           "${myBagData[index]["itemPrice"]} Rs",
                //           style: TextStyle(
                //               color: AppColors.primarycolor,
                //               fontWeight: FontWeight.bold),
                //         )
                //           // ),
                //           ,
                //               SizedBox(
                //           height: 10,
                //         ),
                //         Text(
                //           "3 monthly installment",
                //           style: TextStyle(
                //               color: AppColors.primarycolor,
                //               fontWeight: FontWeight.bold),
                //         )
                //       ],
                //     )
                //   ],
                // ),
                // SizedBox(
                //   height: 20,
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Expanded(
                //       child: Container(
                //         child: CustomButtom(
                //           buttonWidth: sizeWidth(context) / 2.25,
                //           buttonHeight: 45,
                //           buttonColor: AppColors.primarycolor,
                //           onPress: () {

                //             bounceShowDialog( context,'Order Successfully send');
                //           },
                //           text: "Order",
                //         ),
                //       ),
                //     ),
                //     SizedBox(
                //       width: 20,
                //     ),
                //     Expanded(
                //       child: Container(
                //         child: CustomButtom(
                //           buttonWidth: sizeWidth(context) / 2.25,
                //           buttonColor: AppColors.black,
                //           onPress: () {
                //             // Navigator.of(context).push(
                //             //     MaterialPageRoute(
                //             //         builder: (context) =>
                //             //             SignUpScreen()));
                //             bounceShowDialog( context,'Remove From Bag');
                //           },
                //           text: "Remove",
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                //           ],
                //         ),
                //       ),
                //     );
                //   },
                //   separatorBuilder: (context, index) {
                //     return Divider();
                //   },
                //   itemCount: myBagData.length,
                // ),
                SizedBox(
                  height: 10,
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: sizeWidth(context) / 1.5,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total paid Installments',
                                style: TextStyle(),
                              ),
                              Text(
                                '4',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Price per Installment ',
                                style: TextStyle(),
                              ),
                              Text(
                                '10000 Rs',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total paid Amount ',
                                style: TextStyle(),
                              ),
                              Text(
                                '30000 Rs',
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
                    // Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (context) => CheckoutScreen()));

                    bounceShowDialog(context);
                  },
                  text: "Add Installment",
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

  Future bounceShowDialog(BuildContext context) {
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
                            TextFormField(
                              controller: _titleController,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 4, horizontal: 20),
                                  hintText: 'Enter Month',
                                  border: InputBorder.none),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            DropdownSearch<String>(
                                mode: Mode.MENU,
                                showSelectedItem: true,
                                items: ["paid", "Unpaid"],
                                hint: "Status",
                                popupItemDisabled: (String s) =>
                                    s.startsWith('I'),
                                onChanged: (val) {
                                  // educ = val;
                                  // setState(() {
                                  //   print(educ);
                                  // });
                                },
                                selectedItem: "---Installment Status---"),
                            // Container(
                            //   child: Text(
                            //     title,
                            //     style: TextStyle(
                            //       fontSize: 16,
                            //       color: Colors.black,
                            //       fontWeight: FontWeight.bold,
                            //     ),
                            //   ),
                            // ),
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
                              text: "Add",
                            ),
                          ],
                        ),
                      ),
                    ],
                  )));
        });
  }

  Widget buildChatDash(String number, String month, String time, String status,
      context, bool flag) {
    return Container(
        height: MediaQuery.of(context).size.width * 0.2,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: flag == true ? Colors.green[200] : Colors.red[200],
            ),
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              number,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            Text(
              month,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            Text(
              status,
              style: TextStyle(
                fontSize: 16,
                color: flag == true ? Colors.green[200] : Colors.red[200],
              ),
            ),
            Text(
              time,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            )
          ],
        ));
  }
}
