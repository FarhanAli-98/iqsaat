
import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/about_info_field.dart';

class AboutTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        AboutInfoField(
          bottom: "Afzal Electronics",
          upper: "Shop Name",
        ),
        AboutInfoField(
          bottom: "Lahore",
          upper: "City",
        ),
        AboutInfoField(
          bottom: "Lahore",
          upper: "District",
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: AboutInfoField(
                bottom: "Type",
                upper: "Type",
              ),
            ),
            Expanded(
              child: AboutInfoField(
                bottom: "24 Nov 2019",
                upper: "Established On",
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: AboutInfoField(
                bottom: "Lahore, Pakistan",
                upper: "Stabel",
              ),
            ),
            Expanded(
              child: AboutInfoField(
                bottom: "Pakistan",
                upper: "Origin Country",
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: AboutInfoField(
                bottom: "afzalelectronics@gmail..com",
                upper: "Email",
              ),
            ),
            Expanded(
              child: AboutInfoField(
                bottom: "Texas, PK",
                upper: "+92303-6183-103",
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
