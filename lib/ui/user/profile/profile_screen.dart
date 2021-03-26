import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iqsaat/utils/app_colors.dart';

import 'edit_profile.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool switchValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
        ),
      body: Container(
        padding: EdgeInsets.all(15),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(gradient: AppColors.background),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => EditProfile()));
                  },
                  child: Icon(
                    FontAwesomeIcons.edit,
                    color: AppColors.primarycolor,
                  ),
                )
              ],
            ),
            Container(
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/images/profiilepic.png'),
                  Text(
                    'John Doe',
                    style:
                        TextStyle(color: AppColors.primarycolor, fontSize: 20),
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
                          style: TextStyle(color: Colors.black),
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
                              style:
                                  TextStyle(fontSize: 10, color: Colors.black),
                            ))
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        'My Personal Balance:  \$0.00',
                        style: TextStyle(color: AppColors.primarycolor),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Text('My Servlly',
                style: TextStyle(color: Colors.black, fontSize: 18)),
            Row(
              children: [
                Icon(FontAwesomeIcons.heart, color: AppColors.primarycolor),
                SizedBox(
                  width: 15,
                ),
                Text('Saved Service Providers',
                    style: TextStyle(
                      color: Colors.black,
                    ))
              ],
            ),
            Row(
              children: [
                Icon(FontAwesomeIcons.folder, color: AppColors.primarycolor),
                SizedBox(
                  width: 15,
                ),
                Text('My interest',
                    style: TextStyle(
                      color: Colors.black,
                    ))
              ],
            ),
            Text('Buying',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                )),
            Row(
              children: [
                Icon(Icons.ballot_outlined, color: AppColors.primarycolor),
                SizedBox(
                  width: 15,
                ),
                Text('Manage Booking',
                    style: TextStyle(
                      color: Colors.black,
                    )),
              ],
            ),
            Row(
              children: [
                Image.asset('assets/images/Group92.png',
                    color: AppColors.primarycolor),
                SizedBox(
                  width: 15,
                ),
                Text('Post a request',
                    style: TextStyle(
                      color: Colors.black,
                    )),
              ],
            ),
            Row(
              children: [
                Image.asset('assets/images/File.png',
                    color: AppColors.primarycolor),
                SizedBox(
                  width: 15,
                ),
                Text('Manage request',
                    style: TextStyle(
                      color: Colors.black,
                    )),
              ],
            ),
            Text('General',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                )),
            Row(
              children: [
                Image.asset('assets/images/layer1.png',
                    color: AppColors.primarycolor),
                SizedBox(
                  width: 15,
                ),
                Text('Online Status',
                    style: TextStyle(
                      color: Colors.black,
                    )),
                SizedBox(
                  width: 150,
                ),
                CupertinoSwitch(
                    activeColor: AppColors.primarycolor,
                    value: switchValue,
                    onChanged: (value) {
                      setState(() {
                        switchValue = value;
                      });
                    }),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.payment_outlined,
                  color: AppColors.primarycolor,
                ),
                SizedBox(
                  width: 15,
                ),
                Text('Payment',
                    style: TextStyle(
                      color: Colors.black,
                    )),
              ],
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/Group94.png',
                  color: AppColors.primarycolor,
                ),
                SizedBox(
                  width: 15,
                ),
                Text('Invite Friends ',
                    style: TextStyle(
                      color: Colors.black,
                    )),
              ],
            ),
            Row(
              children: [
                Icon(Icons.headset_mic_outlined, color: AppColors.primarycolor),
                SizedBox(
                  width: 15,
                ),
                Text('Support',
                    style: TextStyle(
                      color: Colors.black,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
