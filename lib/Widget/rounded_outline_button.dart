import 'package:flutter/material.dart';
import 'package:iqsaat/utils/app_colors.dart';


class RoundedOutlineButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final double borderRadius;
  final double widthRatio;
  final Color color;
  final bool isSelected;
  final FontWeight fontWeight;
  final double fontSize;

  const RoundedOutlineButton({
    Key key,
    @required this.text,
    @required this.onTap,
    this.borderRadius = 100,
    this.widthRatio = 0.4,
    this.color,
    this.isSelected = false,
    this.fontWeight,
    this.fontSize = 18,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
     
      child: RaisedButton(
        elevation: 0,
        color: isSelected ? AppColors.primarycolor : Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          side: BorderSide(
            color: AppColors.primarycolor,
            width: 2,
          ),
        ),
        onPressed: onTap,
        child: Text(
          text,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: isSelected ? Colors.white : AppColors.primarycolor,
            fontWeight: fontWeight ?? FontWeight.bold,
            fontSize:20,
          ),
        ),
      ),
    );
  }
}
