import 'dart:developer';
import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/button.dart';
import 'package:iqsaat/Widget/headerText.dart';
import 'package:iqsaat/Widget/textField.dart';
import 'package:iqsaat/models/user_info.dart';
import 'package:iqsaat/provider/adsProvider.dart';
import 'package:iqsaat/ui/auth/loginPage.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/styles.dart';
import 'package:provider/provider.dart';
import 'add_image_page.dart';

class AddAdvertisementPage extends StatefulWidget {
  @override
  _AddAdvertisementPageState createState() => _AddAdvertisementPageState();
}

class _AddAdvertisementPageState extends State<AddAdvertisementPage> {
  double width, height;
  bool _isloading = false;

  bool cod = true;
  bool jazz = false;
  bool interac = false;
  bool visa = false;
  int number = 0;
  File file1, file2, file3;
  TextEditingController _nameController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController _productsController2 = TextEditingController();
  TextEditingController _travelController1 = TextEditingController();
  TextEditingController _travelController2 = TextEditingController();
  TextEditingController _minimumController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  List<String> images = [];
  List<Package> packagesList = [];
  String categoryID;
 String subCategoryID;
  // ignore: unused_field
  FocusNode _focusNode;
  String imageUrl;
  bool validateAndSave() {
    final form = _formKey.currentState;
    form.save();
    if (form.validate()) {
      return true;
    } else {
      return false;
    }
  }
  AdsProvider adsProvider;

  Future<void> validateAndSubmit() async {
    if (validateAndSave()) {
       Provider.of<AdsProvider>(context, listen: false)
          .createadds(

  _nameController.text,
   priceController.text,
   descriptionController.text,
   cod,
   jazz,
  packagesList,
  categoryID,
  subCategoryID,



          )
          .then((value) {
        print("Time to change image work because image code is commints");
       print(User.userData.images.length);
        if (User.userData.images != null) {
          try {

          print("adds chek");
          User.userData.images=null;

          } catch (e) {
            print("Exception found in images "+e.toString());
          }

        } else {
          print("image not found and list is Empity");
        }
        // if (value.success) {
        //   Navigator.push(
        //       context, MaterialPageRoute(builder: (c) => AdvertiserHomePage()));
        // }
        // else{
        //   print("Response getting fail in create ad");
        // }
      });
      // ignore: dead_code
     // Navigator.push(context, MaterialPageRoute(builder: (c) => LoginPage()));
    } else {
      print("object");
    }
  }
// setImages(){
//     File file1,file2,file3;

// User.userData.images.asMap()
// }
  @override
  void initState() {
    super.initState();
  }

  Widget _body(
    BuildContext context,
  ) {
    return Form(
      key: _formKey,
      child: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 10),
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
                                'Product Name',
                              ),
                              Center(
                                  child: TextFields.normalTextField(context,
                                      // fieldValue: _firstName,
                                      controller: _nameController,
                                      validaterMsg: ' Name cannot be empty')),
                              textFieldHeader(
                                'Price',
                              ),
                              Center(
                                  child: TextFields.normalTextField(context,
                                      // fieldValue: _firstName,
                                      controller: priceController,
                                      validaterMsg: ' Price cannot be empty')),
                              textFieldHeader('Description'),
                              Center(
                                child: TextFields.largeTextField(
                                  context,
                                  // fieldValue: _firstName,
                                  controller: descriptionController,
                                ),
                              ),
                              displayHeaderText('Modes of payment'),
                              textFieldHeader('Select all that apply'),
                              // displayEmptySpace(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  // _displayCardIcons(
                                  //     'assets/appIcons/Group.png', 1),

