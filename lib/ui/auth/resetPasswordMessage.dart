// @dart=2.9
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iqsaat/Widget/appBar.dart';
import 'package:iqsaat/Widget/button.dart';
import 'package:iqsaat/ui/auth/reset_password.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/styles.dart';

class ResetPasswordMessage extends StatelessWidget {
  Widget _body(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: <Widget>[
          Spacer(
            flex: 1,
          ),
          _formContainer(context),
          _lowerContainer(),
        ],
      ),
    );
  }

  _lowerContainer() => Spacer(flex: 3);

  Widget _formContainer(BuildContext context) {
    return Expanded(
        flex: 6,
        // child: ClipRRect(
        //   borderRadius: BorderRadius.circular(30),
        child: Card(
          elevation: 10,
          color: AppColors.backgroundColor,
          shape: RoundedRectangleBorder(
            side: BorderSide.none,
            borderRadius: BorderRadius.circular(40),
          ),
          // child: ClipRRect(
          //   borderRadius: BorderRadius.circular(20),
          //   child: Container(
          //     width: width,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  'Reset Your Password',
                  style:
                      GoogleFonts.poppins(textStyle: TextStyles.normalFontText),
                ),
                Text(
                  'Your request to reset your password has been submitted.\n if an account exists with that email address.\n you will recieve an email with further instructions.',
                  style:
                      GoogleFonts.poppins(textStyle: TextStyles.buttonFontText),
                  textAlign: TextAlign.center,
                ),
                Button(
                  buttonText: 'Ok',
                  buttonColor: AppColors.greyButtonColor,
                  onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (c) => ResetPassword()));
                  },
                  buttonTextStyle: TextStyles.buttonFontText
                      .copyWith(color: AppColors.whiteColor),
                  widthPercent: 0.8,
                ),
              ],
            ),
          ),
          //     ),
          //   ),
          // ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: appBarwithbackIcon(context,"Reset Password Message"),
        body: _body(context),
        resizeToAvoidBottomInset: false,
      ),
    );
  }
}
