import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_bite/Constants/FontConstants.dart';

class AppTheme {
  AppTheme._();

  static ThemeData light() {
    final textTheme = GoogleFonts.interTextTheme();

    return ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      fontFamily: FontConstants.family,
      textTheme: textTheme,
      primaryTextTheme: textTheme,
    );
  }
}
