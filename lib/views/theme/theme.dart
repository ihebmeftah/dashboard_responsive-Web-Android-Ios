import 'package:flutter/material.dart';

const Color mainColor = Color(0xff00BE84);
const Color darkGreyClr = Color(0xFF121212);
const Color pinkClr = Color(0xFFff4667);
const Color kCOlor1 = Color(0xff685959);
const Color kCOlor2 = Color(0xffADA79B);
const Color kCOlor3 = Color(0xffA5947F);
const Color kCOlor4 = Color(0xff738B71);
const Color kCOlor5 = Color(0xff6D454D);

class ThemesApp {
  static final light = ThemeData(
    brightness: Brightness.light,
  );
  // Use backgroundColor: context.theme.backgroundColor In Scaffold ,

  static final dark = ThemeData(
      scaffoldBackgroundColor: darkGreyClr,
      appBarTheme: const AppBarTheme(
          backgroundColor: darkGreyClr,
          elevation: 0,
          toolbarTextStyle: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
      iconTheme: const IconThemeData(color: Colors.white, size: 25),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          elevation: 0.0,
          selectedItemColor: Colors.white,
          selectedLabelStyle: TextStyle(fontSize: 12),
          unselectedLabelStyle: TextStyle(fontSize: 12),
          selectedIconTheme: IconThemeData(size: 30)),
      primarySwatch: Colors.green,
      brightness: Brightness.dark,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.green, foregroundColor: Colors.white));

  //------BODY STYLE-------

  TextStyle get textinlightthemeforbgBlac {
    return const TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    );
  }
}
