import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final darkTheme = ThemeData(
  primarySwatch: Colors.yellow,
  primaryColor:  Colors.amber,
  brightness: Brightness.dark,
  backgroundColor: Colors.amber,
  dividerColor: Colors.blue,
  canvasColor: Colors.amber,
  buttonTheme: const ButtonThemeData(
    buttonColor: Colors.yellow,
  ),
  iconTheme: const IconThemeData(
    color: Color(0xFF342E1B),
  ),
  textTheme: TextTheme(
    bodyText1: GoogleFonts.grandHotel(
      color: const Color(0xFF342E1B),
      fontSize: 23,
      fontWeight:FontWeight.bold,
    ),
    bodyText2: GoogleFonts.grandHotel(
      color: const Color(0xFF342E1B),
      fontSize: 20,
    ),
    headline1: GoogleFonts.grandHotel(
      color: const Color(0xFF342E1B),
      fontSize: 35,
    ),

  ),
  
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color(0xFF342E1B),
  ),
);
