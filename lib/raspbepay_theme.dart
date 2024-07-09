import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RaspbePayColor {
  static const Color primaryColor = Color.fromARGB(255, 0, 169, 165);
}

class RaspbepayTheme {
  static TextTheme lightTextTheme = TextTheme(
    titleLarge: GoogleFonts.montserrat(
      fontWeight: FontWeight.w700,
      fontSize: 24,
    ),
    bodyLarge: GoogleFonts.roboto(
      fontWeight: FontWeight.w400,
      fontSize: 14,
    ),
    labelLarge: GoogleFonts.roboto(
      fontWeight: FontWeight.w500,
      textStyle: const TextStyle(color: RaspbePayColor.primaryColor),
      fontSize: 16,
    ),
  );

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: RaspbePayColor.primaryColor,
    textTheme: lightTextTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: RaspbePayColor.primaryColor,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  );
}
