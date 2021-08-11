
import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/about_info_field.dart';
import 'package:iqsaat/models/getModels/shop_model.dart';
import '../../../main.dart';

class AboutTab extends StatelessWidget {
   final ShopModel shopmodel;

  const AboutTab({Key key, this.shopmodel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        AboutInfoField(
          bottom: res.firstName+ " "+res.lastName,
          upper: "Shop Name",
        ),
        AboutInfoField(
          bottom: shopmodel.details.address.toString(),
          upper: "City",
        ),
        AboutInfoField(
          bottom: shopmodel.details.address.toString(),
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
                bottom: shopmodel.details.updatedAt.toString(),
                upper: "Established On",
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: AboutInfoField(
                bottom: shopmodel.details.address.toString(),
                upper: "Stabel",
              ),
            ),
            Expanded(
              child: AboutInfoField(
                bottom: shopmodel.details.address.toString(),
                upper: "Origin Country",
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: AboutInfoField(
                bottom: res.email,
                upper: "Email",
              ),
            ),
            Expanded(
              child: AboutInfoField(
                bottom: res.role,
                upper: res.phone,
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
