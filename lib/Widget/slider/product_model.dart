// @dart=2.9
import 'package:flutter/foundation.dart';

class ProdSliderCardModel {
  String prodName;
  String prodDesc;
  String prodPrice;
  String prodImage;
  bool isFreeGift;
  bool isOutOfStock;
  ProdSliderCardModel(
      {@required this.prodName,
      @required this.prodDesc,
      @required this.prodPrice,
      @required this.prodImage,this.isFreeGift=false,this.isOutOfStock=false});
}
