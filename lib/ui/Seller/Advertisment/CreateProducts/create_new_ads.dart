import 'dart:developer';
import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:image_picker/image_picker.dart';
import 'package:iqsaat/Widget/button.dart';
import 'package:iqsaat/Widget/headerText.dart';
import 'package:iqsaat/Widget/textField.dart';
import 'package:iqsaat/api/apis.dart';
import 'package:iqsaat/models/user_info.dart';
import 'package:iqsaat/provider/ads_provider.dart';
import 'package:iqsaat/ui/auth/image_upload.dart';
import 'package:iqsaat/ui/auth/loginPage.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/routes.dart';
import 'package:iqsaat/utils/styles.dart';
import 'package:provider/provider.dart';
import '../../../../main.dart';
import 'packagecreate.dart';

class AddAdvertisementPage extends StatefulWidget {
  @override
  _AddAdvertisementPageState createState() => _AddAdvertisementPageState();
}

class _AddAdvertisementPageState extends State<AddAdvertisementPage> {
  double width, height;
  bool _isloading = false;
  File _image1;
  File _image2;
  File _image3;
  bool cod = true;
  bool masterCard = false;
  bool interac = false;
  bool visa = false;
  int number = 0;
  List<Package> packagesList = [];
  int index = 0;
  String category, selectServicSubeCategory;
  // ignore: unused_field
  FocusNode _focusNode;
  String imageUrl;
  bool isVisible = false;
  TextEditingController _nameController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController unitController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  List<String> images = [];
  List<Service> serviceList = [];
  Service serv;
  String subValue;
  List subCategory = [];
  List categoryList = ["Mobile", "vehicle", "Home Appliances"];
  List mobile = ["Sumsang", "iphone", "oppo", "vivo", "realme"];
  List vehicle = ["Car", "bike", "truck", "etc"];
  List homeApplicances = [
    "Air conditioning.",
    "Air fryer.",
    "Air ioniser.",
    "Blower.",
    "Blender. Immersion blender.",
    "Clothes dryer. combo.",
    'Clothes iron.',
    "Coffee maker.",
  ];
  int count = 0;

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
      Provider.of<AdsProvider>(context, listen: false)
          .createadds(
        _nameController.text,
        priceController.text,
        unitController.text,
        descriptionController.text,
        category,
        subValue,
      )
          .then((value) {
        print("Time to change image work because image code is commints");

        try {
          print("adds chek${res.shopId}");
          var url = "${API_URLS.UPLOAD_IMAGE_ADS_API}/${res.shopId}";

          ImagesUpload.uploadImage(
            _image1,
            url,
          );
          ImagesUpload.uploadImage(
            _image2,
            url,
          );
          ImagesUpload.uploadImage(
            _image3,
            url,
          );
          EasyLoading.dismiss();
          AppRoutes.pop(context);
        } catch (e) {
          print("Exception found in images " + e.toString());
        }
      });
    } else {
      showMessage("Please Fill all blanks");
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
                                        validaterMsg:
                                            ' Name cannot be empty')),
                                textFieldHeader(
                                  'Price',
                                ),
                                Center(
                                    child: TextFields.normalTextField(context,
                                        // fieldValue: _firstName,
                                        controller: priceController,
                                        validaterMsg:
                                            ' Price cannot be empty')),
                                textFieldHeader(
                                  'Unit',
                                ),
                                Center(
                                    child: TextFields.normalTextField(context,
                                        // fieldValue: _firstName,
                                        controller: unitController,
                                        validaterMsg:
                                            ' Unit cannot be empty')),
                                textFieldHeader(
                                  'Subscription Package',
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      top: 10,
                                      left:
                                          MediaQuery.of(context).size.width /
                                              29),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Container(
                                        height: MediaQuery.of(context)
                                                .size
                                                .height /
                                            3,
                                        width: sizeWidth(context) * 1.2,
                                        child: CreatePackages()
                                        
                                        ),
                                  ),
                                ),
                                textFieldHeader(
                                  "Select Category",
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8.0),
                                  child: Center(
                                    child: Container(
                                      margin: EdgeInsets.only(top: 10),
                                      height: height * 0.07,
                                      width: width * 0.8,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 5),
                                      decoration: ShapeDecoration(
                                        // borderRadius: BorderRadius.circular(25),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                              width: 1.0,
                                              color: Colors.grey[300],
                                              style: BorderStyle.solid),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(25.0)),
                                        ),
                                      ),
                                      child: InputDecorator(
                                        decoration: const InputDecoration(
                                          hintText: 'Choose an category',
                                          hintStyle: TextStyle(
                                            color: AppColors.primarycolor,
                                            fontSize: 16.0,
                                            fontFamily: "OpenSans",
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        isEmpty: category == null,
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton(
                                            value: category,
                                            isDense: true,
                                            isExpanded: true,
                                            onChanged: (String newValue) {
                                              setState(() {
                                                category = category;

                                                category = newValue;
                                                print(category);
                                                index = categoryList
                                                    .indexOf(newValue);
                                                print(index);

                                                if (index == 0) {
                                                  subCategory = mobile;
                                                } else if (index == 1) {
                                                  subCategory = vehicle;
                                                } else if (index == 2) {
                                                  subCategory =
                                                      homeApplicances;
                                                }

                                                isVisible = true;
                                              });
                                            },
                                            items:
                                                categoryList.map((document) {
                                              return new DropdownMenuItem<
                                                      String>(
                                                  value: document,
                                                  child: new Text(document,
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight
                                                                  .bold)));
                                            }).toList(),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Visibility(
                                    visible: isVisible,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        textFieldHeader(
                                          "Select SubCategory",
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 8.0),
                                          child: Center(
                                            child: Container(
                                              margin:
                                                  EdgeInsets.only(top: 10),
                                              height: height * 0.07,
                                              width: width * 0.8,
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 20,
                                                  vertical: 5),
                                              decoration: ShapeDecoration(
                                                // borderRadius: BorderRadius.circular(25),
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                      width: 1.0,
                                                      color: Colors.grey[300],
                                                      style:
                                                          BorderStyle.solid),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              25.0)),
                                                ),
                                              ),
                                              child: InputDecorator(
                                                decoration:
                                                    const InputDecoration(
                                                  hintText:
                                                      'Choose an Subcategory',
                                                  hintStyle: TextStyle(
                                                    color: AppColors
                                                        .primarycolor,
                                                    fontSize: 16.0,
                                                    fontFamily: "OpenSans",
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                                ),
                                                // isEmpty: category == null,
                                                child:
                                                    DropdownButtonHideUnderline(
                                                  child: DropdownButton(
                                                    value: subValue,
                                                    isDense: true,
                                                    isExpanded: true,
                                                    onChanged:
                                                        (String newValue) {
                                                      setState(() {
                                                        subValue = newValue;
                                                        print(subValue);
                                                      });
                                                    },
                                                    items: subCategory
                                                        .map((document) {
                                                      return new DropdownMenuItem<
                                                              String>(
                                                          value: document,
                                                          child: new Text(
                                                              document,
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize:
                                                                      16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold)));
                                                    }).toList(),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
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
                                    child: TextFormField(
                                      validator: (value) {
                                        return (value.isEmpty)
                                            ? "Please Enter Description"
                                            : null;
                                      },
                                      controller: descriptionController,
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
                                        child: _image1 == null
                                            ? Container(
                                                child: InkWell(
                                                  onTap: () {
                                                    _image1 = _showPicker(
                                                        context, 1);
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
                                                    _image1 = _showPicker(
                                                        context, 1);
                                                  },
                                                  child: Image.file(
                                                    _image1,
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
                                      child: _image2 == null
                                          ? Container(
                                              child: InkWell(
                                                onTap: () async {
                                                  _image2 =
                                                      _showPicker(context, 2);
                                                },
                                              ),
                                            )
                                          : Container(
                                              child: InkWell(
                                                onTap: () async {
                                                  _image2 =
                                                      _showPicker(context, 2);
                                                },
                                                child: Image.file(
                                                  _image2,
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
                                      child: _image3 == null
                                          ? Container(
                                              child: InkWell(
                                                onTap: () {
                                                  _image3 =
                                                      _showPicker(context, 3);
                                                },
                                              ),
                                            )
                                          : Container(
                                              child: InkWell(
                                                onTap: () {
                                                  _image3 =
                                                      _showPicker(context, 3);
                                                },
                                                child: Image.file(
                                                  _image3,
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
                EasyLoading.show(status: 'Creating..');
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

  _imgFromCamera(count) async {
    // ignore: deprecated_member_use
    File image = await ImagePicker.pickImage(
        source: ImageSource.camera, imageQuality: 50);
    print("count$count");
    setState(() {
      if (count == 1) {
        _image1 = image;
      } else if (count == 2) {
        _image2 = image;
      } else if (count == 3) {
        _image3 = image;
      }
    });
  }

  _imgFromGallery(count) async {
    // ignore: deprecated_member_use
    File image = await ImagePicker.pickImage(
        source: ImageSource.gallery, imageQuality: 50);
    print("count$count");
    setState(() {
      if (count == 1) {
        _image1 = image;
      } else if (count == 2) {
        _image2 = image;
      } else if (count == 3) {
        _image3 = image;
      }
    });
  }

  _showPicker(context, count) {
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
                        _imgFromGallery(count);
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      _imgFromCamera(count);
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
