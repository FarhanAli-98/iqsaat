import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/button.dart';
import 'package:iqsaat/models/Images.dart';

import 'package:iqsaat/models/user_info.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/styles.dart';


class AddImagePage extends StatefulWidget {
  final int index;
  AddImagePage(this.index);
  @override
  _AddImagePageState createState() => _AddImagePageState();
}

class _AddImagePageState extends State<AddImagePage> {
  double width, height;
  bool _isloading = false;
  TextEditingController _titleController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();
  String imageUrl;
  ImageModel myImageModel;
  File myFile;

  final _formKey = GlobalKey<FormState>();

  _openImagePicker(int index) async {
    print(index);
    var file = await FilePicker.getFile(type: FileType.image);
    if (file != null) {
      print("File path  = =  =" + file.path);
      myFile = file;
     
      setState(() {
        User.userData.images.insert(index, myFile);
      });
    }
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

  Widget _body(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        children: <Widget>[
          TextFormField(
            controller: _titleController,
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 4, horizontal: 20),
                hintText: 'Enter the Title*',
                border: InputBorder.none),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: DottedBorder(
              color: Colors.green,
              radius: Radius.circular(10),
              padding: EdgeInsets.zero,
              dashPattern: [12, 6],
              child: Center(
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 5),
                  height: height * 0.3,
                  child: myFile == null
                      ? Container(
                          child: InkWell(
                            onTap: () {
                              _openImagePicker(widget.index);
                            },
                            child: Center(
                              child: CircleAvatar(
                                radius: 25,
                                backgroundColor:
                                    Colors.blueAccent.withOpacity(.3),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.green,
                                  size: 40,
                                ),
                              ),
                            ),
                          ),
                        )
                      : Container(
                          child: Image.file(
                            myFile,
                            fit: BoxFit.fill,
                          ),
                        ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
       
          SizedBox(
            height: height / 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Button(
              buttonText: 'Done',
              buttonColor: AppColors.primarycolor,
              onTap: () {
              
                User.userData.imageTitles.add(_titleController.text);
                myFile=null;
                Navigator.pop(context, false);
              },
              buttonTextStyle: TextStyles.buttonFontText,
              widthPercent: 0.8,
            ),
          ),
        ],
      ),
    );
  }

  Future<bool> _onWillPop() async {
    Navigator.pop(context, false);

    return false;
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    //getFileName();
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(gradient: AppColors.background),
        child: WillPopScope(
          onWillPop: _onWillPop,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              centerTitle: true,
              leading: IconButton(
                  icon: Icon(
                    Icons.chevron_left,
                    size: 40,
                    color: Colors.grey,
                  ),
                  onPressed: () => Navigator.pop(context, false)),
              title: Text(
                "Add",
                style: TextStyles.normalFontText,
              ),
            ),
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
      ),
    );
  }
}
