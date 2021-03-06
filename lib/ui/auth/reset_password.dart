// import 'package:flutter/material.dart';
// import 'package:girafee/Widgets/appBar.dart';
// import 'package:girafee/Widgets/button.dart';
// import 'package:girafee/Widgets/textField.dart';
// import 'package:girafee/utils/app_colors.dart';
// import 'package:girafee/utils/styles.dart';
// import 'package:google_fonts/google_fonts.dart';

// class ResetPassword extends StatelessWidget {
//   final _formKey = GlobalKey<FormState>();
//   bool validateAndSave() {
//     final form = _formKey.currentState;
//     form.save();
//     if (form.validate()) {
//       return true;
//     } else {
//       return false;
//     }
//   }

//   void validateAndSubmit(BuildContext context) {
//     if (validateAndSave()) {
//     } else {
//       print("error occured");
//     }
//   }

//   Widget _body(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 20),
//       child: Form(
//         key: _formKey,
//         child: Column(
//           children: <Widget>[
//             Spacer(
//               flex: 1,
//             ),
//             _formContainer(context),
//             _lowerContainer(),
//           ],
//         ),
//       ),
//     );
//   }

//   _lowerContainer() => Spacer(flex: 3);

//   Widget _formContainer(BuildContext context) {
//     return Expanded(
//         flex: 6,
//         child: Card(
//           elevation: 10,
//           color: AppColors.backgroundColor,
//           shape: RoundedRectangleBorder(
//             side: BorderSide.none,
//             borderRadius: BorderRadius.circular(40),
//           ),
//           child: Padding(
//             padding: const EdgeInsets.all(15.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 Text(
//                   'Password Reset',
//                   style:
//                       GoogleFonts.poppins(textStyle: TextStyles.normalFontText),
//                 ),
//                 TextFields.passwordTextField(context,
//                     hintText: 'Password',
//                     // fieldValue: _password,
//                     validaterMsg: 'Password cannot be less than 6 letters'),
//                 Button(
//                   buttonText: 'Set Password',
//                   buttonColor: AppColors.yellowColor,
//                   onTap: () {
//                     validateAndSubmit(context);
//                   },
//                   buttonTextStyle: TextStyles.buttonFontText,
//                   widthPercent: 0.8,
//                 ),
//               ],
//             ),
//           ),
//           //     ),
//           //   ),
//           // ),
//         ));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: AppColors.backgroundColor,
//         appBar: appBarwithbackIcon(context),
//         body: _body(context),
//         resizeToAvoidBottomPadding: false,
//       ),
//     );
//   }
// }
