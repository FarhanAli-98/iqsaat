import 'package:pluto_grid/pluto_grid.dart';
import 'package:flutter/material.dart';
import 'package:select_form_field/select_form_field.dart';
import  'package:iqsaat/utils/app_colors.dart';
class createPackages extends StatelessWidget {
  Widget pricefield()
  {
    return 
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
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
    
    'label': '3 Months',
    'enable': false,
    'icon': Icon(Icons.format_list_numbered_rtl)
  },
  {
    'label': '5  Months',
    'enable': false,
    'icon': Icon(Icons.format_list_numbered_rtl),
  },
  {
    
    'label': '9 Months',
    'enable': false,
    'icon': Icon(Icons.format_list_numbered_rtl)
  },
];
  Widget monthField()
  {
    return SelectFormField(
  type: SelectFormFieldType.dropdown, 
  labelText: 'Months',
  items: _items,
  onChanged: (val) => print(val),
  onSaved: (val) => print(val),
);
  }
  Widget price_month(BuildContext context)
  {
    return Container(
                            width:MediaQuery.of(context).size.width/3,
                            decoration: BoxDecoration(border: Border.all(color:AppColors.primarycolor)),
                            child: Column(children: [
                              SizedBox(height: MediaQuery.of(context).size.height/8,),
                              Center(child: Text("Package",
                              style: TextStyle(color: AppColors.primarycolor
                              ,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,)
                              ),),
                              SizedBox(width: MediaQuery.of(context).size.width/2, child: pricefield()),
                             SizedBox(width: MediaQuery.of(context).size.width/2,  child: monthField()),
                             
              
              ],
          ),
                          );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement buil


        return Scaffold(
                  body:  Container(
                    height: MediaQuery.of(context).size.height/2,
                    color: Colors.grey[100],

                    child: Row(
                            children: [
                              
                              price_month(context),
                              price_month(context),
                              price_month(context),
                             
              
              ],
                          
                        ),
                      
                    
                  )
        );


  }
  
}
