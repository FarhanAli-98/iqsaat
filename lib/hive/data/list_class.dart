import 'package:flutter/material.dart';

class DropDownItems {
  int value;
  String name;

  DropDownItems(this.value, this.name);
}

class Packages {
  final List<TextEditingController> pricecontroller = [];
  final List<TextEditingController> monthcontroller = [];

  Packages(List<TextEditingController> pricecontroller,
      List<TextEditingController> monthcontroller);
}
