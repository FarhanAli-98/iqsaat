import 'package:flutter/material.dart';

class AppColors {
  static const Color primarycolor = const Color(0xFF2b3894);
  static const Color blackTextColor = const Color(0xFF0C0829);
  static const Color yellowColor = const Color(0xFFFFF500);
  static const Color greyButtonColor = const Color(0xFF828FAE);
  static const Color backgroundColor = const Color(0xFFFFFFFF); //0C0829
  static const Color greyColor = const Color(0xFF808080);
  static const Color redColor = const Color(0xFFF24A4A);
  static const Color orangeColor = const Color(0xFFFEB42F);
  static const Color greenColor = const Color(0xFF26D142);
  static const Color skyBlueColor = const Color(0xFFF3F6FA);
  static const Color white = const Color(0xFFFFFFFF);
  static const Color lightgrey = const Color(0xFF9F9F9);
  static const Color whiteColor = const Color(0xFFFFFFFF);
  static const Color secondayTextColor = const Color(0xFF828FAE);
  static const Color greyBackColor = const Color(0xFFF3F3F3);
  static const Color greyLocationIconColor = const Color(0xFFAAAAAA);
  static const Color chatAppBarColor = const Color(0xFFE6E6E6);
  static const Color NavigateTextColor = const Color(0xFF1FAFFC);
  static const Color ChatTextColor = const Color(0xFF26D142);
  static const Color CancelTextColor = const Color(0xFFFF2C2C);
  static const Color ChartBarColor = const Color(0xFFFEBE34);
  static const Color halfWhite = const Color(0xFFF3F3F3);
  static const Color ChatOneSideCOlor = const Color(0xFFF3F6FA);
  static const Color greyBackground = Color(0XFFF0F0F0);
  static const Color black = Color(0Xff000000);
  static const Color secondaryColor = const Color(0xFF2b3894);

  static LinearGradient background = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0XFFFFFFFF),
      Color(0xFFFFFFFF),
      Color(0xFFFFFFFF),
      Color(0xFFFFFFFF),
    ],
  );
  static LinearGradient appBar = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0XFFFDFDFD),
      Color(0XFFFCFCFC),
      Color(0XFFFBFBFB),
      Color(0XFFFAFAFA),
      Color(0XFFF5F5F5),
      Color(0XFFF5F5F5),
      Color(0XFFF4F4F3),
      Color(0XFFF6F6F6),
    ],
  );
}

sizeWidth(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  return width;
}
