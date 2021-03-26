import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:iqsaat/Widget/button.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/styles.dart';

double width, height;

class HelpResponse extends StatelessWidget {
  Widget _body(BuildContext context) {
    return ListView(
      children: <Widget>[
        // Container(
        //   margin: EdgeInsets.only(top: 5),

        Container(
            margin: EdgeInsets.only(top: 32, left: 16, right: 16),
            width: double.infinity,
            child: Card(
              elevation: 9.0,
              shape: RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Container(
                height: height * 0.6,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 45.0,
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          'Your request for help has been sent.\n We will respond as quickly as possible',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyles.buttonFontText),
                        ),
                        // TextFields.largeTextField(context),
                        Button(
                          buttonText: 'Ok',
                          buttonColor: AppColors.primarycolor,
                          onTap: () {
                            Navigator.pop(context);
                          },
                          buttonTextStyle: TextStyles.buttonFontText,
                          widthPercent: 0.7,
                        ),
                      ]),
                ),
              ),
            )),
      ],
    );
  }
Widget appBarwithbackIcon(BuildContext context) {
  return AppBar(
    elevation: 0.0,
    backgroundColor: Colors.white,
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back_ios,
        color: Colors.grey,
      ),
      onPressed: () => Navigator.pop(context),
    ),
  );
}
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: appBarwithbackIcon(context),
        body: _body(context),
        resizeToAvoidBottomPadding: false,
      ),
    );
  }
}
