import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/orderscard.dart';
import 'package:iqsaat/ui/Seller/Orders/customer_order.dart';
import 'package:iqsaat/utils/app_colors.dart';

class Accepted_orders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: appBarwithbackIcon(context,"Accepted Orders"),
      body: buildInkWell(context),
    );
  }

   buildInkWell(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
                margin: EdgeInsets.only(
                    right: 20, left: 20, top: 13, bottom: 13),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.backgroundColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blueGrey,
                        offset: Offset(0.0, 1.0),
                        blurRadius: 6.0,
                      )
                    ]),
                child: ordersCard(
                  status: true,
                  prodname: "Heair 30",
                  personname: "Usama",
                  price: 40000,
                  date: DateTime.now(),
                  plan: " 3 Monthly",
                  func: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => OrderScreen(
                                  des: 'DESDESDES',
                                  image: 'ASD',
                                  price: '4000',
                                  name: 'Haeir 30',
                                  customername: 'Usama',
                                  month: '3',
                                  package: '23',
                                )));
                  },
                ));
          }),
    );
  }
}
