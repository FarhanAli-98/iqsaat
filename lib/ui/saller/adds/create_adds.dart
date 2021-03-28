import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/button.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/routes.dart';
import 'package:iqsaat/utils/styles.dart';

class ProductDashbord extends StatefulWidget {
  @override
  _ProductDashbordState createState() => _ProductDashbordState();
}

class _ProductDashbordState extends State<ProductDashbord> {
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.primarycolor,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: AppColors.primarycolor,
        title: Text(
          'Profile',
          // style: Styles.heading,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 12),
              Text(
                "Profile manager",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 22),
              Expanded(
                flex: 10,
                child: Container(
                   
                   
                    child: ListView.builder(
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                            child: Row(
                          children: [
                            ClipRRect(
               
                              child: Container(
                                margin: EdgeInsets.all(05),
                                height: 120,
                                width: 120,
                                decoration: BoxDecoration(color: Colors.white,
                                    // borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                          color: AppColors.greyColor
                                              .withOpacity(.2),
                                          // offset: Offset(5, -10),
                                          spreadRadius: 1,
                                          blurRadius: 1),
                                    ]),
                                child: Column(
                                  children: [
                                    Container(
                                        height: 75,
                                        width: 100,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/LED.jpg'),
                                                fit: BoxFit.cover))),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5.0, right: 05, bottom: 05),
                                      child: Text(
                                        'Name 200',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            ClipRRect(
                              //  borderRadius: BorderRadius.circular(15),
                              child: Container(
                                margin: EdgeInsets.all(05),
                                height: 120,
                                width: 120,
                                decoration: BoxDecoration(color: Colors.white,
                                    //  borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                          color: AppColors.greenColor
                                              .withOpacity(.2),
                                          // offset: Offset(5, -10),
                                          spreadRadius: 3,
                                          blurRadius: 5),
                                    ]),
                                child: Column(
                                  children: [
                                    Container(
                                        height: 75,
                                        width: 100,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/LED.jpg'),
                                                fit: BoxFit.cover))),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5.0, right: 05, bottom: 05),
                                      child: Text(
                                        'Name 200',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ));
                      },
                      itemCount: 3,
                      scrollDirection: Axis.vertical,
                    )),
              ),
              SizedBox(height: 12),
              Button(
                buttonText: 'Ok',
                buttonColor: AppColors.primarycolor,
                onTap: () {
                  AppRoutes.pop(context);
                },
                buttonTextStyle: TextStyles.buttonFontText,
                widthPercent: 0.8,
              ),
              SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }

 
}
