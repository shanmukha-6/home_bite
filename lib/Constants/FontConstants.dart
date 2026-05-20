import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontConstants {
  FontConstants._();

  static const String family = 'Inter';

  static TextStyle inter({
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
    double? height,
    double? letterSpacing,
  }) {
    return GoogleFonts.inter(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      height: height,
      letterSpacing: letterSpacing,
    );
  }
}
