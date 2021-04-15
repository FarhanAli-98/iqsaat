import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/styles.dart';

Widget appBarwithbackIcon(BuildContext context,String titles) {
  return AppBar(
    title: Text(titles,style: TextStyle(color: Colors.black),),
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

Widget appBarwithCenterTitle(BuildContext context, String title) {
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
    centerTitle: true,
    title: Text(
      title,
      style: GoogleFonts.poppins(textStyle: TextStyles.buttonFontText),
    ),
  );
}

Widget appBarwithImageTitle(BuildContext context, String title) {
  return AppBar(
    elevation: 0.0,
    backgroundColor: AppColors.white,
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back_ios,
        color: Colors.grey,
      ),
      onPressed: () => Navigator.pop(context),
    ),
    centerTitle: false,
    title: Row(
      children: <Widget>[
        Container(
          child: CircleAvatar(
            backgroundColor: AppColors.greyBackColor,
            radius: 30,
            // child: Icon(Icons.person),
            backgroundImage: AssetImage('assets/appIcons/image47.png'),
          ),
        ),
        SizedBox(width: 15),
        Text(
          title,
          style: GoogleFonts.poppins(textStyle: TextStyles.buttonFontText),
        ),
      ],
    ),
  );
}
