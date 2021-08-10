import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iqsaat/models/getModels/getAllAds.dart';
import 'package:iqsaat/ui/buyer/products/product_description.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:iqsaat/utils/routes.dart';

class ProductCardDesign extends StatelessWidget {
  final Datum product;
  final bool isGridView;
  final int count;

  ProductCardDesign({@required this.product, this.isGridView = false, this.count,});
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: Colors.white,
      child: InkWell(
        onTap: () {
          AppRoutes.push(
              context,
              ProdDescScreen(
                            name: "product",
                            des: "Des",
                            price: "21321",
                            image: "sds",
                            package: [23, 34, 56]));
        },
        borderRadius: BorderRadius.circular(10),
        child: Container(
          decoration: BoxDecoration(
              //color: Colors.red,
              borderRadius: BorderRadius.circular(10)),
          width: 155,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          "https://img.flaticon.com/icons/png/512/906/906343.png?size=1200x630f&pad=10,10,10,10&ext=png&bg=FFFFFFFF"),
                                    ),
                  count%2 == 0
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
                  count%2 !=0
                      ? Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 170,
                            width: 155,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10))),
                            alignment: Alignment.center,
                            child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          "https://img.flaticon.com/icons/png/512/906/906343.png?size=1200x630f&pad=10,10,10,10&ext=png&bg=FFFFFFFF"),
                                    ),
                          ),
                        )
                      : Container()
                ],
              ),
              Expanded(
                child: Container(
                    width: sizeWidth(context),
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(5.0, 2, 5, 4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product.name,
                            maxLines: 1,
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              letterSpacing: -0.5,
                            ),
                          ),
                          Text(
                            product.products[0].description,
                            maxLines: 1,
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.grey,
                              letterSpacing: -0.5,
                            ),
                          ),
                          Expanded(child: SizedBox()),
                          Text(
                          product.products[0].price+ " RS",
                            maxLines: 1,
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 14,
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
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.secondaryColor,
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(10)),
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
                            width: 120,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10)),
                            ),
                            child: Text(
                              "Detail",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(10)),
                      child: Container(
                        height: 35,
                        width: 35,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(10)),
                        ),
                        child: Icon(
                          CupertinoIcons.bag,
                          size: 18,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}