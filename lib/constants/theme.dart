import 'package:flutter/material.dart';
import 'package:mix_cart_app/constants/constants.dart';

ThemeData theme() {
  var outlineInputBorder = OutlineInputBorder(
    borderRadius: kRadiusEllipsis,
    borderSide: BorderSide(color: kTextColor),
    gapPadding: 10,
  );
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Cairo',
    appBarTheme: _appBarTheme(),
    textTheme: _textTheme(),
    inputDecorationTheme: _inputDecorationTheme(outlineInputBorder),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme _inputDecorationTheme(
    OutlineInputBorder outlineInputBorder) {
  return InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}

TextTheme _textTheme() {
  return TextTheme(
    bodyText1: TextStyle(color: kTextColor),
    bodyText2: TextStyle(color: kTextColor),
  );
}

AppBarTheme _appBarTheme() {
  return AppBarTheme(
    color: Colors.white,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.black),
    textTheme: TextTheme(
      headline6: TextStyle(color: kTextColor, fontSize: 18),
    ),
  );
}
