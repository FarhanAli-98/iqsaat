


// class CurvePainter extends CustomPainter {
//   //final double? angle;
//  // final List<Color>? colors;

//  // CurvePainter({this.colors, this.angle = 140});

//   @override
//   void paint(Canvas canvas, Size size) {
//     List<Color> colorsList = [];
//     if (colors != null) {
//       colorsList = colors ?? [];
//     } else {
//       colorsList.addAll([Colors.white, Colors.white]);
//     }

//     final shdowPaint = new Paint()
//       ..color = Colors.black.withOpacity(0.4)
//       ..strokeCap = StrokeCap.round
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 14;
//     final shdowPaintCenter = new Offset(size.width / 2, size.height / 2);
//     final shdowPaintRadius =
//         math.min(size.width / 2, size.height / 2) - (14 / 2);
//     canvas.drawArc(
//         new Rect.fromCircle(center: shdowPaintCenter, radius: shdowPaintRadius),
//         degreeToRadians(278),
//         degreeToRadians(360 - (365 - angle!)),
//         false,
//         shdowPaint);

//     shdowPaint.color = Colors.grey.withOpacity(0.3);
//     shdowPaint.strokeWidth = 16;
//     canvas.drawArc(
//         new Rect.fromCircle(center: shdowPaintCenter, radius: shdowPaintRadius),
//         degreeToRadians(278),
//         degreeToRadians(360 - (365 - angle!)),
//         false,
//         shdowPaint);

//     shdowPaint.color = Colors.grey.withOpacity(0.2);
//     shdowPaint.strokeWidth = 20;
//     canvas.drawArc(
//         new Rect.fromCircle(center: shdowPaintCenter, radius: shdowPaintRadius),
//         degreeToRadians(278),
//         degreeToRadians(360 - (365 - angle!)),
//         false,
//         shdowPaint);

//     shdowPaint.color = Colors.grey.withOpacity(0.1);
//     shdowPaint.strokeWidth = 22;
//     canvas.drawArc(
//         new Rect.fromCircle(center: shdowPaintCenter, radius: shdowPaintRadius),
//         degreeToRadians(278),
//         degreeToRadians(360 - (365 - angle!)),
//         false,
//         shdowPaint);

//     final rect = new Rect.fromLTWH(0.0, 0.0, size.width, size.width);
//     final gradient = new SweepGradient(
//       startAngle: degreeToRadians(268),
//       endAngle: degreeToRadians(270.0 + 360),
//       tileMode: TileMode.repeated,
//       colors: colorsList,
//     );
//     final paint = new Paint()
//       ..shader = gradient.createShader(rect)
//       ..strokeCap = StrokeCap.round // StrokeCap.round is not recommended.
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 14;
//     final center = new Offset(size.width / 2, size.height / 2);
//     final radius = math.min(size.width / 2, size.height / 2) - (14 / 2);

//     canvas.drawArc(
//         new Rect.fromCircle(center: center, radius: radius),
//         degreeToRadians(278),
//         degreeToRadians(360 - (365 - angle!)),
//         false,
//         paint);

//     final gradient1 = new SweepGradient(
//       tileMode: TileMode.repeated,
//       colors: [Colors.white, Colors.white],
//     );

//     var cPaint = new Paint();
//     cPaint..shader = gradient1.createShader(rect);
//     cPaint..color = Colors.white;
//     cPaint..strokeWidth = 14 / 2;
//     canvas.save();

//     final centerToCircle = size.width / 2;
//     canvas.save();

//     canvas.translate(centerToCircle, centerToCircle);
//     canvas.rotate(degreeToRadians(angle! + 2));

//     canvas.save();
//     canvas.translate(0.0, -centerToCircle + 14 / 2);
//     canvas.drawCircle(new Offset(0, 0), 14 / 5, cPaint);

//     canvas.restore();
//     canvas.restore();
//     canvas.restore();
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return true;
//   }

//   double degreeToRadians(double degree) {
//     var redian = (math.pi / 180) * degree;
//     return redian;
//   }
// }

// import 'package:pluto_grid/pluto_grid.dart';
// import 'package:flutter/material.dart';
// import 'package:select_form_field/select_form_field.dart';
// import  'package:iqsaat/utils/app_colors.dart';
// class CreatePackages extends StatelessWidget {
//   Widget pricefield()
//   {
//     return 
//         Padding(
//           padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
//           child: TextField(
//             keyboardType: TextInputType.number,
//             decoration: InputDecoration(
//               border: OutlineInputBorder(),
//               labelText: 'Price\p\k\r',
//             ),
//           ),
//         );

//   }
//           final List<Map<String, dynamic>> _items = [
//   {
    
//     'label': '3 Months',
//     'enable': false,
//     'icon': Icon(Icons.format_list_numbered_rtl)
//   },
//   {
//     'label': '5  Months',
//     'enable': false,
//     'icon': Icon(Icons.format_list_numbered_rtl),
//   },
//   {
    
