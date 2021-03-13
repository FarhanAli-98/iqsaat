import 'package:flutter/material.dart';
import 'package:iqsaat/utils/colors.dart';


class ServiceProviderContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
              children: [
                Container(
                  height: 115,
                  width: 130,
                  decoration: BoxDecoration(
                    color: Color(0xff545454).withOpacity(0.4),
                    boxShadow: [
                      BoxShadow(color: AppColor.green.withOpacity(0.3), offset: Offset(0, 5))
                    ],
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    children: [
                       Container(
                        width:130,
                        height:70,
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/rect.png'),fit: BoxFit.cover ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top:5,right: 05),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Image.asset('assets/images/G84.png')),
                    )
                      ),
                      
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('DJ Artist',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              )))
                    ],
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Container(
                  height: 115,
                  width: 130,
                  decoration: BoxDecoration(
                    color: Color(0xff545454).withOpacity(0.4),
                    boxShadow: [
                      BoxShadow(color: AppColor.green.withOpacity(0.3), offset: Offset(0, 5))
                    ],
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width:130,
                        height:70,
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/Rectangle.png'),fit: BoxFit.cover ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top:5,right: 05),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Image.asset('assets/images/G84.png')),
                    )
                      ),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Gutar Trainer',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ))
                    ],
                  ),
                ),
              ],
            );
  }
}