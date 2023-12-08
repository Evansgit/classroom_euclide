import 'package:flutter/material.dart';

class ColorStyle {
  static final colorBackgroundBlack = Color(0xFF0B0F1C);
  static final colorOrangeBackground = Color(0xFFFAA420);
  static final colorSenondaryBackground = Color(0xFF282E41);
  static final colorGrayBackground = Color(0xFF676D81);
}

class txtStyle {
  static final titleAppbar = TextStyle(fontFamily: "Sofia");

  static final txtLight = TextStyle(
      color: Colors.white,
      fontSize: 15.0,
      fontFamily: "Sofia",
      fontWeight: FontWeight.w400);

  static final txtMedium = TextStyle(
      color: Colors.white,
      fontSize: 16.0,
      fontFamily: "Sofia",
      fontWeight: FontWeight.w600);

  static final txtLightRoboto = TextStyle(
      color: Colors.white,
      fontSize: 15.0,
      fontFamily: "Roboto",
      fontWeight: FontWeight.w300);
  static final txtRegular = TextStyle(
      color: Colors.white,
      fontSize: 15.0,
      fontFamily: "Roboto",
      fontWeight: FontWeight.w500);

  static final txtMediumOrange = TextStyle(
      color: ColorStyle.colorOrangeBackground,
      fontSize: 20.0,
      fontWeight: FontWeight.w700);

  static final txtHeader = TextStyle(
      color: Colors.white,
      fontSize: 16.0,
      fontFamily: "Roboto",
      fontWeight: FontWeight.w700);

  static final txtRegularRed = TextStyle(
      color: Colors.red,
      fontSize: 13.0,
      fontFamily: "Roboto",
      fontWeight: FontWeight.w500);

  static final txtRegularGreen = TextStyle(
      color: Colors.green,
      fontSize: 13.0,
      fontFamily: "Roboto",
      fontWeight: FontWeight.w500);
}
