
import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/appBar.dart';
import 'package:iqsaat/Widget/button/custom_button.dart';
import 'package:iqsaat/utils/app_colors.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key key}) : super(key: key);

  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: appBarwithCenterTitle(context,"Contact Us"),
      body: SingleChildScrollView(
        child: Container(
          color:Colors.white,
          padding: EdgeInsets.only(left: 10,right: 10,top: 20),
          child: Column(
          

            children: [
              Container(
                height: MediaQuery.of(context).size.height * .21,
                width: MediaQuery.of(context).size.width*0.9,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * .05,
                          width: MediaQuery.of(context).size.width * 0.55,
                          child: Row(
                            children: [
                              Container(
                                  margin: EdgeInsets.only(left: 15),
                                  child: Image(
                                      image: AssetImage(
                                          'assets/appIcons/googleLogo.png'))),
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                child: Text('IQsaat@gmail.com'),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * .05,
                          width: MediaQuery.of(context).size.width * 0.55,
                          child: Row(
                            children: [
                              Container(
                                  margin: EdgeInsets.only(left: 15),
                                  child: Image(
                                      image: AssetImage(
                                          'assets/appIcons/phone.png'))),
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                child: Text('+ 974 3099 6663'),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * .05,
                          width: MediaQuery.of(context).size.width * 0.55,
                          padding: EdgeInsets.only(top: 10, left: 15),
                          child: Text(
                            'Follow us',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                        ),
                        // Container(
                        //     height: MediaQuery.of(context).size.height * .05,
                        //     width: MediaQuery.of(context).size.width * 0.55,
                        //     child: Row(
                        //       mainAxisAlignment: MainAxisAlignment.spaceAround,
                        //       children: [
                        //         Image.asset(
                        //             'assets/icons/facebook.jpeg'),
                        //         Image.asset('assets/icons/youtube.jpeg'),
                        //         Image.asset(
                        //             'assets/icons/twitter.jpeg'),
                        //         Image.asset(
                        //             'assets/icons/google.jpeg'),
                        //         Image.asset('assets/icons/insta.jpeg')
                        //       ],
                        //     )),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * .07,
                    width: MediaQuery.of(context).size.width * .9,
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      'Get in Touch',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: MediaQuery.of(context).size.height * .07,
                    width: MediaQuery.of(context).size.width * .9,
                    child: TextField(
                
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Name',
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: MediaQuery.of(context).size.height * .07,
                    width: MediaQuery.of(context).size.width * .9,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Email Adress',
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: MediaQuery.of(context).size.height * .07,
                    width: MediaQuery.of(context).size.width * .9,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Phone',
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: MediaQuery.of(context).size.height * .2,
                    width: MediaQuery.of(context).size.width * .9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                          hintText: "Comments",
                          isDense: true,
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black))),
                      maxLines: 6,
                    ),
                  ),
                  SizedBox(height: 20),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                        child: CustomButtom(
                        buttonWidth: MediaQuery.of(context).size.width * .9,
                        buttonHeight: 60,
                        buttonColor: AppColors.primarycolor,
                        onPress: () {},
                        text: "Submit",
                      ),
                      ),
                   ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}