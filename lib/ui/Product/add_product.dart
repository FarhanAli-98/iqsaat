import 'package:flutter/material.dart';

import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:iqsaat/Widget/button.dart';
import 'package:iqsaat/Widget/headerText.dart';
import 'package:iqsaat/Widget/textField.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/styles.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'package:async/async.dart';

class addProduct extends StatefulWidget {
  @override
  _addProductState createState() => _addProductState();
}

class _addProductState extends State<addProduct> {
  double width, height;

  TextEditingController _itemNameController = TextEditingController();
  TextEditingController _productPriceController = TextEditingController();
  TextEditingController _descrptionController = TextEditingController();
  TextEditingController _noteController= TextEditingController();

  int selectedRadio;
//images
  Dio dio = new Dio();
    File _image;
  final picker = ImagePicker();
  bool _isloading = false;
  String imageUrl;
  String honorificValue = "Mr", role = 'consumer';
  String advertiser;
  bool isAdvertiser;
  String getid;
  final _formKey = GlobalKey<FormState>();
  final dateFormat = DateFormat('dd-MM-yyyy');


  @override
  void initState() {
    super.initState();

    selectedRadio = 0;
    isAdvertiser = false;
  }

  Widget _body(BuildContext context) {
   // registerProvider = Provider.of<RegisterProvider>(context);
    return ListView(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 15),
          child: Stack(
            children: <Widget>[
              Container(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          bottom: 10,
                        ),
                        child: GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Icon(
                            Icons.chevron_left,
                            color: Colors.blueAccent,
                            size: 40,
                          ),
                        ),
                      ),
                    ),
                  ],
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
                                'Product Name',
                              ),
                              Center(
                                  child: TextFields.normalTextField(context,
                                      // fieldValue: _firstName,
                                      controller: _itemNameController,
                                      validaterMsg:
                                          'ProductName cannot be empty')),
                              textFieldHeader('Product Price'),
                              Center(
                                
                                  child: TextFields.normalTextField(context,
                                      // fieldValue: _lastName,
                                      controller: _productPriceController,
                                      validaterMsg:
                                          ' cannot be empty'))
                                          ,
                               textFieldHeader('Descrption'),
                              Center(
                                child:Container(
                                  height:120,
                                  child: TextFields.normalTextField(context,
                                      // fieldValue: _lastName,
                                      controller: _descrptionController,
                                      validaterMsg:
                                          ' cannot be empty'
                                         )
                                         ),
                                        
                                          

                                          ),
                                           textFieldHeader('Any note'),
                                           
                              Center(
                                 child:Container(
                                  height:80,
                                  child: TextFields.normalTextField(context,
                                      // fieldValue: _lastName,
                                      controller: _noteController,
                                      validaterMsg:
                                          ' cannot be empty'))
                              ),
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
                    )
                )
                                           ),

                                           Container(
                                             margin : EdgeInsets.all(8),
                                                          child: Button(
                buttonText: 'Add item',
                 buttonColor:Colors.blueGrey,
                 onTap:(){

                 } ,
                  buttonTextStyle: TextStyles.buttonFontText,
                    widthPercent: 0.8,
              )
                                           )
                                           
              
                            ]
                                          )
                                          )
                    )
                  )


              ),
             
              
            ]
          )
        )
      ]
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
          //appBar: appBarwithbackIcon(context),
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
