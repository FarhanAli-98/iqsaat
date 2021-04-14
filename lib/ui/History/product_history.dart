import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iqsaat/utils/app_colors.dart';



class productHistory extends StatefulWidget {
  @override
  productHistoryState createState() => productHistoryState();
}

class productHistoryState extends State<productHistory> {
  bool switchValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
        ),
      body: SingleChildScrollView(
              child: Container(
          padding: EdgeInsets.all(15),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
         // decoration: BoxDecoration(gradient: Colors.amber),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/images/honda125.jpg'),
                    Text(
                      'Product Name:Honda 125',
                      style:
                          TextStyle(color: AppColors.primarycolor, fontSize: 20),
                    ),
                      Text(
                      'Buyer/Seller Name:Barak Obama',
                      style:
                          TextStyle(color: AppColors.primarycolor, fontSize: 20),
                    ),
                       Text(
                          'Product Total Price:150000',
                          style: TextStyle(color: AppColors.primarycolor),
                        ),
                        Text(
                          'Installment plan:Monthly',
                          style: TextStyle(color: AppColors.primarycolor),
                        ),
                        Text(
                          'Paid till date:82000',
                          style: TextStyle(color: AppColors.primarycolor),
                        ),
                         Text(
                          'Remaining:78000',
                          style: TextStyle(color: AppColors.primarycolor),
                        ),
                   
                    SingleChildScrollView(
                                        child: Container(
                        margin: EdgeInsets.only(top: 10, bottom: 10),
                        padding: EdgeInsets.only(left: 08, right: 08),
                        decoration: BoxDecoration(
                           // color: AppColor.fillColor.withOpacity(0.30),
                            borderRadius: BorderRadius.circular(25)),
                        width: 365,
                        height: 35,
                        
                                              child: Row(
                       
                            children: [
                              Column(children:[
                              Icon(
                                Icons.phone,
                                color: AppColors.primarycolor,
                                size: 18,
                              ),
                              SizedBox(
                                width: 05,
                              ),
                              Text(
                                'Buyer/Seller Phone Number:0331-1111222',
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              Icon(
                                Icons.location_on_outlined,
                                color: AppColors.primarycolor,
                              ),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    'White House Bagardiyan',
                                    style:
                                        TextStyle(fontSize: 10, color: Colors.black),
                                  ))
                           ]), ]
                          ),
                        
                      ),
                    ),
                  
                  ],
                ),
              ),
              Text('Date',
                  style: TextStyle(color: Colors.black, fontSize: 18)),
              Row(
                children: [
                  Icon(FontAwesomeIcons.stamp, color: AppColors.primarycolor),
                  SizedBox(
                    width: 15,
                  ),
                  Text('Date of Installments Started:4,1,2021',
                      style: TextStyle(
                        color: Colors.black,
                      ))
                ],
              ),
              Row(
                children: [
                  Icon(FontAwesomeIcons.hourglassEnd, color: AppColors.primarycolor),
                  SizedBox(
                    width: 15,
                  ),
                  Text('Date Installments will ends',
                      style: TextStyle(
                        color: Colors.black,
                      ))
                ],
              ),
              Text('Monthly History',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  )),
              Container(
                child:SingleChildScrollView(
                                child: DataTable(
        columns: const <DataColumn>[
          DataColumn(
            label: Text(
              'Month',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'Status',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'Pay-Date',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ],
        rows: const <DataRow>[
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Janurary')),
              DataCell(Text('True')),
              DataCell(Text('DD/M/YY')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('February')),
              DataCell(Text('False')),
              DataCell(Text('NULL')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('March')),
              DataCell(Text('False')),
              DataCell(Text('DD/M/YY')),
            ],
          ),
        ],
    ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
