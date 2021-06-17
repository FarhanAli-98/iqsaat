import 'package:flutter/material.dart';
import 'package:iqsaat/utils/images.dart';

class shopCategories {
  final String image, title;
  final int productscount;
  final DateTime date;
  //final Color color;
  shopCategories({
    this.image,
    this.title,
    this.productscount,
    this.date,
  });
}

List<shopCategories> categories = [

  shopCategories(
  
      title: "Home Appliance",
      image:Images.appliance,  
      productscount:12, 
      date:DateTime.now(),
  ),
  shopCategories(
  
      title: "Laptops/Mobiles",
      image:Images.tech,  
      productscount:26, 
      date:DateTime.now()
  ),
  shopCategories(
  
      title: "Vehicles",
      image:Images.bikes,  
      productscount:12, 
      date:DateTime.now()
  ),
  shopCategories(
  
      title: "Electronics",
      image:Images.led,  
      productscount:6,
      date:DateTime.now()
  ),
  shopCategories(
  
      title: "Machinery",
      image:Images.appliance,  
      productscount:12,
      date:DateTime.now()
  ),
      
];

String dummyText =
    "Location:College road,JoharTown";
   String dummyText2="Plan:10k per Month";