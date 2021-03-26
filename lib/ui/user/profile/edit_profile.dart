import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iqsaat/Widget/button.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/styles.dart';


class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
    
    
  @override
  Widget build(BuildContext context) {
   
    
    return Scaffold(
       appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(gradient: AppColors.background),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Stack(children: [
                          Image.asset('assets/images/profiilepic.png'),
                          Positioned(
                              top: 70,
                              left: 67,
                              child: Container(
                                height: 22,
                                width: 22,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                ),
                                child: Center(
                                  child: Icon(
                                    FontAwesomeIcons.edit,
                                    color: AppColors.skyBlueColor,
                                    size: 15,
                                  ),
                                ),
                              ))
                        ]),
                        Text(
                          'John Doe',
                          style: TextStyle(color: AppColors.primarycolor, fontSize: 20),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, bottom: 10),
                          padding: EdgeInsets.only(left: 08, right: 08),
                          decoration: BoxDecoration(
                              color: AppColors.primarycolor.withOpacity(0.30),
                              borderRadius: BorderRadius.circular(25)),
                          width: 360,
                          height: 35,
                          child: Row(
                            children: [
                              Icon(
                                Icons.phone,
                                color: AppColors.primarycolor,
                                size: 18,
                              ),
                              SizedBox(
                                width: 05,
                              ),
                              Text(
                                '+1 123-456-1234',
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              Icon(
                                Icons.location_on_outlined,
                                color: AppColors.primarycolor,
                              ),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    '8614, Macclellan road, New york\n                                  United States',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white),
                                  ))
                            ],
                          ),
                        ),
                      ]),
                ),
                Text(
                  'Full Name',
                  style: TextStyle(color: AppColors.primarycolor),
                ),
                Container(
                  padding: EdgeInsets.all(05),
                  height: 25,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.primarycolor.withOpacity(0.5),
                      boxShadow: [
                        BoxShadow(
                            color: AppColors.primarycolor.withOpacity(0.30),
                            offset: Offset(0, 4),
                            blurRadius: 1)
                      ]),
                  child: Text(
                    'John Doe',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: AppColors.primarycolor,
                    ),
                    Text(
                      'Phone number',
                      style: TextStyle(color: AppColors.primarycolor),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(05),
                  height: 25,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.primarycolor.withOpacity(0.5),
                      boxShadow: [
                        BoxShadow(
                            color: AppColors.primarycolor.withOpacity(0.30),
                            offset: Offset(0, 4),
                            blurRadius: 1)
                      ]),
                  child: Row(
                    children: [
                      Image.asset('assets/images/Group100.png'),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        '+1 123-456-1234',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: AppColors.primarycolor,
                    ),
                    Text(
                      'Address',
                      style: TextStyle(color: AppColors.primarycolor),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 05, left: 15),
                  height: 25,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.primarycolor.withOpacity(0.5),
                      boxShadow: [
                        BoxShadow(
                            color: AppColors.primarycolor.withOpacity(0.30),
                            offset: Offset(0, 4),
                            blurRadius: 1)
                      ]),
                  child: Text(
                    '8614, Macclellan road, New york,United States',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Your Location',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Text(
                      'Edit',
                      style: TextStyle(color: AppColors.primarycolor),
                    ),
                  ],
                ),
                Center(
                  child: Image.asset(
                    'assets/images/map.png',
                  ),
                ),
                  Button(
                    buttonText: 'Login',
                    buttonColor: AppColors.primarycolor,
                    onTap: () {

                   
                    },
                    buttonTextStyle: TextStyles.buttonFontText,
                    widthPercent: 0.9,
                  ),
              ]),
        ));
  }
}
