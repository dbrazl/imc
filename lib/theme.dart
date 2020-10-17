import 'package:flutter/material.dart';

const primaryColor = Color(0xff424242);
const accentColor = Color(0xffffffff);

ThemeData theme({bool dark}) {
  return ThemeData(
    brightness: dark ? Brightness.dark : Brightness.light,
    primaryColor: primaryColor,
    accentColor: accentColor,
    textTheme: TextTheme(
      body1: TextStyle(
        fontFamily: "Poppins",
      ),
      body2: TextStyle(
        fontFamily: "Poppins",
      ),
      button: TextStyle(
        fontFamily: "Poppins",
      ),
      caption: TextStyle(
        fontFamily: "Poppins",
      ),
      display1: TextStyle(
        fontFamily: "Poppins",
      ),
      display2: TextStyle(
        fontFamily: "Poppins",
      ),
      display3: TextStyle(
        fontFamily: "Poppins",
      ),
      display4: TextStyle(
        fontFamily: "Poppins",
      ),
      overline: TextStyle(
        fontFamily: "Poppins",
      ),
      headline: TextStyle(
        fontFamily: "Poppins",
      ),
      subhead: TextStyle(
        fontFamily: "Poppins",
      ),
      subtitle: TextStyle(
        fontFamily: "Poppins",
      ),
      title: TextStyle(
        fontFamily: "Poppins",
      ),
    ),
  );
}
