import 'package:flutter/material.dart';

class AppTheme {
  static const Color primarycolor = Color(0xffB7935f);

  static ThemeData Lighttheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontFamily: "elmessiri"),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: primarycolor,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      selectedLabelStyle: TextStyle(
        fontFamily: "elmessiri",
        fontSize: 15,
        fontWeight: FontWeight.w800,
      ),
      unselectedLabelStyle: TextStyle(
          fontFamily: "elmessiri",
        fontSize: 11,
        fontWeight: FontWeight.w800,
      ),
      selectedIconTheme: IconThemeData(
        color: Colors.black,

      size: 35,
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
      size: 23,
      ),
    ),
  );
}
