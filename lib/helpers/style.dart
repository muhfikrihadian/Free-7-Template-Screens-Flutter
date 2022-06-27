import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color whitePrimary = Color(0XFFFFFFFF);
Color whiteSecondary = Color(0XFFF8F8F8);
Color darkBlue = Color(0XFF0E1954);
Color pink = Color(0XFFF94593);
Color emojiUnselect = Color(0XFF37394D);
Color emojiSelected = Color(0XFFEEF0FF);

TextStyle tvHeader = GoogleFonts.poppins(
    color: darkBlue, fontSize: 24, fontWeight: FontWeight.w600);

TextStyle tvDesc = GoogleFonts.poppins(
  color: darkBlue,
  fontSize: 16,
);

TextStyle tvButton = GoogleFonts.openSans(
    color: whiteSecondary, fontSize: 18,
    fontWeight: FontWeight.w600
);

TextStyle txtButton = GoogleFonts.poppins(
  color: whitePrimary,
  fontSize: 16,
  fontWeight: FontWeight.w700,
);