//     'label': '9 Months',
//     'enable': false,
//     'icon': Icon(Icons.format_list_numbered_rtl)
//   },
// ];
//   Widget monthField()
//   {
//     return SelectFormField(
//   type: SelectFormFieldType.dropdown, 
//   labelText: 'Months',
//   items: _items,
//   onChanged: (val) => print(val),
//   onSaved: (val) => print(val),
// );
//   }
//   Widget price_month(BuildContext context)
//   {
//     return Container(
//                             width:MediaQuery.of(context).size.width/3,
//                             decoration: BoxDecoration(border: Border.all(color:AppColors.primarycolor)),
//                             child: Column(children: [
//                               SizedBox(height: MediaQuery.of(context).size.height/8,),
//                               Center(child: Text("Package",
//                               style: TextStyle(color: AppColors.primarycolor
//                               ,
//                               fontSize: 15,
//                               fontWeight: FontWeight.bold,)
//                               ),),
//                               SizedBox(width: MediaQuery.of(context).size.width/2, child: pricefield()),
//                              SizedBox(width: MediaQuery.of(context).size.width/2,  child: monthField()),
                             
              
//               ],
//           ),
//                           );
//   }
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement buil


//         return Scaffold(
//                   body:  Container(
//                     height: MediaQuery.of(context).size.height/2,
//                     color: Colors.grey[100],

//                     child: Row(
//                             children: [
                              
//                               price_month(context),
//                               price_month(context),
//                               price_month(context),
                             
              
//               ],
                          
//                         ),
                      
                    
//                   )
//         );


//   }
  
// }
// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';

// // void main() => runApp(MyApp());

// // class MyApp extends StatelessWidget {
// //   // This widget is the root of your application.
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Flutter Demo',
// //       theme: ThemeData(
// //         primarySwatch: Colors.blue,
// //       ),
// //       home: MyHomePage(title: 'Home Page'),
// //     );
// //   }
// // }

// // class MyHomePage extends StatefulWidget {
// //   MyHomePage({Key key, this.title}) : super(key: key);

// //   final String title;


// //   @override
// //   _MyHomePageState createState() => _MyHomePageState();
// // }

// // class _MyHomePageState extends State<MyHomePage> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(

// //         appBar: AppBar(
// //           title: Text(widget.title),
// //         ),
// //         body: GridView.builder(
// //           itemCount: 6,
// //           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// //             childAspectRatio: 8.5 / 10.0,
// //             crossAxisCount: 2,
// //           ),
// //           itemBuilder: (BuildContext context, int index) {
// //             return Padding(
// //                 padding: EdgeInsets.all(0),
// //                 child: Card(
// //                     semanticContainer: true,
// //                     shape: RoundedRectangleBorder(
// //                       borderRadius: BorderRadius.circular(7.0),
// //                     ),
// //                     clipBehavior: Clip.antiAlias,
// //                     child: Column(
// //                       crossAxisAlignment: CrossAxisAlignment.start,
// //                       children: <Widget>[
// //                         Expanded(
// //                             child: Container(
// //                               decoration: BoxDecoration(
// //                                 image: DecorationImage(
// //                                     image: NetworkImage('https://spng.pngfind.com/pngs/s/9-99467_apple-watch-png-mobile-watch-apple-price-transparent.png'),
// //                                     fit: BoxFit.fill),
// //                               ),
// //                             )),
// //                         Padding(
// //                             padding: EdgeInsets.all(0),
// //                             child: Text(
// //                               "1 Shoot whole night",
// //                               style: TextStyle(fontSize: 15.0,fontStyle: FontStyle.normal),
// //                             )
// //                         ),
// //                         Padding(
// //                             padding: EdgeInsets.all(5.0),
// //                             child: Text(
// //                               "Location: Pakistan UMT | Views 350",
// //                               style: TextStyle(fontSize: 10.0,color: Colors.grey),

// //                             )
// //                         ),
// //                         Padding(
// //                             padding: EdgeInsets.all(5.0),
// //                             child: Text(
// //                               "25",
// //                               style: TextStyle(fontSize: 18.0,fontWeight:  FontWeight.bold),

// //                             )
// //                         ),
// //                       ],
// //                     )));
// //           },
// //         ));
// //   }
// // }


