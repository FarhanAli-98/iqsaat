import 'package:flutter/material.dart';
import 'package:iqsaat/utils/colors.dart';

class HomeScreenWidget extends StatefulWidget {
  @override
  _HomeScreenWidgetState createState() => _HomeScreenWidgetState();
}

class _HomeScreenWidgetState extends State<HomeScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
                                    padding: EdgeInsets.all(05),
                                    height: 30,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      color: AppColor.fillColor.withOpacity(0.3),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Row(
                                      children: [
                                        Image.asset('assets/images/14.png'),
                                        SizedBox(width: 10),
                                        Text(
                                          'Kylie Marson',
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 10),
                                        )
                                      ],
                                    ),
                                  );
  }
}