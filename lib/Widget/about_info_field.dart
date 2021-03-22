
import 'package:flutter/material.dart';

class AboutInfoField extends StatelessWidget {
  final String upper;
  final String bottom;
  final double horizontalPadding;
  final double bottomFontSize;
  const AboutInfoField({
    Key key,
    @required this.upper,
    @required this.bottom,
    this.horizontalPadding = 16.0,
    this.bottomFontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: TextFormField(
        enabled: false,
        initialValue: bottom,
        style: TextStyle(
          fontSize: bottomFontSize ?? 16,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 20),
          labelText: upper,
          labelStyle: TextStyle(
            color: Colors.black.withOpacity(0.65),
          ),
        ),
      ),
    );
  }
}
