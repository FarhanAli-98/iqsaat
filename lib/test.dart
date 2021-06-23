
import 'package:flutter/material.dart';
import 'dart:math' as math;

class MediterranesnDietView extends StatelessWidget {
 // final AnimationController ? animationController;
 // final Animation<double>? animation;

  // const MediterranesnDietView(
  //     {Key? key, this.animationController, this.animation})
  //     : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
     // animation: animationController!,
      
        child: FadeTransition(
         // opacity: animation!,
          child: new Transform(
            // transform: new Matrix4.translationValues(
            //     0.0, 30 * (1.0 - animation!.value), 0.0),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 24, right: 24, top: 16, bottom: 18),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                      topRight: Radius.circular(68.0)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        offset: Offset(1.1, 1.1),
                        blurRadius: 10.0),
                  ],
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 16, left: 16, right: 16),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 8, right: 8, top: 4),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        height: 48,
                                        width: 2,
                                        decoration: BoxDecoration(
                                          //color: HexColor('#87A0E5')
                                            //  .withOpacity(0.5),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(4.0)),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 4, bottom: 2),
                                              child: Text(
                                                'Eaten',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                //  fontFamily:
                                                     // Colors.fontName,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16,
                                                  letterSpacing: -0.1,
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                ),
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: <Widget>[
                                                SizedBox(
                                                  width: 28,
                                                  height: 28,
                                                  child: Image.asset(
                                                      "assets/fitness_app/eaten.png"),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 4, bottom: 3),
                                                  child: Text(
                                                    'klkl',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      // fontFamily:
                                                      //     Colors
                                                      //         .fontName,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 16,
                                                      color: Colors
                                                          .black,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 4, bottom: 3),
                                                  child: Text(
                                                    'Kcal',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      // fontFamily:
                                                      //     Colors
                                                      //         .fontName,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 12,
                                                      letterSpacing: -0.2,
                                                      color: Colors
                                                          .grey
                                                          .withOpacity(0.5),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        height: 48,
                                        width: 2,
                                        decoration: BoxDecoration(
                                          // color: HexColor('#F56E98')
                                          //     .withOpacity(0.5),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(4.0)),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 4, bottom: 2),
                                              child: Text(
                                                'Burned',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  // fontFamily:
                                                  //     Colors.fontName,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16,
                                                  letterSpacing: -0.1,
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                ),
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: <Widget>[
                                                SizedBox(
                                                  width: 28,
                                                  height: 28,
                                                  child: Image.asset(
                                                      "assets/fitness_app/burned.png"),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 4, bottom: 3),
                                                  child: Text(
                                                    'lals',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      // fontFamily:
                                                      //     Colors
                                                      //         .fontName,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 16,
                                                      color: Colors
                                                          .black,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8, bottom: 3),
                                                  child: Text(
                                                    'Kcal',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      // fontFamily:
                                                      //     Colors
                                                      //         .black,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 12,
                                                      letterSpacing: -0.2,
                                                      color: Colors
                                                          .grey
                                                          .withOpacity(0.5),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Center(
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(100.0),
                                        ),
                                        border: new Border.all(
                                            width: 4,
                                            color: Colors
                                                .blueGrey
                                                .withOpacity(0.2)),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            'text',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              // fontFamily:
                                              //     Colors.fontName,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 24,
                                              letterSpacing: 0.0,
                                              color: Colors
                                                 .black
                                            ),
                                          ),
                                          Text(
                                            'Kcal left',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              // fontFamily:
                                              //     Colors.fontName,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                              letterSpacing: 0.0,
                                              color: Colors.grey
                                                  .withOpacity(0.5),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: CustomPaint(
                                      // painter: CurvePainter(
                                      //     colors: [
                                      //       Colors.nearlyDarkBlue,
                                      //       HexColor("#8A98E8"),
                                      //       HexColor("#8A98E8")
                                      //     ],
                                      //     angle: 140 +
                                      //         (360 - 140)
                                      //            // (1.0 - animation!.value)
                                      //            ),
                                      child: SizedBox(
                                        width: 108,
                                        height: 108,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 24, right: 24, top: 8, bottom: 8),
                      child: Container(
                        height: 2,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 24, right: 24, top: 8, bottom: 16),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Carbs',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    // //fontFamily: Colors.fontName,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    letterSpacing: -0.2,
                                    color: Colors.black,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 4),
                                  child: Container(
                                    height: 4,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      color:
                                          Colors.blueAccent.withOpacity(0.2),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(4.0)),
                                    ),
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          // width: ((70 / 1.2) * animation!.value),
                                          height: 4,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(colors: [
                                              // HexColor('#87A0E5'),
                                              // HexColor('#87A0E5')
                                                  // .withOpacity(0.5),
                                            ]),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(4.0)),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 6),
                                  child: Text(
                                    '12g left',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                     // fontFamily: Colors.black12,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12,
                                      color:
                                          Colors.grey.withOpacity(0.5),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Protein',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        //fontFamily: Colors.fontName,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        letterSpacing: -0.2,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 4),
                                      child: Container(
                                        height: 4,
                                        width: 70,
                                        decoration: BoxDecoration(
                                          color: Colors.blueAccent
                                              .withOpacity(0.2),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(4.0)),
                                        ),
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              // width: ((70 / 2) *
                                              //     animationController!.value),
                                              height: 4,
                                              decoration: BoxDecoration(
                                                // gradient:
                                                //     LinearGradient(colors: [
                                                //   HexColor('#F56E98')
                                                //       .withOpacity(0.1),
                                                //   HexColor('#F56E98'),
                                                // ]),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(4.0)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 6),
                                      child: Text(
                                        '30g left',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          //fontFamily: Colors.fontName,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12,
                                          color: Colors.grey
                                              .withOpacity(0.5),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Fat',
                                      style: TextStyle(
                                        //fontFamily: Colors.fontName,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        letterSpacing: -0.2,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 0, top: 4),
                                      child: Container(
                                        height: 4,
                                        width: 70,
                                        decoration: BoxDecoration(
                                          // color: HexColor('#F1B440')
                                          //     .withOpacity(0.2),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(4.0)),
                                        ),
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              // width: ((70 / 2.5) *
                                              //     animationController!.value),
                                              height: 4,
                                              decoration: BoxDecoration(
                                                gradient:
                                                    LinearGradient(colors: [
                                                  // // HexColor('#F1B440')
                                                  //     .withOpacity(0.1),
                                                  // HexColor('#F1B440'),
                                                ]),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(4.0)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 6),
                                      child: Text(
                                        '10g left',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          //fontFamily: Colors.fontName,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12,
                                          color: Colors.grey
                                              .withOpacity(0.5),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      
    );
  }
}

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
