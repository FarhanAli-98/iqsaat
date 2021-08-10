import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/slider/product_slider_card.dart';
import 'package:iqsaat/Widget/slider/product_model.dart';
import 'category_slider.dart';

class SearchSlider extends StatefulWidget {
  final String heading;
  final List<int> package;
  final List<ProdSliderCardModel> products;

  SearchSlider({
    @required this.heading,
    @required this.products,
    this.package,
  });
  @override
  _SearchSliderState createState() => _SearchSliderState();
}

class _SearchSliderState extends State<SearchSlider> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 15,
        ),
        Container(
           height: MediaQuery.of(context).size.height*.40,
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
                child: ProductSliderCard(
                  product: widget.products[i],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
