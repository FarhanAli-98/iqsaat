import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/styles.dart';

class TextFields {
  static Widget emailTextField(BuildContext context,
      {String hintText,
     TextEditingController controller,
      String validaterMsg}) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Colors.grey[300],
          )),
      height: 50,
      width: MediaQuery.of(context).size.width * 0.8,
      child: TextFormField(
          controller: controller,
          decoration: new InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
              hintText: hintText,
              fillColor: Colors.white,
              errorStyle: TextStyles.buttonFontText
                  .copyWith(fontSize: 10, color: AppColors.redColor),
              border: InputBorder.none),
          validator: (value) {
            Pattern pattern =
                r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
            RegExp regex = new RegExp(pattern);
            return (!regex.hasMatch(value)) ? validaterMsg : null;
          },
          keyboardType: TextInputType.emailAddress,
          style: GoogleFonts.poppins(textStyle: TextStyles.textFieldFontText)),
    );
  }

  static Widget phoneNoTextField(BuildContext context,
      {String hintText,
      TextEditingController controller,
      var fieldValue,
      String validaterMsg}) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.8,
      child: TextFormField(
          controller: controller,
          decoration: new InputDecoration(
              // prefix: Text(hintText),
              contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
              fillColor: Colors.white,
              errorStyle: TextStyles.buttonFontText
                  .copyWith(fontSize: 10, color: AppColors.redColor),
              border: InputBorder.none),
          // onSaved: (value) {
          //   fieldValue = value;
          // },
          validator: (value) {
            return (value.isEmpty) ? validaterMsg : null;
          },
          keyboardType: TextInputType.phone,
          style: GoogleFonts.poppins(textStyle: TextStyles.textFieldFontText)),
    );
  }

  static Widget normalTextField(BuildContext context,
      {String hintText,
      TextEditingController controller,
      // var fieldValue,
      String validaterMsg}) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Colors.grey[300],
          )),
      child: TextFormField(
          controller: controller,
          decoration: new InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
              hintText: hintText,
              fillColor: Colors.white,
              errorStyle: TextStyles.buttonFontText
                  .copyWith(fontSize: 10, color: AppColors.redColor),
              border: InputBorder.none),
          validator: (value) {
            return (value.isEmpty) ? validaterMsg : null;
          },
          keyboardType: TextInputType.emailAddress,
          style: GoogleFonts.poppins(textStyle: TextStyles.textFieldFontText)),
    );
  }

  static Widget maskTextField(BuildContext context,
      {String hintText,
      TextEditingController controller,
      var inputFormatters,
      String validaterMsg}) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Colors.grey[300],
          )),
      child: TextFormField(
          inputFormatters: inputFormatters,
          controller: controller,
          decoration: new InputDecoration(
              
              hintText: hintText,
              fillColor: Colors.white,
              errorStyle: TextStyles.buttonFontText
                  .copyWith(fontSize: 10, color: AppColors.redColor),
              border: InputBorder.none),
          validator: (value) {
            return (value.isEmpty) ? validaterMsg : null;
          },
          keyboardType: TextInputType.emailAddress,
          style: GoogleFonts.poppins(textStyle: TextStyles.textFieldFontText)),
    );
  }

  static Widget passwordTextField(BuildContext context,
      {String hintText,
      TextEditingController controller,
      // var fieldValue,
      String validaterMsg}) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Colors.grey[300],
          )),
      height: 50,
      width: MediaQuery.of(context).size.width * 0.8,
      child: TextFormField(
          controller: controller,
          obscureText: true,
          decoration: new InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            hintText: hintText,
            fillColor: Colors.white,
            // errorText: validate?null:'invalid Password',
            errorStyle: TextStyles.buttonFontText
                .copyWith(fontSize: 10, color: AppColors.redColor),

            border: InputBorder.none,
          ),
          // onSaved: (value) {
          //   fieldValue = value;
          // },
          validator: (value) {
            return (value.length < 8) ? validaterMsg : null;
          },
          style: GoogleFonts.poppins(textStyle: TextStyles.textFieldFontText)),
    );
  }

  static Widget largeTextField(BuildContext context,
      {String hintText, TextEditingController controller}) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      height: MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.grey[300],
          )),
      child: TextFormField(
        controller: controller,
        decoration: new InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
            hintText: hintText,
            hintStyle: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
            fillColor: Colors.white,
            border: InputBorder.none),
        maxLines: 5,
        style: GoogleFonts.poppins(textStyle: TextStyles.textFieldFontText),
        validator: (value) {
          return (value.isEmpty) ? 'Help Message cannot be empty' : null;
        },
      ),
    );
  }

  static Widget numberTextField(
    BuildContext context,
    double widthPersent,
    TextEditingController controller,
  ) {
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: 1, color: Colors.grey))),
      height: MediaQuery.of(context).size.height * 0.05,
      width: MediaQuery.of(context).size.width * widthPersent,
      child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(left: 15, bottom: 0),
          ),
          controller: controller,
          keyboardType: TextInputType.number,
          style: GoogleFonts.poppins(textStyle: TextStyles.textFieldFontText)),
    );
  }
}
