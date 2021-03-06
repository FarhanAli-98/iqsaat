import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iqsaat/Widget/appBar.dart';
import 'package:iqsaat/Widget/button.dart';
import 'package:iqsaat/Widget/textField.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/routes.dart';
import 'package:iqsaat/utils/styles.dart';


import 'loginPage.dart';
import 'resetPasswordMessage.dart';

class PasswordReset extends StatefulWidget {
  @override
  _PasswordResetState createState() => _PasswordResetState();
}

class _PasswordResetState extends State<PasswordReset> {
  final _formKey = GlobalKey<FormState>();

  bool submit = false;

  final TextEditingController emailController = TextEditingController();

  bool validateAndSave() {
    final form = _formKey.currentState;
    form.save();
    if (form.validate()) {
      return true;
    } else {
      return false;
    }
  }



  Widget _body(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            Spacer(
              flex: 1,
            ),
            _formContainer(context),
            _lowerContainer(),
          ],
        ),
      ),
    );
  }

  _lowerContainer() => Spacer(flex: 3);

  Widget _formContainer(BuildContext context) {
    return Expanded(
        flex: 6,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 10,
                ),
              ]),
          child: Card(
            elevation: .5,
            shape: RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: !submit
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          'Reset Your Password',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyles.normalFontText),
                        ),
                        TextFields.emailTextField(context,
                            hintText: 'Email',
                            controller: emailController,
                            validaterMsg: 'Email Address is Invalid'),
                        Button(
                          buttonText: 'Reset Your Password',
                          buttonColor: AppColors.primarycolor,
                           onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (c) => ResetPasswordMessage())),
                      
                          buttonTextStyle: TextStyles.buttonFontText,
                          widthPercent: 0.8,
                        ),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          'Reset Your Password',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyles.normalFontText),
                        ),
                        Text(
                          'Your request to reset your password has been submitted.\n if an account exists with that email address.\n you will recieve an email with further instructions.',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyles.buttonFontText),
                          textAlign: TextAlign.center,
                        ),
                        Button(
                          buttonText: 'Ok',
                          buttonColor: AppColors.greyButtonColor,
                          onTap: () {
                            AppRoutes.makeFirst(context, LoginPage());
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
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(gradient: AppColors.background),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: appBarwithbackIcon(context,"Password Reset"),
          body: _body(context),
          resizeToAvoidBottomInset: false,
        ),
      ),
    );
  }
}
