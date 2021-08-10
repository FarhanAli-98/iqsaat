import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/appBar.dart';
import 'package:iqsaat/Widget/button/custom_button.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/routes.dart';

class MyInstallmentTable extends StatelessWidget {

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
        ],
      ),
    );
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