// // // Widget table() {
// // //   return Container(
// // //     padding: EdgeInsets.only(top: 10, left: 10, right: 10),
// // //     child: Table(
// // //         border: TableBorder
// // //             .all(), // Allows to add a border decoration around your table
// // //         children: [
// // //           TableRow(children: [
// // //             Center(
// // //                 child: Text(
// // //               'Package',
// // //               style: TextStyle(
// // //                 fontSize: 18,
// // //               ),
// // //             )),
// // //             Center(
// // //                 child: Text(
// // //               'Price',
// // //               style: TextStyle(
// // //                 fontSize: 18,
// // //               ),
// // //             )),
// // //             Center(
// // //                 child: Text(
// // //               'Month',
// // //               style: TextStyle(
// // //                 fontSize: 18,
// // //               ),
// // //             )),
// // //           ]),
// // //           TableRow(children: [
// // //             Center(
// // //               child: Text(
// // //                 'Package',
// // //                 style: TextStyle(fontSize: 17),
// // //               ),
// // //             ),
// // //             TextFormField(
// // //               //controller: controller,
// // //               validator: (value) {
// // //                 return (value.isEmpty) ? "Enter Value" : null;
// // //               },
// // //               decoration: new InputDecoration(
// // //                   // prefix: Text(hintText),
// // //                   contentPadding:
// // //                       EdgeInsets.symmetric(horizontal: 20, vertical: 4),
// // //                   fillColor: Colors.white,
// // //                   errorStyle: TextStyles.buttonFontText
// // //                       .copyWith(fontSize: 10, color: AppColors.redColor),
// // //                   border: InputBorder.none),

// // //               keyboardType: TextInputType.phone,
// // //             ),
// // //             TextFormField(
// // //               validator: (value) {
// // //                 return (value.isEmpty) ? "Enter Value" : null;
// // //               },
// // //               //controller: controller,
// // //               decoration: new InputDecoration(
// // //                   // prefix: Text(hintText),
// // //                   contentPadding:
// // //                       EdgeInsets.symmetric(horizontal: 20, vertical: 4),
// // //                   fillColor: Colors.white,
// // //                   errorStyle: TextStyles.buttonFontText
// // //                       .copyWith(fontSize: 10, color: AppColors.redColor),
// // //                   border: InputBorder.none),

// // //               keyboardType: TextInputType.phone,
// // //             ),
// // //           ]),
// // //           TableRow(children: [
// // //             Center(
// // //               child: Text(
// // //                 'Package',
// // //                 style: TextStyle(fontSize: 17),
// // //               ),
// // //             ),
// // //             TextFormField(
// // //               validator: (value) {
// // //                 return (value.isEmpty) ? "Enter Value" : null;
// // //               },
// // //               //controller: controller,
// // //               decoration: new InputDecoration(
// // //                   // prefix: Text(hintText),
// // //                   contentPadding:
// // //                       EdgeInsets.symmetric(horizontal: 20, vertical: 4),
// // //                   fillColor: Colors.white,
// // //                   errorStyle: TextStyles.buttonFontText
// // //                       .copyWith(fontSize: 10, color: AppColors.redColor),
// // //                   border: InputBorder.none),

// // //               keyboardType: TextInputType.phone,
// // //             ),
// // //             TextFormField(
// // //               validator: (value) {
// // //                 return (value.isEmpty) ? "Enter Value" : null;
// // //               },
// // //               //controller: controller,
// // //               decoration: new InputDecoration(
// // //                   // prefix: Text(hintText),
// // //                   contentPadding:
// // //                       EdgeInsets.symmetric(horizontal: 20, vertical: 4),
// // //                   fillColor: Colors.white,
// // //                   errorStyle: TextStyles.buttonFontText
// // //                       .copyWith(fontSize: 10, color: AppColors.redColor),
// // //                   border: InputBorder.none),

// // //               keyboardType: TextInputType.phone,
// // //             ),
// // //           ]),
// // //           TableRow(children: [
// // //             Center(
// // //               child: Text(
// // //                 'Package',
// // //                 style: TextStyle(fontSize: 17),
// // //               ),
// // //             ),
// // //             TextFormField(
// // //               validator: (value) {
// // //                 return (value.isEmpty) ? "Enter Value" : null;
// // //               },
// // //               //controller: controller,
// // //               decoration: new InputDecoration(
// // //                   // prefix: Text(hintText),
// // //                   contentPadding:
// // //                       EdgeInsets.symmetric(horizontal: 20, vertical: 4),
// // //                   fillColor: Colors.white,
// // //                   errorStyle: TextStyles.buttonFontText
// // //                       .copyWith(fontSize: 10, color: AppColors.redColor),
// // //                   border: InputBorder.none),

// // //               keyboardType: TextInputType.phone,
// // //             ),
// // //             TextFormField(
// // //               validator: (value) {
// // //                 return (value.isEmpty) ? "Enter Value" : null;
// // //               },
// // //               //controller: controller,
// // //               decoration: new InputDecoration(
// // //                   // prefix: Text(hintText),
// // //                   contentPadding:
// // //                       EdgeInsets.symmetric(horizontal: 20, vertical: 4),
// // //                   fillColor: Colors.white,
// // //                   errorStyle: TextStyles.buttonFontText
// // //                       .copyWith(fontSize: 10, color: AppColors.redColor),
// // //                   border: InputBorder.none),

// // //               keyboardType: TextInputType.phone,
// // //             ),
// // //           ]),
// // //         ]),
// // //   );
// // // }
