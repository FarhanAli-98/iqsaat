import 'package:flutter/material.dart';

class Product {
  final String image, title, description,plan;
  final int price, id;
  final Color color;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.plan,
    this.description,
    this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Honda CD 70",
      price: 76900,
      plan: dummyText2,
      description: dummyText,
      image: "assets/images/cd70.jpeg",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Orient Refrigrator",
      price: 76900,
      plan: "10k per Month",
      description: dummyText,
      image: "assets/images/fridge.jpeg",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Suzuki Alto",
      price: 1129000 ,
      plan: "10k per Month" ,
      description: dummyText,
      image: "assets/images/altocar.jpeg",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "Xiaomi Redmi 9",
      price: 30000,
      plan: "10k per Month",
      description: dummyText,
      image: "assets/images/mobilephone.jpeg",
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "LCD TV",
      price: 20000,
      plan: "10k per Month",
      description: dummyText,
      image: "assets/images/LCD1.jpg",
      color: Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "Oppo Phone",
    price: 234,
    plan: "10k per Month",
    description: dummyText,
    image: "assets/images/PC.png",
    color: Color(0xFFAEAEAE),
  ),
];

String dummyText =
    "Location:College road,JoharTown";
   String dummyText2="Plan:10k per Month";