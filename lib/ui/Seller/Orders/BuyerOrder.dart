import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/orderscard.dart';
import 'package:iqsaat/utils/app_colors.dart';
import 'package:provider/provider.dart';
import 'customer_order.dart';

class Buyer_orders extends StatefulWidget {
  @override
  _Buyer_ordersState createState() => _Buyer_ordersState();
}

class _Buyer_ordersState extends State<Buyer_orders> {



//Functions
  // getMyOrderList() {
  //   Provider.of<AdsProvider>(context, listen: false)
  //       .fetchedAds()
  //       .then((value) => ({
  //             if (value.success == true)
  //               {
  //                 setState(() {
  //                   yes = true;
  //                 })
  //               }
  //           }));
  // }

  // void initState() {
  //   super.initState();
  //   getMyOrderList();
  // }


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
                  status: false,
                  prodname: "Haeir 30",
                  personname: " Usama",
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
