import 'package:awesome_card/awesome_card.dart';
import 'package:awesome_card/credit_card.dart';
import 'package:awesome_card/style/card_background.dart';
import "package:flutter/material.dart";
class sellerCategories extends StatefulWidget {
  @override
  _sellerCategoriesState createState() => _sellerCategoriesState();
}

class _sellerCategoriesState extends State<sellerCategories> {
  @override

  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView.builder(
        itemCount:5,
          itemBuilder: (context, index) {
    return 
  
CreditCard(
    cardNumber: "5450 7879 4864 7854",
    cardExpiry: "10/25",
    cardHolderName: "Card Holder",
    cvv: "456",
    bankName: "Axis Bank",
    cardType: CardType.masterCard, // Optional if you want to override Card Type
    showBackSide: false,
    frontBackground: CardBackgrounds.white,
    backBackground: CardBackgrounds.white,
    showShadow: true,
    textExpDate: 'Exp. Date',
    textName: 'Name',
    textExpiry: 'MM/YY'
);
},

      ),
    );
  }
}