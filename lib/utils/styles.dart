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
}
