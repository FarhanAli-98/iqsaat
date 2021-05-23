import 'package:pluto_grid/pluto_grid.dart';
import 'package:flutter/material.dart';
class createPackages extends StatelessWidget {
  List<PlutoColumn> columns = [
  /// Text Column definition
  
   PlutoColumn(
    title: 'Packages',
    field: 'text_field',
    type: PlutoColumnType.text(),
  ),
   PlutoColumn(
    title: 'Months',
    field: 'select_field',
    type: PlutoColumnType.select(['2 Months', '3 Months', '4 Months','5 Months','6 Months','7 Months','8 Months','9 Months','10 Months','11 Months','12 Months']),
  ),
  /// Number Column definition
  PlutoColumn(
    title: 'Price per Month',
    field: 'number_field',
    type: PlutoColumnType.number(),
  ),
  /// Select Column definition
  /// Datetime Column definition
  /// Farhan incase you want to add those columns below........
  // PlutoColumn(
  //   title: 'date column',
  //   field: 'date_field',
  //   type: PlutoColumnType.date(),
  // ),
  // /// Time Column definition
  // PlutoColumn(
  //   title: 'time column',
  //   field: 'time_field',
  //   type: PlutoColumnType.time(),
  // ),
];

List<PlutoRow> rows = [
  PlutoRow(
    cells: {
      'text_field': PlutoCell(value: 'Package 1'),
      'number_field': PlutoCell(value: 2020),
      'select_field': PlutoCell(value: '3 Months'),
      //'date_field': PlutoCell(value: '2020-08-06'),
      //'time_field': PlutoCell(value: '12:30'),
    },
  ),
  PlutoRow(
    cells: {
      'text_field': PlutoCell(value: 'Pakcage 2'),
      'number_field': PlutoCell(value: 2021),
      'select_field': PlutoCell(value: '4 Months'),
     // 'date_field': PlutoCell(value: '2020-08-07'),
      //'time_field': PlutoCell(value: '18:45'),
    },
  ),
  PlutoRow(
    cells: {
      'text_field': PlutoCell(value: 'Package 3'),
      'number_field': PlutoCell(value: 2022),
      'select_field': PlutoCell(value: '5 Months'),
     // 'date_field': PlutoCell(value: '2020-08-08'),
      //'time_field': PlutoCell(value: '23:59'),
    },
  ),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Packages'),
      ),
      body: Container(
        padding: const EdgeInsets.all(5),
        child: PlutoGrid(
          columns: columns,
          rows: rows,
          onChanged: (PlutoGridOnChangedEvent event) {
            print(event);
          },
          onLoaded: (PlutoGridOnLoadedEvent event) {
            print(event);
          }
        ),
      ),
    );
  }
}