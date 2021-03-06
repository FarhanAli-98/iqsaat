import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iqsaat/utils/styles.dart';

Padding displayHeaderText(String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
    child: Text(
      text,
      style: GoogleFonts.poppins(
          textStyle:
              TextStyles.buttonFontText.copyWith(fontWeight: FontWeight.w600)),
    ),
  );
}

SizedBox displayEmptySpace() => SizedBox(height: 30);

Padding textFieldHeader(String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
    child: Text(
      text,
      style: GoogleFonts.poppins(textStyle: TextStyles.headerFontText),
    ),
  );
}
