import 'package:flutter/material.dart';
import 'package:iqsaat/utils/app_colors.dart';
import '../piechart.dart';

class shopanalysis extends StatefulWidget {
  @override
  _shopanalysisState createState() => _shopanalysisState();
}

class _shopanalysisState extends State<shopanalysis> {
  @override
  Widget build(BuildContext context) {
    return _analysisline(context);
  }
}


Widget _analysisline(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25, right: 25),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15)),
                        boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
      ),
      child: Column(
        children: [
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  "Category Analysis",
                  style: Theme.of(context)
                      .textTheme
                      .title
                      .apply(color: AppColors.primarycolor, fontWeightDelta: 2),
                ),
              ),
              Icon(Icons.timelapse, color: Colors.black.withOpacity(.71)),
              Text(
                "This month",
                style: TextStyle(color: Colors.black.withOpacity(.71)),
              ),
            ],
          ),

          Divider(
            height: 5,
          ),
          //      ListView.builder(

          // itemBuilder: (BuildContext context, int index) {
          Row(
            children: <Widget>[
              Flexible(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Sales Analysis",
                      style: Theme.of(context)
                          .textTheme
                          .title
                          .apply(color: Colors.black, fontWeightDelta: 2),
                    ),
                    Text(
                      "Created 20.10.2020",
                      style: TextStyle(color: Colors.black.withOpacity(.71)),
                    ),
                    Text(
                      "Originator:shop ",
                      style: TextStyle(color: Colors.black.withOpacity(.71)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 110,
              ),
              Flexible(
                child: Column(
                  children: <Widget>[
                    Text(
                      "",
                      style: Theme.of(context)
                          .textTheme
                          .title
                          .apply(color: Color(0xff17dcb0), fontWeightDelta: 2),
                      textAlign: TextAlign.center,
                    ),
                    RaisedButton(
                      color: Colors.cyan[50],
                      child:
                          Icon(Icons.bar_chart, color: AppColors.primarycolor),
                      onPressed: () {
                        //Navigator.pushNamed(context, 'transaction');
                        showDialog(
                            context: context,
                            builder: (BuildContext context) => categorychart()  );
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }