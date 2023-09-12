
import 'package:flutter/material.dart';
import 'package:konseling/gen/colors.gen.dart';

class Themes {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.grey.shade100,
    appBarTheme: const AppBarTheme(
      backgroundColor: MyColors.grey100,
      titleTextStyle: TextStyle(color: MyColors.black, fontSize: 12),
      centerTitle: false,
    ),
    primarySwatch: Colors.deepOrange,
    fontFamily: 'PlusJakartaSans',
    iconTheme: const IconThemeData(color: MyColors.grey700),
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: MyColors.black,
    appBarTheme: const AppBarTheme(
      backgroundColor: MyColors.black,
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 18),
      centerTitle: false,
    ),
    primarySwatch: Colors.deepOrange,
    fontFamily: 'PlusJakartaSans',
    iconTheme: const IconThemeData(color: MyColors.white),
  );
}




