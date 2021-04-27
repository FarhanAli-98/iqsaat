import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iqsaat/Widget/button.dart';
import 'package:iqsaat/Widget/headerText.dart';
import 'package:iqsaat/Widget/textField.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/styles.dart';
import 'helpResponse.dart';

class HelpRequest extends StatefulWidget {
  @override
  _HelpRequestState createState() => _HelpRequestState();
}

class _HelpRequestState extends State<HelpRequest> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _helpController = TextEditingController();
  TextEditingController _subjectController = TextEditingController();

  bool _isloading = false;

  double width, height;


  Widget _body(BuildContext context) {
    return ListView(
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
            child: Card(
              //  elevation: 9.0,
              shape: RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Container(
                height: height * 0.6,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 45.0,
                  ),
                  child: Form(
                    key: _formKey,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            'How can we help?',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyles.normalFontText),
                          ),
                          textFieldHeader('Subject'),
                          Center(
                              child: TextFields.normalTextField(context,
                                  // fieldValue: _lastName,
                                  controller: _subjectController,
                                  validaterMsg: 'Subject cannot be empty')),
                          TextFields.largeTextField(context,
                              hintText:
                                  'Please provide a detailed description of your problem',
                              controller: _helpController),
                          Button(
                            buttonText: 'Send',
                            buttonColor: AppColors.primarycolor,
                            onTap: () {
                              Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                HelpResponse()));
                             
                            },
                            buttonTextStyle: TextStyles.buttonFontText,
                            widthPercent: 0.7,
                          ),
                        ]),
                  ),
                ),
              ),
            )),
      ],
    );
  }

Widget appBarwithbackIcon(BuildContext context) {
  return AppBar(
    elevation: 0.0,
    backgroundColor: Colors.white,
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back_ios,
        color: Colors.grey,
      ),
      onPressed: () => Navigator.pop(context),
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
          appBar: appBarwithbackIcon(context),
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
