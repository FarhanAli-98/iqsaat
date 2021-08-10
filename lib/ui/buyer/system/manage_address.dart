
import 'package:flutter/material.dart';
import 'package:iqsaat/Widget/appBar.dart';
import 'package:iqsaat/Widget/button/custom_button.dart';
import 'package:iqsaat/Widget/custom_text_form.dart';
import 'package:iqsaat/hive/data/list_class.dart';
import 'package:iqsaat/utils/app_colors.dart';

class ManageAddressScreen extends StatefulWidget {
  @override
  _ManageAddressScreenState createState() => _ManageAddressScreenState();
}

class _ManageAddressScreenState extends State<ManageAddressScreen> {
  List<DropDownItems> _dropdownItems = [
    DropDownItems(1, "Listed Items"),
    DropDownItems(2, "Listed Items"),
    DropDownItems(3, "Listed Items"),
    DropDownItems(4, "Listed Items"),
  ];
  List<DropDownItems> _dropdownItemsArea = [
    DropDownItems(1, "Listed Items"),
    DropDownItems(2, "Listed Items"),
    DropDownItems(3, "Listed Items"),
    DropDownItems(4, "Listed Items"),
  ];
  List<DropdownMenuItem<DropDownItems>> _dropdownMenuItems;
  List<DropdownMenuItem<DropDownItems>> _dropdownMenuItemsArea;
  DropDownItems _selectedItem;
  DropDownItems _selectedItem2;

  void initState() {
    super.initState();
    _dropdownMenuItems = buildDropDownMenuItems(_dropdownItems);
    _dropdownMenuItemsArea = buildDropDownMenuItems(_dropdownItemsArea);
  }

  List<DropdownMenuItem<DropDownItems>> buildDropDownMenuItems(List listItems) {
    List<DropdownMenuItem<DropDownItems>> items = [];
    for (DropDownItems listItem in listItems) {
      items.add(
        DropdownMenuItem(
          child: Text(listItem.name),
          value: listItem,
        ),
      );
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarwithCenterTitle(context,   "Manage Address".toUpperCase()),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            CustomTexFormField(hint:  "Full Name"),
            SizedBox(
              height: 7,
            ),
            CustomTexFormField(hint:  "Address"),
            SizedBox(
              height: 7,
            ),
            Container(
              height: 50,
              width: sizeWidth(context) / 1.12,
              decoration: BoxDecoration(
                color: Colors.grey[50],
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Colors.grey[200],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                      isExpanded: true,
                      value: _selectedItem,
                      hint: Text(

                         "City",
                        style: TextStyle(color: AppColors.secondayTextColor),

             
                      ),
                      icon: Icon(Icons.keyboard_arrow_down_rounded),
                      style: TextStyle(fontSize: 13, color: Colors.grey[500]),
                      items: _dropdownMenuItems,
                      onChanged: (value) {
                        setState(() {
                          _selectedItem = value;
                        });
                      }),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: sizeWidth(context) / 1.12,
              decoration: BoxDecoration(
                  color: Colors.grey[50],
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.grey[200])),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                      isExpanded: true,
                      value: _selectedItem2,
                      hint: Text(
                         "Area/Region/Province",
                        style: TextStyle(color: AppColors.secondayTextColor),
                      ),
                      icon: Icon(Icons.keyboard_arrow_down_rounded),
                      style: TextStyle(fontSize: 13, color: Colors.grey[500]),
                      items: _dropdownMenuItemsArea,
                      onChanged: (value) {
                        setState(() {
                          _selectedItem2 = value;
                        });
                      }),
                ),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            CustomTexFormField(
              hint:  "Phone No.",
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 7,
            ),
            CustomTexFormField(
              hint:  "Alternative Phone No",
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 80,
            ),
            Container(
              height: 50,
              child: CustomButtom(
                onPress: () {
                  Navigator.pop(context);
                },
                text:  'save address',
                buttonColor: AppColors.secondaryColor,
                buttonWidth: sizeWidth(context),
              ),
            )
          ],
        ),
      ),
    );
  }
}
