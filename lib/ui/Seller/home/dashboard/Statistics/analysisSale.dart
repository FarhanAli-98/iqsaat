import 'package:flutter/material.dart';
import 'package:iqsaat/utils/app_colors.dart';
import '../piechart.dart';
import 'package:bezier_chart/bezier_chart.dart';
import 'package:intl/intl.dart';
class salesanalysis extends StatefulWidget {
  @override
  _salesanalysisState createState() => _salesanalysisState();
}

class _salesanalysisState extends State<salesanalysis> {
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
                  "Analysis",
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
                            builder: (BuildContext context) => _linechart(context)  );
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
  Widget _linechart(BuildContext context) {
    final fromDate = DateTime(2021, 05, 13);
    final toDate = DateTime.now();

    final date1 = DateTime.now().subtract(Duration(days: 2));
    final date2 = DateTime.now().subtract(Duration(days: 3));
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0)), //this right here
      child: Container(
        height: MediaQuery.of(context).size.height / 2,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Container(
            color: Colors.red[200],
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            child: BezierChart(
              fromDate: fromDate,
              bezierChartScale: BezierChartScale.WEEKLY,
              toDate: toDate,
              selectedDate: toDate,
              series: [
                BezierLine(
                  label: "Duty",
                  onMissingValue: (dateTime) {
                    if (dateTime.day.isEven) {
                      return 10.0;
                    }
                    return 5.0;
                  },
                  data: [
                    DataPoint<DateTime>(value: 10, xAxis: date1),
                    DataPoint<DateTime>(value: 50, xAxis: date2),
                  ],
                ),
              ],
              config: BezierChartConfig(
                verticalIndicatorStrokeWidth: 3.0,
                verticalIndicatorColor: Colors.black26,
                showVerticalIndicator: true,
                verticalIndicatorFixedPosition: false,
                backgroundColor: Colors.blueGrey,
                footerHeight: 30.0,
              ),
            ),
          ),
        ),
      ),
    );
  }

  