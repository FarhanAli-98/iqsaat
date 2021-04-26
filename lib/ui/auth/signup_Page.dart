import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:iqsaat/Widget/appBar.dart';
import 'package:iqsaat/Widget/button.dart';
import 'package:iqsaat/Widget/headerText.dart';
import 'package:iqsaat/Widget/textField.dart';
import 'package:iqsaat/provider/signup_provider.dart';
import 'package:iqsaat/ui/auth/terms_and_condition.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/styles.dart';
import 'package:provider/provider.dart';
import 'loginPage.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  double width, height;
RegisterProvider registerProvider;
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
    TextEditingController _addressController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _cnicController = TextEditingController();
   var phonemaskFormatter = new MaskTextInputFormatter(
      mask: '#### #######', filter: {"#": RegExp(r'[0-9]')});
      var cnicmaskFormatter = new MaskTextInputFormatter(
      mask: '#####-#######-#', filter: {"#": RegExp(r'[0-9]')});

  int selectedRadio;
//images
  Dio dio = new Dio();
  File _image;
  final picker = ImagePicker();
  bool _isloading = false;
  String imageUrl;
  String  role = 'consumer';
  String advertiser;
  bool isAdvertiser, isClicked = false;
  String getid;
  final _formKey = GlobalKey<FormState>();
  final dateFormat = DateFormat('dd-MM-yyyy');

  bool validateAndSave() {
    final form = _formKey.currentState;
    form.save();
    if (form.validate()) {
      return true;
    } else {
      return false;
    }
  }
    void validateAndSubmit(context) {
    if (validateAndSave()) {
      if (false) {
        Fluttertoast.showToast(
            msg: "Please select a Honorific value",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM // also possible "TOP" and "CENTER"
            );
      } else {
        Provider.of<RegisterProvider>(context, listen: false)
            .registerResponse(
              _firstNameController.text,
               _lastNameController.text,
               _phoneController.text,
               _cnicController.text,
                _emailController.text,
                _passwordController.text,
                role,
                _image)
            .then((value) {
        

      
          // Navigator.pushReplacement(context,
          //                 MaterialPageRoute(builder: (c) => LoginPage()));
       









          /* if (_image != null) {
            uploadImage(_image, context);
          }
          if (value) {
            Fluttertoast.showToast(
                msg: "Successfully Create Account",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM // also possible "TOP" and "CENTER"
                );
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    title: Text(''),
                    content: Text(
                        "An email has been sent to you, kindly click on the link to verfiy your email."),
                  );
                });
            _emailController.text = "";
            _firstNameController.text = "";
            honorificValue = "Mr.";
            _lastNameController.text = "";
            _passwordController.text = "";
            _confirmPassController.text = "";
            role = "Consumer";
            isAdvertiser = false;
            selectedRadio = 1;
            _image = null;
          } else {
            Fluttertoast.showToast(
                msg: "Failed to Create an Account",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM // also possible "TOP" and "CENTER"
                );
          } */
        });
      }
    } else {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              title: Text("Syntax Error"),
              content: Text("Please Enter valid information"),
            );
          });
    }
  }

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
    isAdvertiser = false;
  }

  Widget _body(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 15),
          child: Stack(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(top: 32, left: 16, right: 16),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 10,
                        )
                      ]),
                  child: Form(
                    key: _formKey,
                    child: Card(
                      // elevation: 9.0,
                      shape: RoundedRectangleBorder(
                        side: BorderSide.none,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 45.0,
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              textFieldHeader(
                                'First Name',
                              ),
                              Center(
                                  child: TextFields.normalTextField(context,
                                      // fieldValue: _firstName,
                                      controller: _firstNameController,
                                      validaterMsg: ' Name cannot be empty')),
                                      textFieldHeader(
                                'Last Name',
                              ),
                              Center(
                                  child: TextFields.normalTextField(context,
                                      // fieldValue: _firstName,
                                      controller: _lastNameController,
                                      validaterMsg: ' Name cannot be empty')),
                              textFieldHeader('Address'),
                              Center(
                                  child: TextFields.normalTextField(context,
                                       
                                      controller: _addressController,
                                      validaterMsg: 'Address cannot be empty')),
                              textFieldHeader('Phone Number'),
                              Center(
                                  child: TextFields.maskTextField(context,
                                      inputFormatters: [phonemaskFormatter],
                                      controller: _phoneController,
                                      validaterMsg:
                                          'Phone Number cannot be empty')),
                              textFieldHeader('CNIC'),
                              Center(
                                  child: TextFields.maskTextField(context,
                                       inputFormatters: [cnicmaskFormatter],
                                      controller: _cnicController,
                                      validaterMsg: 'CNIC cannot be empty')),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 5.0, horizontal: 25.0),
                                child: RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                      text: 'Email Address',
                                      style: TextStyles.headerFontText),
                                  TextSpan(
                                      text: '*',
                                      style: TextStyle(color: Colors.red))
                                ])),
                              ),
                              Center(
                                  child: TextFields.emailTextField(context,
                                      // fieldValue: _email,
                                      controller: _emailController,
                                      validaterMsg:
                                          'Enter the correct email;')),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 5.0, horizontal: 25.0),
                                child: RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                      text: 'Password',
                                      style: TextStyles.headerFontText),
                                  TextSpan(
                                      text: '*',
                                      style: TextStyle(color: Colors.red))
                                ])),
                              ),
                              Center(
                                  child: TextFields.passwordTextField(context,

                                      // fieldValue: _password,
                                      controller: _passwordController,
                                      validaterMsg:
                                          'Password cannot be less than 8 letters')),
                              textFieldHeader('Confirm Password'),
                              Center(
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(60),
                                      border: Border.all(
                                        color: Colors.grey[300],
                                      )),
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  child: TextFormField(
                                      obscureText: true,
                                      decoration: new InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 4),
                                          fillColor: Colors.white,
                                          errorStyle: TextStyles.buttonFontText
                                              .copyWith(
                                                  fontSize: 10,
                                                  color: AppColors.redColor),
                                          border: InputBorder.none),
                                      validator: (value) {
                                        if (value.isEmpty)
                                          return 'Confirm Password cannot be Empity';
                                        if (value != _passwordController.text)
                                          return 'Password Not Match';
                                        return null;
                                      },
                                      style: GoogleFonts.poppins(
                                          textStyle:
                                              TextStyles.textFieldFontText)),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 15, right: 15),
                                child: Row(
                                  children: <Widget>[
                                    Checkbox(
                                      activeColor: Colors.green,
                                      value: isAdvertiser,
                                      onChanged: (value) {
                                        setState(() {
                                          isAdvertiser = value;
                                          if(isAdvertiser)
                                          {
                                            role = "advertiser";
                                          }
                                          else{
                                             role = "consumer";
                                          }
                                        });
                                      },
                                    ),
                                    Text(
                                      "Continue to register as an Saller",
                                      style: TextStyle(fontSize: 14),
                                      // maxLines: 2,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 15, right: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Checkbox(
                                      activeColor: Colors.green,
                                      value: isClicked,
                                      onChanged: (value) {
                                        setState(() {
                                          isClicked = value;
                                        });
                                      },
                                    ),
                                    Text(
                                      "I have read & accept ",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(color: Colors.black38),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (BuildContext
                                                        context) =>
                                                    TermsAndConditionScreen()));
                                      },
                                      child: Text(
                                        "Terms & Conditions",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: AppColors.primarycolor,
                                          fontWeight: FontWeight.bold,
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                    ),
                                    // Text(
                                    //   "Continue aller",
                                    //   style: TextStyle(fontSize: 14),
                                    //   maxLines: 2,
                                    // ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20),
                            ]),
                      ),
                    ),
                  )),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        // color: Colors.red,
                        shape: BoxShape.circle),
                    child: GestureDetector(
                      onTap: () {
                        _image = _showPicker(context);
                      },
                      child: CircleAvatar(
                        radius: 35,
                        backgroundColor: Color(0xffFDCF09),
                        child: _image != null
                            ? ClipOval(
                                child: Image.file(
                                  _image,
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              )
                            : Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(50)),
                                width: 100,
                                height: 100,
                                child: Icon(
                                  Icons.camera_alt,
                                  color: Colors.grey[800],
                                ),
                              ),
                      ),
                    )),
              ),
            ],
          ),
        ),
        displayEmptySpace(),
        isAdvertiser
            
            ?Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Button(
                  buttonText: 'Signup',
                  buttonColor: AppColors.primarycolor,
                  onTap: () {

                    validateAndSubmit(context);
               
                    // validateAndSubmit().then((value) => () {
                    //       loginProvider.userModel == null
                    //           ? print('user is null')
                    //           : Navigator.pushReplacement(
                    //               context,
                    //               MaterialPageRoute(
                    //                   builder: (c) => LoginPage()));
                    //     });
                  },
                  buttonTextStyle: TextStyles.buttonFontText,
                  widthPercent: 0.8,
                ),
              )
              : Container(),
        displayEmptySpace(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    registerProvider = Provider.of<RegisterProvider>(context);
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(gradient: AppColors.background),
        child: Scaffold(
          appBar: appBarwithbackIcon(context, "SIGNUP"),
          body: Container(
            margin: EdgeInsets.all(5),
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

  _imgFromCamera() async {
    // ignore: deprecated_member_use
    File image = await ImagePicker.pickImage(
        source: ImageSource.camera, imageQuality: 50);

    setState(() {
      _image = image;
    });
  }

  _imgFromGallery() async {
    // ignore: deprecated_member_use
    File image = await ImagePicker.pickImage(
        source: ImageSource.gallery, imageQuality: 50);

    setState(() {
      _image = image;
    });
  }

  _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        _imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      _imgFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }
}
