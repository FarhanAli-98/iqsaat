import 'package:pluto_grid/pluto_grid.dart';
import 'package:flutter/material.dart';
import 'package:select_form_field/select_form_field.dart';
import 'package:iqsaat/utils/app_colors.dart';

class Packagetable extends StatefulWidget {
  final List<int> price;

  const Packagetable( {Key key, this.price}) : super(key: key);
  @override
  _PackagetableState createState() => _PackagetableState();
}

class _PackagetableState extends State<Packagetable> {
  @override
  Widget pricefield(count) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: TextField(
        controller: _pricecontroller..text =widget.price[count].toString(),
        keyboardType: TextInputType.number,
        enabled: false,
        
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Price\p\k\r',
        ),
      ),
    );
  }

  Widget package(BuildContext context,count) {
    return Container(
      width: MediaQuery.of(context).size.width / 3.7,
      height: MediaQuery.of(context).size.height / 2,
      decoration:
          BoxDecoration(border: Border.all(color: AppColors.primarycolor)),
      child: Column(
        children: [
          // SizedBox(height: MediaQuery.of(context).size.height/8,),
          Center(
            child: Text("Package",
                style: TextStyle(
                  color: AppColors.primarycolor,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                )),
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width / 3,
              child: Container(padding:EdgeInsets.all(4) ,child: Text("3 Month",textAlign: TextAlign.center))),
          SizedBox(
              width: MediaQuery.of(context).size.width / 3,
              child: pricefield(count)),
        ],
      ),
    );
  }

  final TextEditingController _pricecontroller = TextEditingController();
  final TextEditingController _monthcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return 
        Container(
      height: MediaQuery.of(context).size.height / 4,
      width: MediaQuery.of(context).size.width / 0.3,
      color: Colors.white,
      child: Row(
        children: [
          SizedBox(child: package(context,0)),
          SizedBox(child: package(context,1)),
          SizedBox(child: package(context,2)),
        ],
      ),
    );
  }
}
