import 'package:flutter/material.dart';

class Decorator {
  static TextStyle textBold(
          {Color color, double fontSize, FontWeight fontWeight}) =>
      TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight ?? FontWeight.bold);

  static TextStyle textNormal({Color color, double fontSize}) =>
      TextStyle(color: color, fontSize: fontSize);
}
