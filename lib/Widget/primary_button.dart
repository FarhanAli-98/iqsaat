
import 'package:flutter/material.dart';
import 'package:iqsaat/utils/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final isBusy;
  final enabled;
  final VoidCallback onTap;
  final Color color;
  final EdgeInsetsGeometry padding;
  final BorderRadiusGeometry borderRaduis;

  const PrimaryButton({
    Key key,
    this.width,
    this.height,
    this.padding,
    this.color,
    this.borderRaduis,
    this.isBusy = false,
    this.enabled = true,
    @required this.text,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isBusy) {
      return Center(
          child: Padding(
        padding: const EdgeInsets.only(bottom: 11.0),
        child: CircularProgressIndicator(),
      ));
    }

    return ButtonTheme(
      //minWidth: width ?? DS.setWidthRatio(1),
      height: height ?? Theme.of(context).buttonTheme.height,
      buttonColor: color ?? AppColors.primarycolor,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: borderRaduis ?? BorderRadius.circular(12),
        ),
        onPressed: enabled ? onTap : null,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        padding: padding ?? EdgeInsets.symmetric(vertical: 14),
      ),
    );
  }
}
