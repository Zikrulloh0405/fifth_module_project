import 'package:flutter/material.dart';

// text widget
Widget text(String title, Color color,
    {double? fontSize, FontWeight? fontWeight}) {
  return Text(
    title,
    style: TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
  );
}

Widget icons(icon, {Color? color, double? size}) {
  return Icon(icon, color: color, size: size);
}
