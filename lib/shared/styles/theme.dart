import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_final_year_application/shared/components/conestance.dart';
import 'package:hexcolor/hexcolor.dart';

ThemeData lightTheme = ThemeData(
  iconTheme: IconThemeData(
    color: defaultColor,
  ),
  primaryColor: Colors.black,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontFamily: 'Cairo',
    ),
    toolbarTextStyle: TextStyle(
      fontFamily: 'Cairo',
      color: Colors.black,
    ),
    titleSpacing: 20.0,
    color: Colors.white,
    elevation: 0,
    // ignore: deprecated_member_use
    backwardsCompatibility: false,
    systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark),
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: defaultColor,
    unselectedItemColor: Colors.grey,
    backgroundColor: Colors.white,
    elevation: 20.0,
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: defaultColor,
  ),
  fontFamily: 'Cairo',
);
