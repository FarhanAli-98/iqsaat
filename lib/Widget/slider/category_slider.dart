
import 'package:flutter/material.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/styles.dart';

class SliderHeading extends StatelessWidget {
  final String headingString;
  final bool isTv;
  final bool name;

  final Function press;
  SliderHeading(
      {@required this.headingString,
      this.isTv = false,
      this.press,
      this.name});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(headingString, style: TextStyles.homeLabelTextStyle),
            SizedBox(
              width: 8,
            ),
            isTv
                ? Container(
                    child: Image.asset(
                    "assets/images/tvicon.png",
                    width: 20,
                    height: 020,
                  ))
                : Container()
          ],
        ),
        InkWell(
          onTap:press,
          child: Container(
            padding: EdgeInsets.fromLTRB(5, 2, 5, 2),
            child: Text(
              "See all",
              style: TextStyle(color: AppColors.primarycolor, fontSize: 12),
            ),
          ),
        )
      ],
    );
  }
}
