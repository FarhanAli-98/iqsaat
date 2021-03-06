import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final String iconData;


  CustomField({
    this.text,
    this.onTap,
    this.iconData
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(left: 32, bottom: 30),
        child: Row(
          children: <Widget>[
            Image.asset(
              iconData,
              height: 16,
              width: 22,
              color: Colors.black,
            ),
            SizedBox(
              width: 17,
            ),
            Container(
              child: Text(
                text,
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
