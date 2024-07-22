import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFF333333);
  static const Color hintColor = Color(0xFFE0E0E0);
  static const Color textBackground = Color(0x3E000000);
  static const Color primaryBackgroundColor = Color(0xFFE0E0E0);
  static const Color primaryTextColor = Color(0xFF333333);

  static TextStyle displayLarge = GoogleFonts.oswald(
    textStyle: const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: primaryTextColor,
    ),
  );

  static TextStyle bodyLarge = GoogleFonts.oswald(
    textStyle: const TextStyle(
      fontSize: 16,
      color: primaryTextColor,
      fontWeight: FontWeight.bold,
    ),
  );

  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    hintColor: hintColor,
    textTheme: TextTheme(
      displayLarge: displayLarge,
      bodyLarge: bodyLarge,
    ),
  );
}
