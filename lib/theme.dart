import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme textTheme() {
  return TextTheme(
    displayLarge: GoogleFonts.openSans(fontSize: 18, color: Colors.black),
    displayMedium: GoogleFonts.openSans(
        fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
    bodyLarge: GoogleFonts.openSans(fontSize: 16, color: Colors.black),
    bodyMedium: GoogleFonts.openSans(fontSize: 14, color: Colors.grey),
    titleMedium: GoogleFonts.openSans(fontSize: 15, color: Colors.black),
  );
}

AppBarTheme appTheme() {
  return AppBarTheme(
    centerTitle: false,
    color: Colors.white,
    elevation: 0.0,
    toolbarTextStyle: TextTheme(
      titleLarge: GoogleFonts.nanumGothic(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ).bodyMedium,
    titleTextStyle: TextTheme(
      titleLarge: GoogleFonts.nanumGothic(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ).titleLarge,
  );
}

IconThemeData iconTheme() {
  return const IconThemeData(color: Colors.black);
}

BottomNavigationBarThemeData bottomNavigationBarTheme() {
  return const BottomNavigationBarThemeData(
    selectedItemColor: Colors.orange,
    unselectedItemColor: Colors.black54,
    showUnselectedLabels: true,
  );
}

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    textTheme: textTheme(),
    appBarTheme: appTheme(),
    primarySwatch: Colors.orange,
    iconTheme: iconTheme(),
    bottomNavigationBarTheme: bottomNavigationBarTheme(),
  );
}
