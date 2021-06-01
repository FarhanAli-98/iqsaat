import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:tuple/tuple.dart';
=======
>>>>>>> main
import './pie/indicator.dart';
import './pie/sections.dart';

/// !!Step1: prepare the data to plot.


class categorychart extends StatefulWidget {
  const categorychart({Key key}) : super(key: key);

  @override
  _categorychartState createState() => _categorychartState();
}

class _categorychartState extends State<categorychart> {
  int _touchedIdx = -1;
  bool _showBorder = true;
  double _radius = 100;
  double _innerRadius = 0;
  double _sectionsSpace = 0;
  double _startDegreeOffset = 180;

  @override
  Widget build(BuildContext context) {
    /// !!Step2: convert data into pieChartSectionData.
    // final pieChartSections = <PieChartSectionData>[
    //   for (int i = 0; i < _data.length; ++i)
    //     PieChartSectionData(
    //       title: _data[i].item1,
    //       value: _data[i].item2,
    //       color: _data[i].item3,
    //       // Make selected section larger
    //       radius: i == _touchedIdx ? _radius * 1.2 : _radius,
    //     ),
    // ];

    /// !!Step3: prepare pieChartData
    // final pieChartData = PieChartData(
    //   sections: pieChartSections,
    //   // ! Touch behavior
    //   pieTouchData: PieTouchData(
    //     enabled: true,
    //     touchCallback: (pieTouchResponse) => setState(() {
    //       _touchedIdx = pieTouchResponse.touchedSectionIndex;
    //     }),
    //   ),
    //   centerSpaceRadius: _innerRadius,
    //   sectionsSpace: _sectionsSpace,
    //   startDegreeOffset: _startDegreeOffset,
    //   borderData: FlBorderData(show: _showBorder),
    // );
    return Scaffold(
      body: Dialog(
              child: Center(
          child: Column(
                   children:<Widget>[
                     SizedBox(height:150,),
                    PieChart(
                      
                      PieChartData(
                        pieTouchData: PieTouchData(
                          touchCallback: (pieTouchResponse) {
                            setState(() {
                              if (pieTouchResponse.touchInput is FlLongPressEnd ||
                                  pieTouchResponse.touchInput is FlPanEnd) {
                                _touchedIdx = -1;
                              } else {
                                _touchedIdx = pieTouchResponse.touchedSectionIndex;
                              }
                            });
                          },
                        ),
                        borderData: FlBorderData(show: false),
                        sectionsSpace: 0,
                        centerSpaceRadius: 40,
                        sections: getSections(_touchedIdx),
                      ),
                    ),
                    SizedBox(height: 100,),
               
              Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: IndicatorsWidget(),
                      ),
                    ]),]),
        ),
      )
     // bottomNavigationBar: _buildControlWidgets(),
    );
  }

 
}