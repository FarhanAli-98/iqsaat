import 'package:iqsaat/utils/images.dart';

class ShopCategories {
  final String image, title;
  final int productscount;
  final DateTime date;
  final List<String> subcategory;
  //final Color color;
  ShopCategories({
    this.image,
    this.title,
    this.productscount,
    this.date,
    this.subcategory,
  });
}

List<ShopCategories> categories = [
  ShopCategories(
    title: "Home Appliance",
    image: Images.appliance,
    productscount: 12,
    date: DateTime.now(),
    subcategory: [
      "Coffee maker.",
      "Blender.",
      "Mixer",
      "Toaster",
      "Microwave",
      "Crock pot",
      "Rice cooker",
      "Pressure cooker",
    ],
  ),
  ShopCategories(
    title: "Laptops/Mobiles",
    image: Images.tech,
    productscount: 26,
    date: DateTime.now(),
    subcategory: [
      "Nokia.",
      "Sony.",
      "LG.",
      "HTC.",
      "Motorola",
      "Lenovo",
      "Google",
      "Honor.",
      "Lenovo",
      "HP	",
      "Dell",
      "Apple",
      "Acer",
    ],
  ),
  ShopCategories(
    title: "Vehicles",
    image: Images.bikes,
    productscount: 12,
    date: DateTime.now(),
    subcategory: [
      " bike",
      "Taxi",
      " car",
      "Bicycle",
    ],
  ),
  ShopCategories(
    title: "Electronics",
    image: Images.led,
    productscount: 6,
    date: DateTime.now(),
    subcategory: [
      " Air purifier",
      "Air conditioner",
      "Alarm clock",
      "Backup charger",
      "Bread maker",
      "Banknote counter",
      "Blender",
      "Bluetooth speaker",
    ],
  ),
  ShopCategories(
    title: "temp",
    image: Images.appliance,
    productscount: 12,
    date: DateTime.now(),
    subcategory: ["bike", 'cars', 'truck', 'airplane'],
  ),
];

String dummyText = "Location:College road,JoharTown";
String dummyText2 = "Plan:10k per Month";
