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
    titleMedium: GoogleFonts.roboto(
      fontWeight: FontWeight.w500,
      fontSize: 16,
    ),
    bodyLarge: GoogleFonts.roboto(
      fontWeight: FontWeight.w400,
      fontSize: 14,
    ),
    bodyMedium: GoogleFonts.roboto(
      fontWeight: FontWeight.w400,
      fontSize: 12,
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
    scaffoldBackgroundColor: Color.fromARGB(255, 242, 242, 242),
    textTheme: lightTextTheme,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      elevation: 0
    ),
    // textButtonTheme: TextButtonThemeData(
    //   style: ButtonStyle(textStyle: WidgetStateProperty.all<TextStyle>(lightTextTheme.labelLarge!)),
    // ),
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
