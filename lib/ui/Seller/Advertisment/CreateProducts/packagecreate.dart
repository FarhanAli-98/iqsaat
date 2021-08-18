import 'package:iqsaat/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:select_form_field/select_form_field.dart';
import 'package:iqsaat/utils/app_colors.dart';

class CreatePackages extends StatefulWidget {
  @override
  _CreatePackagesState createState() => _CreatePackagesState();
}

class _CreatePackagesState extends State<CreatePackages> {
  @override
  // ignore: override_on_non_overriding_member
  Widget pricefield(count) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: TextField(
        controller: pricecontroller[count],
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Price\p\k\r',
        ),
      ),
    );
  }

  final List<Map<String, dynamic>> _items = [
    {
      'value': '3  Months',
      'label': '3 Months',
      'enable': true,
      'icon': Icon(Icons.format_list_numbered_rtl)
    },
    {
      'value': '5  Months',
      'label': '5  Months',
      'enable': true,
      'icon': Icon(Icons.format_list_numbered_rtl),
    },
    {
      'value': '9 Months',
      'label': '9 Months',
      'enable': true,
      'icon': Icon(Icons.format_list_numbered_rtl)
    },
  ];
  Widget monthField(count) {
    return Expanded(
      flex: 1,
      child: SelectFormField(
        //controller: _monthcontroller[count],

        type: SelectFormFieldType.dropdown,
        labelText: 'Months',
        items: _items,
        onChanged: (val) => print(val),
        onSaved: (val) => print(val),
      ),
    );
  }

  Widget package(BuildContext context, count) {
    return Container(
      padding: EdgeInsets.all(5),
      //width: MediaQuery.of(context).size.width / 3,
      height: MediaQuery.of(context).size.width / 2,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.primarycolor),
        borderRadius: BorderRadius.circular(10),
      ),
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
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(child: monthField(count)),
              )),
          SizedBox(
              width: MediaQuery.of(context).size.width / 3,
              child: Container(
                  height: MediaQuery.of(context).size.height * .118,
                  child: pricefield(count))),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 3; i++) {
      pricecontroller[i] = TextEditingController();
      monthcontroller[i] = TextEditingController();
    }
  }

  Widget build(BuildContext context) {
    // TODO: implement buil

    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height / 3,
      width: MediaQuery.of(context).size.width / 0.3,
      color: Colors.white,
      child: Row(
        children: [
          SizedBox(
              child: Container(
                  padding: EdgeInsets.all(1.9), child: package(context, 0))),
          SizedBox(
              child: Padding(
            padding: EdgeInsets.all(1.9),
            child: package(context, 1),
          )),
          Container(
              padding: EdgeInsets.all(1.9),
              child: SizedBox(child: package(context, 2))),
        ],
      ),
    ));
  }
}
