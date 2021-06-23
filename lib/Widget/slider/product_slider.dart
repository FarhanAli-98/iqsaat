import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/slider/product_slider_card.dart';
import 'package:iqsaat/Widget/slider/product_model.dart';
import 'package:iqsaat/ui/Seller/Product/Ads/ads_screen.dart';
import 'package:iqsaat/ui/buyer/products/product_description.dart';
import 'category_slider.dart';

class ProductSlider extends StatefulWidget {
  final String heading;
  final List<int> package;
    final List<ProdSliderCardModel> products;
  
  ProductSlider({
    @required this.heading,
    @required this.products, this.package, 
  });
  @override
  _ProductSliderState createState() => _ProductSliderState();
}

class _ProductSliderState extends State<ProductSlider> {
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
                  // child: 
     
                  
                  // ProductSliderCard(
                  //     product: widget.products[i],
                      
                  //   )
                    );
            },
          ),
        )
      ],
    );
  }
}
