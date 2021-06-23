import 'dart:developer';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/button.dart';
import 'package:iqsaat/Widget/headerText.dart';
import 'package:iqsaat/Widget/textField.dart';
import 'package:iqsaat/models/user_info.dart';
import 'package:iqsaat/ui/auth/loginPage.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/styles.dart';
import 'add_image_page.dart';
import 'createPackage/packagecreate.dart';

class AddAdvertisementPage extends StatefulWidget {
  @override
  _AddAdvertisementPageState createState() => _AddAdvertisementPageState();
}

class _AddAdvertisementPageState extends State<AddAdvertisementPage> {
  double width, height;
  bool _isloading = false;

  bool cod = true;
  bool masterCard = false;
  bool interac = false;
  bool visa = false;
  int number = 0;

  TextEditingController _servicesController = TextEditingController();
  TextEditingController _productsController = TextEditingController();
  TextEditingController _productsController1 = TextEditingController();
  TextEditingController _productsController2 = TextEditingController();
  TextEditingController _travelController1 = TextEditingController();
  TextEditingController _travelController2 = TextEditingController();
  TextEditingController _minimumController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  List<String> images = [];
  List<Service> serviceList = [];
  Service serv;

  int count = 0;
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

  Future<void> validateAndSubmit() async {
    if (validateAndSave()) {
      Navigator.push(context, MaterialPageRoute(builder: (c) => LoginPage()));
    } else {
      print("object");
    }
  }

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
                    child: SingleChildScrollView(
                      child: Expanded(
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
                                          controller: _servicesController,
                                          validaterMsg:
                                              ' Name cannot be empty')),
                                  textFieldHeader(
                                    'Price',
                                  ),
                                  Center(
                                      child: TextFields.normalTextField(context,
                                          // fieldValue: _firstName,
                                          controller: _servicesController,
                                          validaterMsg:
                                              ' Price cannot be empty')),
                                  textFieldHeader(
                                    'Unit',
                                  ),
                                  Center(
                                      child: TextFields.normalTextField(context,
                                          // fieldValue: _firstName,
                                          controller: _servicesController,
                                          validaterMsg:
                                              ' Unit cannot be empty')),
                                  textFieldHeader(
                                    'Subscription Package',
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                        top: 20,
                                        left:
                                            MediaQuery.of(context).size.width /
                                                29),
                                    child: SingleChildScrollView(
                                      child: Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              4.2,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              0.2,
                                          child: createPackages()),
                                    ),
                                  ),
                                  textFieldHeader('Description'),
                                  Center(
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
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border: Border.all(
                                            color: Colors.grey[300],
                                          )),
                                      child: TextField(
                                        keyboardType: TextInputType.multiline,
                                        maxLines: null,
                                        decoration: new InputDecoration(
                                            border: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                            enabledBorder: InputBorder.none,
                                            hintText: "Type here"),
                                      ),
                                    ),
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
                                          child: User.userData.images
                                                      .asMap()[0] ==
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
                                                color: Colors.grey
                                                    .withOpacity(0.3)),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child:
                                            User.userData.images.asMap()[1] ==
                                                    null
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
                                                color: Colors.grey
                                                    .withOpacity(0.3)),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child:
                                            User.userData.images.asMap()[2] ==
                                                    null
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
                                  SizedBox(height: 20),
                                ]),
                          ),
                        ),
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

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

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
