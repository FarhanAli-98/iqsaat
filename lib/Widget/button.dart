import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iqsaat/utils/app_colors.dart';

class Button extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final VoidCallback onTap;
  final TextStyle buttonTextStyle;
  final double widthPercent;

  Button(
      {this.buttonText,
      this.buttonColor,
      this.onTap,
      this.buttonTextStyle,
      this.widthPercent});
  @override
  Widget build(BuildContext context) {
    double width;
    width = MediaQuery.of(context).size.width;
    return MaterialButton(
      onPressed: onTap,
      color: buttonColor,
      disabledColor: AppColors.whiteColor,
      elevation: 0,
     // shape: StadiumBorder(),
      shape: RoundedRectangleBorder(
          borderRadius:  BorderRadius.circular(12),
        ),
      minWidth: width * widthPercent,
      height: 48,
      child: Text(
        buttonText,
        style: GoogleFonts.poppins(
            textStyle: buttonTextStyle.copyWith(fontWeight: FontWeight.bold,color: AppColors.whiteColor)),
      ),
    );
  }
}
