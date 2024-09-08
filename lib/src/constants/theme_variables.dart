import 'package:flutter/material.dart';

abstract class AppColors {
  static const cBlue900 = Color.fromRGBO(39, 59, 86, 1);
  static const cBlue700 = Color.fromRGBO(100, 121, 148, 1);
  static const cBlue500 = Color.fromRGBO(101, 167, 229, 1);
  static const cGreen500 = Color.fromRGBO(165, 182, 95, 1);
  static const cBlue100 = Color.fromRGBO(195, 203, 211, 11);
  static const cBlueShadow = Color.fromRGBO(101, 167, 229, .7);
  static const cWhiteBorder = Color.fromRGBO(255, 255, 255, .7);
  static const cWhite = Color.fromRGBO(255, 255, 255, 1);
}

abstract class AppFontsStyle {
  //*Semibold font styles
  static const TextStyle cSemiBoldl40 = TextStyle(
    fontSize: 40.0,
    fontWeight: FontWeight.w600,
    height: 1.1,
  );
  static const TextStyle cSemibold18 = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle cSemibold16 = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle cSemibold14 = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle cSemibold12 = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.w600,
  );

  //*Regular font styles
  static const TextStyle cRegular12 = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle cRegular14 = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle cRegular16 = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
  );
}
