import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/slider/product_model.dart';
import 'package:iqsaat/ui/buyer/products/product_description.dart';
import 'package:iqsaat/utils/app_colors.dart';


class ProductGridView extends StatelessWidget {
  final List<ProdSliderCardModel> products;
  ProductGridView({@required this.products});
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        primary: false,
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio:
                (sizeWidth(context)) / (sizeWidth(context) * 1.50),
            crossAxisCount: 2),
        itemBuilder: (_, i) {
          return Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: Colors.white,
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => ProdDescScreen(
                            name: "product",
                            des: "Des",
                            price: "21321",
                            image: "sds",
                            package: [23, 34, 56])));
              },
              borderRadius: BorderRadius.circular(10),
              child: Container(
                decoration: BoxDecoration(
                    //      color: Colors.red,
                    borderRadius: BorderRadius.circular(10)),
                // width: 155,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: sizeWidth(context),
                          height: sizeWidth(context) / 2.5,
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(10)),
                            child: Image.asset(
                              products[i].prodImage,
                              // height: 170,
                              // width: 155,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        products[i].isFreeGift == true
                            ? Positioned(
                                top: 5,
                                left: 5,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 7, vertical: 1.5),
                                  decoration: BoxDecoration(
                                      color: AppColors.primarycolor,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10))),
                                  child: Text(
                                    "Free Gift Including",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        letterSpacing: -0.25),
                                  ),
                                ),
                              )
                            : Container(),
                        products[i].isOutOfStock
                            ? Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 200,
                                  // width: 155,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10))),
                                  alignment: Alignment.center,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                    child: Image.asset(
                                        "assets/images/outOfStock.png"),
                                  ),
                                ),
                              )
                            : Container()
                      ],
                    ),
                    Expanded(
                      child: Container(
                          width: sizeWidth(context),
                          //  color: Colors.green,
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(5.0, 2, 5, 4),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  products[i].prodName,
                                  maxLines: 1,
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: -0.5,
                                  ),
                                ),
                                Text(
                                  products[i].prodDesc,
                                  maxLines: 1,
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                    letterSpacing: -0.5,
                                  ),
                                ),
                                Expanded(child: SizedBox()),
                                Text(
                                  products[i].prodPrice + " Rs",
                                  maxLines: 1,
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: AppColors.primarycolor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.secondaryColor,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10)),
                              ),
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  splashColor: AppColors.primarycolor,
                                  onTap: () {
                                    print("Buy now");
                                  },
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10)),
                                  child: Container(
                                    height: 35,
                                    // width: 120,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10)),
                                    ),
                                    child: Text(
                                      "BUY NOW",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
