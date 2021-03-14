import 'package:flutter/material.dart';
import 'package:iqsaat/utils/colors.dart';


class ProvidersListViewContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
                height: 150,
                width: 330,
                padding: EdgeInsets.all(08),
                margin: EdgeInsets.all(08),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: AppColor.fillColor.withOpacity(0.30)),
                child: Row(children: [
                  Expanded(
                      flex: 5,
                      child: Column(
                        children: [
                          Image.asset('assets/images/provider.png'),
                        ],
                      )),
                  Expanded(
                      flex: 10,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'PRODUCTS NEEDED!',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'BUDGET : \$320',
                                  style: TextStyle(color: AppColor.textBlue),
                                )
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, bottom: 05),
                              child: RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: 'Posted by ',
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.55))),
                                TextSpan(text: ' Farhan')
                              ])),
                            ),
                            Center(
                              child: Text(
                                '3 min ago',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 04),
                              ),
                            ),
                            SizedBox(
                              height: 05,
                            ),
                            Text(
                              'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam\nnonumy eirmod tempor invidunt ut labore et dolore magna aliquyam\nerat, sed diam voluptua. At vero eos et accusam et justo duo dolores et',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 6),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 02),
                              height: 25,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: AppColor.fillColor.withOpacity(0.5),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0xff6AB5D5),
                                        blurRadius: 1.5,
                                        offset: Offset(0, 2))
                                  ]),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Send Order',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  ),
                                  SizedBox(
                                    height: 03,
                                  ),
                                  Container(
                                    height: 03,
                                    width: 60,
                                    color: Color(0xff6AB5D5),
                                  )
                                ],
                              ),
                            ),
                          ])),
                ]));
  }
}