                                  //MoneyCard With RadioButton 1
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    height: 52,
                                    width: width * 0.3,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.green),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          Image.asset(
                                              'assets/appIcons/Group.png'),
                                          Checkbox(
                                              value: cod,
                                              activeColor:
                                                  AppColors.yellowColor,
                                              checkColor: Colors.black,
                                              onChanged: (val) {
                                                cod = val;
                                                setState(() {});
                                              })
                                        ],
                                      ),
                                    ),
                                  ),

                                  //MoneyCard with RadioButton 2

                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    height: 52,
                                    width: width * 0.3,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color:
                                                Colors.grey.withOpacity(0.3)),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          Image.asset(
                                              'assets/images/jazz.png'),
                                          Checkbox(
                                              value: jazz,
                                              activeColor:
                                                  AppColors.yellowColor,
                                              checkColor: Colors.black,
                                              onChanged: (val) {
                                                jazz = val;
                                                setState(() {});
                                              })
                                        ],
                                      ),
                                    ),
                                  ),
                                  // _displayCardIcons(
                                  //     'assets/appIcons/image42.png', 2)
                                ],
                              ),
                              SizedBox(height: 10),
                              textFieldHeader(
                                'Subscription Package',
                              ),

                              textFieldHeader('Photos'),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  DottedBorder(
                                    color: Colors.green,
                                    strokeWidth: 1,
                                    dashPattern: [8, 4],
                                    padding: EdgeInsets.zero,
                                    radius: Radius.circular(5),
                                    child: Container(
                                      margin: EdgeInsets.only(top: 5),
                                      height: 52,
                                      width: width * 0.27,
                                      child: User.userData.images.asMap()[0] ==
                                              null
                                          ? Container(
                                              child: InkWell(
                                                onTap: () async {
                                                  final result =
                                                      await Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (c) =>
                                                                  AddImagePage(
                                                                      0)));
                                                  if (result) {
                                                    setState(() {});
                                                  }
                                                },
                                                child: Center(
                                                  child: CircleAvatar(
                                                    radius: 15,
                                                    backgroundColor:
                                                        Colors.grey[200],
                                                    child: Icon(
                                                      Icons.add,
                                                      color: Colors.grey,
                                                      size: 20,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )
                                          : Container(
                                              child: InkWell(
                                                onTap: () async {
                                                  final result =
                                                      await Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (c) =>
                                                                  AddImagePage(
                                                                      0)));
                                                  if (result) {
                                                    setState(() {});
                                                  }
                                                },
                                                child: Image.file(
                                                  User.userData.images[0],
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                    ),
                                  ),

                                  //imagepicker 2

                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    height: 52,
                                    width: width * 0.27,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color:
                                                Colors.grey.withOpacity(0.3)),
                                        borderRadius: BorderRadius.circular(5)),
                                    child:
                                        User.userData.images.asMap()[1] == null
                                            ? Container(
                                                child: InkWell(
                                                  onTap: () async {
                                                    // _openImagePicker(2);
                                                    final result =
                                                        await Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder: (c) =>
                                                                    AddImagePage(
                                                                        1)));
                                                    if (result) {
                                                      setState(() {});
                                                    }
                                                  },
                                                ),
                                              )
                                            : Container(
                                                child: InkWell(
                                                  onTap: () async {
                                                    final result =
                                                        await Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder: (c) =>
                                                                    AddImagePage(
                                                                        1)));
                                                    if (result) {
                                                      setState(() {});
                                                    }
                                                  },
                                                  child: Image.file(
                                                    User.userData.images[1],
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                  ),

                                  //imagePicker 3

                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    height: 52,
                                    width: width * 0.27,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color:
                                                Colors.grey.withOpacity(0.3)),
                                        borderRadius: BorderRadius.circular(5)),
                                    child:
                                        User.userData.images.asMap()[2] == null
                                            ? Container(
                                                child: InkWell(
                                                  onTap: () async {
                                                    // _openImagePicker(3);
                                                    final result =
                                                        await Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder: (c) =>
                                                                    AddImagePage(
                                                                        2)));
                                                    if (result) {
                                                      setState(() {});
                                                    }
                                                  },
                                                ),
                                              )
                                            : Container(
                                                child: InkWell(
                                                  onTap: () async {
                                                    final result =
                                                        await Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder: (c) =>
                                                                    AddImagePage(
                                                                        2)));
                                                    if (result) {
                                                      setState(() {});
                                                    }
                                                  },
                                                  child: Image.file(
                                                    User.userData.images[2],
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 40),
                            ]),
                      ),
                    )),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Button(
              buttonText: 'Save and Exit',
              buttonColor: AppColors.primarycolor,
              onTap: () async {
                  validateAndSubmit();
              },
              buttonTextStyle: TextStyles.buttonFontText,
              widthPercent: 0.8,
            ),
          ),
        ],
      ),
    );
  }

  Container table() {
    return Container(
      child: table(),
    );
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    adsProvider = Provider.of<AdsProvider>(context);
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(gradient: AppColors.background),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          // appBar: appBarwithbackIcon(context),
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

Widget table() {
  return Container(
    padding: EdgeInsets.only(top: 10, left: 10, right: 10),
    child: Table(
        border: TableBorder
            .all(), // Allows to add a border decoration around your table
        children: [
          TableRow(children: [
            Center(
                child: Text(
              'Package',
              style: TextStyle(
                fontSize: 18,
              ),
            )),
            Center(
                child: Text(
              'Price',
              style: TextStyle(
                fontSize: 18,
              ),
            )),
            Center(
                child: Text(
              'Month',
              style: TextStyle(
                fontSize: 18,
              ),
            )),
          ]),
          TableRow(children: [
            Center(
              child: Text(
                'Package',
                style: TextStyle(fontSize: 17),
              ),
            ),
            TextFormField(
              //controller: controller,
              validator: (value) {
                return (value.isEmpty) ? "Enter Value" : null;
              },
              decoration: new InputDecoration(
                  // prefix: Text(hintText),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                  fillColor: Colors.white,
                  errorStyle: TextStyles.buttonFontText
                      .copyWith(fontSize: 10, color: AppColors.redColor),
                  border: InputBorder.none),

              keyboardType: TextInputType.phone,
            ),
            TextFormField(
              validator: (value) {
                return (value.isEmpty) ? "Enter Value" : null;
              },
              //controller: controller,
              decoration: new InputDecoration(
                  // prefix: Text(hintText),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                  fillColor: Colors.white,
                  errorStyle: TextStyles.buttonFontText
                      .copyWith(fontSize: 10, color: AppColors.redColor),
                  border: InputBorder.none),

              keyboardType: TextInputType.phone,
            ),
          ]),
          TableRow(children: [
            Center(
              child: Text(
                'Package',
                style: TextStyle(fontSize: 17),
              ),
            ),
            TextFormField(
              validator: (value) {
                return (value.isEmpty) ? "Enter Value" : null;
              },
              //controller: controller,
              decoration: new InputDecoration(
                  // prefix: Text(hintText),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                  fillColor: Colors.white,
                  errorStyle: TextStyles.buttonFontText
                      .copyWith(fontSize: 10, color: AppColors.redColor),
                  border: InputBorder.none),

              keyboardType: TextInputType.phone,
            ),
            TextFormField(
              validator: (value) {
                return (value.isEmpty) ? "Enter Value" : null;
              },
              //controller: controller,
              decoration: new InputDecoration(
                  // prefix: Text(hintText),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                  fillColor: Colors.white,
                  errorStyle: TextStyles.buttonFontText
                      .copyWith(fontSize: 10, color: AppColors.redColor),
                  border: InputBorder.none),

              keyboardType: TextInputType.phone,
            ),
          ]),
          TableRow(children: [
            Center(
              child: Text(
                'Package',
                style: TextStyle(fontSize: 17),
              ),
            ),
            TextFormField(
              validator: (value) {
                return (value.isEmpty) ? "Enter Value" : null;
              },
              //controller: controller,
              decoration: new InputDecoration(
                  // prefix: Text(hintText),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                  fillColor: Colors.white,
                  errorStyle: TextStyles.buttonFontText
                      .copyWith(fontSize: 10, color: AppColors.redColor),
                  border: InputBorder.none),

              keyboardType: TextInputType.phone,
            ),
            TextFormField(
              validator: (value) {
                return (value.isEmpty) ? "Enter Value" : null;
              },
              //controller: controller,
              decoration: new InputDecoration(
                  // prefix: Text(hintText),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                  fillColor: Colors.white,
                  errorStyle: TextStyles.buttonFontText
                      .copyWith(fontSize: 10, color: AppColors.redColor),
                  border: InputBorder.none),

              keyboardType: TextInputType.phone,
            ),
          ]),
        ]),
  );
}
