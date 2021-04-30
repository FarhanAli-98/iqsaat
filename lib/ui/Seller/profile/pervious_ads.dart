import 'package:flutter/material.dart';
import 'package:iqsaat/models/interest_item_model.dart';

class PerviousAds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: interstsList
          .map<Widget>(
            (item) => Padding(
              padding: const EdgeInsets.all(12.0),
              child: AspectRatio(
                aspectRatio: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    item.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
