import 'package:flutter/material.dart';
import 'package:iqsaat/ui/Product/products.dart';
import 'package:iqsaat/ui/Seller/create_Ads/CreateProducts/selectCategory.dart';

import './product_categories.dart';
import './product_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
           //backgroundColor: Colors.white,
      //elevation: 0,
      //leading: IconButton(
      //   icon: Icon(Icons.backpack_outlined),
      //   onPressed: () {},
      // ),
      // actions: <Widget>[
      //   IconButton(
      //     icon: Icon(
      //       Icons.search,
      //       // By default our , icon color is white
      //       color:Colors.black),
          
      //     onPressed: () {},
      //   ),
      //   IconButton(
      //     icon: Icon(
      //       Icons.card_travel,
      //       // By default our  icon color is white
      //       color: Colors.black,
      //     ),
      //     onPressed: () {},
      //   ),
      //   SizedBox(width: 20)
      // ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            "Recommended Products!",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        
        ),
        
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing:10.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCard(
                      product: products[index],
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CreateProducts(
                             
                            ),
                          )),
                    )),
          ),
        ),
      ],
    );
  }
}