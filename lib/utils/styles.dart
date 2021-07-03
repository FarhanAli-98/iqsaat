import 'package:flutter/material.dart';

import 'app_colors.dart';

class TextStyles {
  static const TextStyle splashText = const TextStyle(
      color: AppColors.orangeColor,
      fontWeight: FontWeight.w600,
      fontSize: 30.0);

  static const TextStyle largeNumberText = const TextStyle(
      color: AppColors.primarycolor,
      fontWeight: FontWeight.w600,
      fontSize: 80.0);
  static const TextStyle normalFontText = const TextStyle(
      color: AppColors.primarycolor,
      fontWeight: FontWeight.w600,
      fontSize: 22.0);

  static const TextStyle buttonFontText = const TextStyle(
      color: AppColors.primarycolor,
      fontWeight: FontWeight.w400,
      fontSize: 16.0);

  static TextStyle headerFontText = TextStyle(
      color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 12.0);

  static const TextStyle textFieldFontText = const TextStyle(
      color: AppColors.primarycolor,
      fontWeight: FontWeight.w400,
      fontSize: 18.0);
  static const TextStyle normalFontText2 = const TextStyle(
    color: AppColors.primarycolor,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle normalHeading = const TextStyle(
      fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.primarycolor);
  static const TextStyle largeFontStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle smallTextStyle = TextStyle(
    color: AppColors.primarycolor,
    height: 1.5,
  );
  static const TextStyle homeLabelTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 18,
      letterSpacing: 1);
  static const TextStyle smallFontSize = TextStyle(
    fontSize: 12,
    height: 1.5,
  );
}

class BoxStyles {
  static BoxDecoration deco = BoxDecoration(
    color: Colors.white,//AppColors.backgroundColor,
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
        color: Colors.grey,
        offset: Offset(0.0, 1.0), //(x,y)
        blurRadius: 6.0,
      ),
    ],
  );
  static BoxDecoration deco2=BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                      topRight: Radius.circular(68.0)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        offset: Offset(1.1, 1.1),
                        blurRadius: 10.0),
                  ],
                );
}

class CircleAvatars {
  static CircleAvatar profile = CircleAvatar(
    radius: 40.0,
    child: ClipOval(
      child: Image.asset(
        'assets/images/person.png',
        height: 150,
        width: 150,
        fit: BoxFit.cover,
      ),
    ),
  );
}
