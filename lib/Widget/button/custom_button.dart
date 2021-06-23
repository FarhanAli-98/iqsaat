import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  final Function onPress;
  final String text;
  final Color buttonColor, textColor;
  final double buttonHeight, buttonWidth, textSize;

  const CustomButtom(
      {Key key,
      @required this.onPress,
      @required this.text,
      @required this.buttonColor,
      this.buttonWidth,
      this.textSize = 16,
      this.textColor = Colors.white,
      this.buttonHeight = 45.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 15,
      height: 15,
      child: ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          textStyle: TextStyle(color: Colors.white),
          primary: buttonColor,
        ),
        child: Container(
          height: buttonHeight,
          width: buttonWidth,
          alignment: Alignment.center,
          child: Text(
            text.toUpperCase(),
            style: TextStyle(color: textColor, fontSize: textSize),
          ),
        ),
      ),
    );
  }
}
