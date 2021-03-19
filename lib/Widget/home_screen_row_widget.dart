import 'package:flutter/material.dart';
import 'package:iqsaat/utils/app_colors.dart';

class HomeScreenRow extends StatelessWidget {
  final String text;
  HomeScreenRow({
    this.text
  });
  @override
  Widget build(BuildContext context) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(text, style: TextStyle(color: AppColors.primarycolor,fontWeight: FontWeight.bold,fontSize: 18)),
                Text('see all', style: TextStyle(color: AppColors.primarycolor))
              ],
          
      
    );
  }
}