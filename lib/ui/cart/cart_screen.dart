import 'package:flutter/material.dart';
import 'cart.dart';
import 'body.dart';
import 'checkout_card.dart';


class CartScreen extends StatelessWidget {
  static String routeName = "/cart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CheckoutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Your Cart",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "${7} items",
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}