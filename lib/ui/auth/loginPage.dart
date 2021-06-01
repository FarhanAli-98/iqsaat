import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iqsaat/Widget/button.dart';
import 'package:iqsaat/Widget/textField.dart';
import 'package:iqsaat/hive/user_box.dart';
import 'package:iqsaat/models/postModels/user.dart';
import 'package:iqsaat/provider/login_provider.dart';
import 'package:iqsaat/ui/Buyer/home_screen.dart';
import 'package:iqsaat/ui/Seller/home/dashboard/sellerHome.dart';
import 'package:iqsaat/ui/Seller/profile/shop_profile.dart';
import 'package:iqsaat/ui/auth/password_reset.dart';
import 'package:iqsaat/ui/auth/signup_Page.dart';

import 'package:iqsaat/ui/user/home/user_home.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/routes.dart';
import 'package:iqsaat/utils/styles.dart';
import 'package:provider/provider.dart';

import '../../main.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double width, height;
  bool _isloading = false;
  LoginProvider loginProvider;
  final _formKey = GlobalKey<FormState>();
  UserBox userBox;
  User user;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool validateAndSave() {
    final form = _formKey.currentState;
    form.save();
    if (form.validate()) {
      return true;
    } else {
      return false;
    }
  }

  void showMessage(msg) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM);
  }

  void addUserToHive(UserBox userB) async {
    boxUser.add(userB);
    try {
      print('this is the box length' + boxUser.length.toString());
      res = boxUser.get(0) as UserBox;

      print("User box =  = " + res.email.toString());
      print("User box =  = " + res.userId);
      try {
        if (res.role == null) {
          print("roll null Store");
          AppRoutes.replace(context, LoginPage());
        } else if (res.role == "buyer") {
          AppRoutes.replace(context, HomePage());
        } else if (res.role == "seller") {
           if (res.shopId == null) {  
          print(res.shopId);
          print('shopId id null');
          AppRoutes.replace(context, ShopProfile());
           }
           else{
             AppRoutes.replace(context, SellerHomePage());
           }
          //   else if (res.adLength == null || res.adLength <= 0) {
          //   print(res.adLength);
          //   print('ad was null');
          //   AppRoutes.replace(context, AddAdvertisementPage());
          // } 
          // else if (res.paid == false) {
          //   print(res.paid);
          //   print('not paid');
          //   AppRoutes.replace(context, SubscriptionPage());
         
        }
        
        else{

           showMessage("Role not verified");
        }
        showMessage("Seccessfully login");
      } catch (error) {
        print('error is coming up');
        showMessage(error);
      }
    } catch (e) {
      print("Exception foound is  = " + e.toString());
    }
  }

  void validateAndSubmit(BuildContext context) async {
    if (validateAndSave()) {
      await Provider.of<LoginProvider>(context, listen: false)
          .loginResponse(_emailController.text, _passwordController.text)
          .then((value) => ({
                if (loginProvider.loginModel != null)
                  {
                    showMessage("Login Seccessfully"),
                    print("Add check"),
                    if (loginProvider.loginModel != null)
                      {
                        setState(() {
                          user = loginProvider.loginModel.data.user;
                        }),
                        print('my id is ' + user.id),
                        print(
                            "Get response" + user.displayPictureUrl.toString()),
                        userBox = UserBox(
                          email: user.email,
                          firstName: user.firstName,
                          lastName: user.lastName,
                          photo: user.displayPictureUrl,
                          accessToken:
                              loginProvider.loginModel.data.accessToken,
                          refreshToken:
                              loginProvider.loginModel.data.user.refreshToken,
                          userId: user.id,
                          shopId: null,
                          role: user.role,
                          cnic: user.cnic,
                          phone: user.contactNumber,
                        ),
                        print("---Email before save---->" +
                            userBox.email.toString()),
                        addUserToHive(userBox),
                      }
                  }
                else
                  {showMessage("Login Model face null")}
              }));
    } else {
      showMessage("Faild to Login Attempet");
    }
  }

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
                validateAndSubmit(context);
              },
              buttonTextStyle: TextStyles.buttonFontText,
              widthPercent: 0.8,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (c) => SignUpPage()));
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
                    "Login as a Seller? :  ",
                    textAlign: TextAlign.end,
                    style: TextStyle(color: Colors.black38),
                  ),
                  Text(
                    "For ForentEnd! ",
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
                AppRoutes.replace(context, HomePage());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "Login as a buyer? :  ",
                    textAlign: TextAlign.end,
                    style: TextStyle(color: Colors.black38),
                  ),
                  Text(
                    "For Forentend ",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: AppColors.primarycolor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            // GestureDetector(
            //   onTap: () {

            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (c) => HomeScreen()));
            //   },
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.end,
            //     children: <Widget>[
            //       Text(
            //         "Login as a Buyer? :  ",
            //         textAlign: TextAlign.end,
            //         style: TextStyle(color: Colors.black38),
            //       ),
            //       Text(
            //         "Click Now! ",
            //         textAlign: TextAlign.end,
            //         style: TextStyle(
            //           color: AppColors.primarycolor,
            //           fontWeight: FontWeight.bold,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    loginProvider = Provider.of<LoginProvider>(context);
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

  void showMessage(msg) {
    Fluttertoast.showToast(
        msg: msg,
        textColor: AppColors.greyColor,
        backgroundColor: Colors.white);
  }