// import 'package:flutter/material.dart';
// import 'package:girafee/Widgets/button.dart';
// import 'package:girafee/ui/auth/signup_Page.dart';
// import 'package:girafee/ui/auth/loginPage.dart';
// import 'package:girafee/utils/app_colors.dart';
// import 'package:girafee/utils/styles.dart';
// import 'package:google_fonts/google_fonts.dart';

// class AdvertisementPage extends StatefulWidget {
//   @override
//   _AdvertisementPageState createState() => _AdvertisementPageState();
// }

// class _AdvertisementPageState extends State<AdvertisementPage> {
//   double width, height;
//   Widget _body() {
//     return ListView(children: <Widget>[
//       Container(
//         margin: EdgeInsets.only(top: height * 0.07),
//         child: Column(children: <Widget>[
//           Container(
//             height: height * 0.7,
//             margin: EdgeInsets.only(top: 32, left: 16, right: 16),
//             width: double.infinity,
//             child: Card(
//               color: AppColors.whiteColor,
//               elevation: 9,
//               shape: RoundedRectangleBorder(
//                 side: BorderSide.none,
//                 borderRadius: BorderRadius.circular(40),
//               ),
//               child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: <Widget>[
//                     Container(
//                       height: height * 0.30,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.only(
//                               topRight: Radius.circular(40),
//                               topLeft: Radius.circular(40)),
//                           image: DecorationImage(
//                             fit: BoxFit.fill,
//                             image: AssetImage('assets/appIcons/colors.jpeg'),
//                           )),
//                       child: Center(
//                           child: Text(
//                         '3',
//                         style: TextStyles.largeNumberText,
//                       )),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(
//                         left: 20.0,
//                         top: 8.0,
//                         right: 20,
//                       ),
//                       child: Text(
//                         'months free subscription to qualified service companies',
//                         textAlign: TextAlign.center,
//                         style: GoogleFonts.poppins(
//                             textStyle: TextStyles.normalFontText),
//                       ),
//                     ),
//                     Spacer(),
//                     Button(
//                       buttonText: 'Sign up now',
//                       buttonColor: AppColors.yellowColor,
//                       onTap: () {
//                         Navigator.push(context,
//                             MaterialPageRoute(builder: (c) => SignUpPage()));
//                       },
//                       buttonTextStyle: TextStyles.buttonFontText,
//                       widthPercent: 0.4,
//                     ),
//                     _sizedBoxHeight20(),
//                     Button(
//                       buttonText: 'No thank you',
//                       buttonColor: AppColors.greyButtonColor,
//                       onTap: () {
//                         Navigator.push(context,
//                             MaterialPageRoute(builder: (c) => LoginPage()));
//                       },
//                       buttonTextStyle: TextStyles.buttonFontText
//                           .copyWith(color: AppColors.whiteColor),
//                       widthPercent: 0.4,
//                     ),
//                     _sizedBoxHeight20(),
//                   ]),
//             ),
//           ),
//           Container(
//               height: height * 0.2,
//               child: Center(child: _createnewAccountText())),
//         ]),
//       )
//     ]);
//   }

//   SizedBox _sizedBoxHeight20() => SizedBox(height: 20);

//   Widget _createnewAccountText() {
//     return Container(
//       child: Center(
//           child: InkWell(
//               onTap: () {},
//               child: Text(
//                 'Create a New Account',
//                 textAlign: TextAlign.center,
//                 style: TextStyles.buttonFontText,
//               ))),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     height = MediaQuery.of(context).size.height;
//     width = MediaQuery.of(context).size.width;
//     return SafeArea(
//       child: Scaffold(
//           backgroundColor: AppColors.whiteColor,
//           body:
//               // ListView(
//               //   children:<Widget>[
//               _body()
//           // ]
//           //  ),
//           ),
//     );
//   }
// }
