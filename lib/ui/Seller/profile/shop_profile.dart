import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:iqsaat/Widget/button.dart';
import 'package:iqsaat/Widget/headerText.dart';
import 'package:iqsaat/Widget/textField.dart';
import 'package:iqsaat/hive/user_box.dart';
import 'package:iqsaat/provider/shop_provider.dart';
import 'package:iqsaat/ui/Seller/home/seller_home.dart';
import 'package:iqsaat/ui/auth/loginPage.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/styles.dart';
import 'package:provider/provider.dart';
import '../../../main.dart';

class ShopProfile extends StatefulWidget {
  @override
  _ShopProfileState createState() => _ShopProfileState();
}

class _ShopProfileState extends State<ShopProfile> {
  double width, height;
  final _formKey = GlobalKey<FormState>();
  String imageurl;
  bool _isloading = false;
  UserBox updateResBox;
  TextEditingController _shopNameController = TextEditingController();
  TextEditingController _aboutController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  ShopProvider shopProvider;
  FocusNode focusNode;
  int index = 0;
  String category, selectServicSubeCategory;
  File _image;
  List subCat = [];
  List dropList = [];
  final picker = ImagePicker();
  var stream;
  var queryCat;
  var dropDown;

  void validateAndSubmit(context) {
    if (validateAndSave()) {
      Provider.of<ShopProvider>(context, listen: false)
          .createShop(
        _image,
        _shopNameController.text,
        _addressController.text,
        _aboutController.text,
      )
          .then((data) {
        showMessage("Successfullly Account Create");
        updateUserBox();
      });
    } else {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              title: Text("Error"),
              content: Text("Please Enter Valid info"),
            );
          });
    }
  }

  updateUserBox() {
    try {
      updateResBox = res;
      print(updateResBox.role);
      res = UserBox(
        email: updateResBox.email,
        firstName: updateResBox.firstName,
        lastName: updateResBox.lastName,
        photo: updateResBox.photo,
        accessToken: updateResBox.accessToken,
        refreshToken: updateResBox.refreshToken,
        userId: updateResBox.userId,
        shopId: shopProvider.shopModel.details.id,
        role: updateResBox.role,
        cnic: updateResBox.cnic,
        phone: updateResBox.phone,
      );
      boxUser.putAt(0, res);
      res = boxUser.get(0) as UserBox;
      setState(() {});
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (c) => SellerHomePage()));
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    focusNode = FocusNode();
  }

  bool validateAndSave() {
    final form = _formKey.currentState;
    form.save();
    if (form.validate()) {
      return true;
    } else {
      return false;
    }
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
    print("image set from gallery" + _image.toString());
    setState(() {
      _image = image;
      print("image set from gallery" + _image.toString());
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

  Widget _body(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 5),
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(
                      Icons.chevron_left,
                      color: Colors.grey,
                      size: 40,
                    ),
                  ),
                ),
              ),
              Form(
                key: _formKey,
                child: Container(
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
                    child: Card(
                      //elevation: 9.0,
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
                              textFieldHeader(' Shop Name'),
                              Center(
                                  child: TextFields.normalTextField(context,
                                      controller: _shopNameController,
                                      validaterMsg:
                                          ' Shop Name cannot be empty')),
                              textFieldHeader('Address'),
                              Center(
                                  child: TextFields.normalTextField(context,
                                      // fieldValue: _address,
                                      controller: _addressController,
                                      validaterMsg: 'Address cannot be empty')),
                              SizedBox(
                                height: 10,
                              ),
                              textFieldHeader('about'),
                              Center(
                                child: GestureDetector(
                                  onTap: () async {},
                                  child: Container(
                                      margin: EdgeInsets.only(
                                        bottom: 10,
                                      ),
                                      padding:
                                          EdgeInsets.only(top: 10, left: 10),
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.15,
                                      width: MediaQuery.of(context).size.width *
                                          0.8,
                                      child: TextFields.largeTextField(
                                        context,
                                        controller: _aboutController,
                                      )),
                                ),
                              ),

                              //  SizedBox(height: 20),
                              // textFieldHeader('Required things'),
                              //   Center(
                              //       child: TextFields.normalTextField(context,
                              //           controller: _shopNameController,
                              //           validaterMsg:
                              //               ' Shop Name cannot be empty')),

                              //  textFieldHeader('Required things'),
                              //   Center(
                              //       child: TextFields.normalTextField(context,
                              //           controller: _shopNameController,
                              //           validaterMsg:
                              //               ' Shop Name cannot be empty')),

                              //               textFieldHeader('Required things'),
                              //   Center(
                              //       child: TextFields.normalTextField(context,
                              //           controller: _shopNameController,
                              //           validaterMsg:
                              //               ' Shop Name cannot be empty')),
                              SizedBox(
                                height: 20,
                              )
                            ]),
                      ),
                    )),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                    child: GestureDetector(
                  onTap: () {
                    _image = _showPicker(context);
                    //uploadImage(_image, context);
                  },
                  child: CircleAvatar(
                    radius: 35,
                    backgroundColor: Color(0xffFDCF09),
                    child: _image != null
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.file(
                              _image,
                              width: 100,
                              height: 100,
                              fit: BoxFit.fitHeight,
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
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Button(
            buttonText: 'Submit',
            buttonColor: AppColors.primarycolor,
            onTap: () {
              validateAndSubmit(context);
              //  Navigator.push(context,
              //       MaterialPageRoute(builder: (c) => SellerHomePage()));
            },
            buttonTextStyle: TextStyles.buttonFontText,
            widthPercent: 0.8,
          ),
        ),
        displayEmptySpace(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    shopProvider = Provider.of<ShopProvider>(context);

    return SafeArea(
      child: Container(
        decoration: BoxDecoration(gradient: AppColors.background),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          // appBar: appBarwithbackIcon(context),
          // body: categoryProvider.category == null
          //     ? Center(
          //         child: CircularProgressIndicator(),
          //       )
          //     :
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
}
