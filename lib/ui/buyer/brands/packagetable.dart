import 'package:pluto_grid/pluto_grid.dart';
import 'package:flutter/material.dart';
import 'package:select_form_field/select_form_field.dart';
import 'package:iqsaat/utils/app_colors.dart';

class Packagetable extends StatefulWidget {
  final List<int> price;
  final int count;

  const Packagetable({Key key, this.price, this.count}) : super(key: key);
  @override
  _PackagetableState createState() => _PackagetableState();
}

class _PackagetableState extends State<Packagetable> {
  int limit;
  List<String> months = ['3', '12', '18'];
  List<bool> values = [false, false, false];
  @override
  void initState() {
    super.initState();
    limit = widget.count;
  }

  Widget pricefield(count) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: TextField(
        controller: _pricecontroller..text = widget.price[count].toString(),
        keyboardType: TextInputType.number,
        enabled: false,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Price\p\k\r',
        ),
      ),
    );
  }

  Widget package(BuildContext context, count) {
    return Container(
      // padding: EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width / 3.7,
      height: MediaQuery.of(context).size.height / 2,
      decoration:
          BoxDecoration(border: Border.all(color: AppColors.primarycolor),borderRadius: BorderRadius.circular(10),),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                
                child: Checkbox(
                  checkColor:  this.values[count]==true?Colors.black:Colors.white,
                  activeColor: Colors.white,
                  //  value:,
                  onChanged: (bool value) {
                    print(value);
                    setState(() {
                      this.values[count] = !values[count];
                    });
                  },
                  value: true,
                ),
              ),
              Center(
                child: Text("Package",
                    style: TextStyle(
                      color: AppColors.primarycolor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ],
          ),
          // SizedBox(height: MediaQuery.of(context).size.height/8,),

          SizedBox(
              width: MediaQuery.of(context).size.width / 3,
              child: Container(
                  padding: EdgeInsets.all(4),
                  child: Text("${months[count]} Month",
                      textAlign: TextAlign.center))),
          SizedBox(
              width: MediaQuery.of(context).size.width / 3,
              child: pricefield(count)),
        ],
      ),
    );
  }

  final TextEditingController _pricecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height / 4,
        width: MediaQuery.of(context).size.width / 0.3,
        color: Colors.white,
        child: Row(
          children: [
            Container(
              height: 340,
              width: sizeWidth(context) / 1.2,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: widget.price.length,
                  itemBuilder: (context, index) {
                    return Container(padding: EdgeInsets.all(1.9),child: SizedBox(child: package(context, index)));
                  }),
            ),
            // SizedBox(child: package(context,0)),
            // SizedBox(child: package(context,1)),
            // SizedBox(child: package(context,2)),
          ],
        ),
      ),
    );
  }
}
