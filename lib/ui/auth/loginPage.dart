import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iqsaat/Widget/button.dart';
import 'package:iqsaat/Widget/textField.dart';
import 'package:iqsaat/ui/Buyer/home_screen.dart';
import 'package:iqsaat/ui/auth/password_reset.dart';
import 'package:iqsaat/ui/auth/signup_Page.dart';
import 'package:iqsaat/ui/saller/home/saller_home.dart';
import 'package:iqsaat/ui/saller/profile/shop_profile.dart';

import 'package:iqsaat/ui/user/home/user_home.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/routes.dart';
import 'package:iqsaat/utils/styles.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double width, height;
  bool _isloading = false;
  final _formKey = GlobalKey<FormState>();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  // Future<void> validateAndSubmit() async {
  //   if (validateAndSave()) {
  //     await Provider.of<LoginProvider>(context, listen: false)
  //         .loginResponse(_emailController.text, _passwordController.text)
  //         .then((value) => ({
  //               //print("Add check"),
  //               if (loginProvider.userModel != null)
  //                 {
  //                   userToken = UserToken(
  //                     loginProvider.userModel.data.accessToken,
  //                     loginProvider.userModel.data.user.refreshToken,
  //                     loginProvider.userModel.data.user.id,
  //                     loginProvider.userModel.data.user.role,
  //                   ),
  //                   addData(userToken)
  //                 }
  //             }));
  //   }
  // }

  Widget _body(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: height * 0.06),
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Form(
        key: _formKey,
        child: ListView(
          children: <Widget>[
            _loginFormContainer(context),
            SizedBox(
              height: height * 0.03,
            ),
            //  _lowerButtonsContainer(),
          ],
        ),
      ),
    );
  }

  Widget _loginFormContainer(BuildContext context) {
    return Container(
      height: height * 0.8,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Container(
                height: 160,
                width: 170,
                child: Image.asset(
                  'assets/appIcons/iqsaat.jpeg',
                   scale: 0.01,
                ),
              ),
            ),

          
            TextFields.emailTextField(context,
                hintText: 'Email Address',
                controller: _emailController,
                validaterMsg: 'Enter valid Email'),
            TextFields.passwordTextField(context,
                hintText: "Password",
                controller: _passwordController,
                // fieldValue: _password,
                validaterMsg: 'Password cannot be less than 6'),
            InkWell(
              onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (c) => PasswordReset())),
                child: Text(
                  'Forget Password?',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyles.buttonFontText.copyWith(
                    color: AppColors.greyTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  )),
                )),
            Button(
              buttonText: 'Login',
              buttonColor: AppColors.primarycolor,
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (c) => HomePage()));
                // validateAndSubmit().then((value) => () {
                //       loginProvider.userModel == null
                //           ? print('user is null')
                //           : Navigator.pushReplacement(
                //               context,
                //               MaterialPageRoute(
                //                   builder: (c) => HomePage()));
                //     });
              },
              buttonTextStyle: TextStyles.buttonFontText,
              widthPercent: 0.8,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (c) => SignUpPage()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "Don’t have an account? : ",
                    textAlign: TextAlign.end,
                    style: TextStyle(color: Colors.black38),
                  ),
                  Text(
                    "Register Now ",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: AppColors.primarycolor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {

                   AppRoutes.replace(context, ShopProfile());
               
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "Login as a Saller? :  ",
                    textAlign: TextAlign.end,
                    style: TextStyle(color: Colors.black38),
                  ),
                  Text(
                    "Click Now! ",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: AppColors.primarycolor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
           
              
                Navigator.push(context,
                    MaterialPageRoute(builder: (c) => HomeScreen()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "Login as a Buyer? :  ",
                    textAlign: TextAlign.end,
                    style: TextStyle(color: Colors.black38),
                  ),
                  Text(
                    "Click Now! ",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: AppColors.primarycolor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    //  loginProvider = Provider.of<LoginProvider>(context);
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(gradient: AppColors.background),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            child: Stack(
              children: <Widget>[
                Container(
                  child: _body(context),
                ),
                _isloading
                    ? Container(
                        color: Colors.white.withOpacity(0.6),
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
