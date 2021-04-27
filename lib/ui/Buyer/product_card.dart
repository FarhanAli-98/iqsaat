import 'package:flutter/material.dart';
import 'package:iqsaat/ui/Product/products.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        child: Card(
          elevation: 5,
          margin: EdgeInsets.all(5.0),
          
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(child: Image.asset(product.image,)),
                Text(
                  // products is out demo list
                  product.title,
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  "\R\S\:${product.price}",
                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                ),
                 Text(
                  product.plan,
                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black45),
                ),
                  Text(
                  product.description,
                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                )


              ],
            ),
          ),
        ),
      ),
    );
  }
}