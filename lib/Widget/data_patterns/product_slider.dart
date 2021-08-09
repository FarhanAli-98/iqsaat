import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/data_patterns/product_slider_card.dart';
import 'package:iqsaat/Widget/slider/category_slider.dart';
import 'package:iqsaat/Widget/slider/product_slider_card.dart';
import 'package:iqsaat/Widget/slider/product_model.dart';
import 'package:iqsaat/models/getModels/getAllAds.dart';

class SliderForProduct extends StatefulWidget {
  final String heading;
 
    final List<Datum> products;
  
  SliderForProduct({
    @required this.heading,
    @required this.products, 
  });
  @override
  _SliderForProductState createState() => _SliderForProductState();
}

class _SliderForProductState extends State<SliderForProduct> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SliderHeading(headingString: widget.heading)),
        SizedBox(
          height: 15,
        ),
        Container(
          height: 270,
          child: ListView.separated(
            itemCount: widget.products.length,
            primary: false,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, i) {
              return SizedBox(
                width: 10,
              );
            },
            itemBuilder: (context, i) {
              return Padding(
                  padding: i == 0
                      ? const EdgeInsets.only(left: 10)
                      : const EdgeInsets.only(left: 0.0),
                  child: 
     
                  
                  ProductCardDesign(
                      product: widget.products[i],
                      count: i,
                      
                    )
                    );
            },
          ),
        )
      ],
    );
  }
}
