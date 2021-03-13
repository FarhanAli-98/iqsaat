import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/providers_listView_container.dart';
import 'package:iqsaat/Widget/view_service_provider_container.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/colors.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(gradient: AppColor.backgroundColors),
          child: Column(children: [
            Align(
                alignment: Alignment.topRight,
                child: Center(
                    child: Text('Welcome back!',
                        style: TextStyle(color: Colors.black, fontSize: 18)))),
            Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(left: 20, top: 10),
                height: 150,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: AppColor.fillColor.withOpacity(0.50)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircularPercentIndicator(
                          radius: 40.0,
                          lineWidth: 5.0,
                          percent: 0.67,
                          progressColor: AppColors.redColor,
                          backgroundColor: Color(0xffE9E7FF).withOpacity(0.1),
                          footer: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('67%',
                                style:
                                    TextStyle(color: Colors.black, fontSize: 15)),
                          ),
                        ),
                        Text(
                          'Selling Rate',
                          style:
                              TextStyle(color: AppColor.greyColor, fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        CircularPercentIndicator(
                          radius: 40.0,
                          lineWidth: 5.0,
                          percent: 0.53,
                          backgroundColor: Color(0xffE9E7FF).withOpacity(0.1),
                          progressColor: AppColors.primarycolor,
                          footer: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '53%',
                              style: TextStyle(color: Colors.black, fontSize: 15),
                            ),
                          ),
                        ),
                        Text(
                          'Conversion Rate',
                          style:
                              TextStyle(color: AppColor.greyColor, fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        CircularPercentIndicator(
                          radius: 40.0,
                          lineWidth: 5.0,
                          percent: 0.57,
                          backgroundColor: Color(0xffE9E7FF).withOpacity(0.1),
                          progressColor: AppColors.halfWhite,
                          footer: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '57%',
                              style: TextStyle(color: Colors.black, fontSize: 15),
                            ),
                          ),
                        ),
                        Text(
                          'Overall Customer\n          Rating',
                          style:
                              TextStyle(color: AppColor.greyColor, fontSize: 12),
                        )
                      ],
                    )
                  ],
                )),
            SizedBox(
              height: 10,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Recent Request',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                )),
            Container(
              height: 150,
              child: ListView.builder(
                itemBuilder: (BuildContext context, int inedx) {
                  return ProvidersListViewContainer();
                },
                itemCount: 3,
                scrollDirection: Axis.horizontal,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Sent Offer',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                )),
            Container(
              height: 150,
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
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
                            flex: 2,
                            child: Column(
                              children: [
                                Image.asset('assets/images/Ellipse40.png'),
                              ],
                            )),
                        Expanded(
                            flex: 8,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'SINGER NEEDED!',
                                        style: TextStyle(
                                            color: AppColor.green,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Image.asset('assets/images/Path421.png'),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 05),
                                    child: RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                          text: 'Posted by ',
                                          style: TextStyle(
                                              color: Colors.black
                                                  .withOpacity(0.55))),
                                      TextSpan(text: ' Johnny_D')
                                    ])),
                                  ),
                                  SizedBox(
                                    height: 03,
                                  ),
                                  Text(
                                    'BUDGET : \$320',
                                    style: TextStyle(color: AppColor.textBlue),
                                  ),
                                  SizedBox(
                                    height: 05,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(bottom: 08, top: 05),
                                    height: 02,
                                    width: 240,
                                    color: AppColor.greyColor,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 02),
                                    height: 25,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color:
                                            AppColor.fillColor.withOpacity(0.5),
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
                                          'View Sent Offer',
                                          style: TextStyle(
                                              color: Colors.black, fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                ])),
                      ]));
                },
                itemCount: 3,
                scrollDirection: Axis.horizontal,
              ),
            ),
             Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          
              SizedBox(
                height: 10,
              ),
              ServiceProviderContainer(),
              SizedBox(
                height: 10,
              ),
              
              ServiceProviderContainer(),
              
           
            ],
          ),
        
          
          
          
          
          
          ]),
        ),
      ),
    );
  }
}
