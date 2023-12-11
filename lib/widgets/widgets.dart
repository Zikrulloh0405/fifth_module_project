import 'package:flutter/material.dart';

// text widget
Widget text(String title, Color color,
    {double? fontSize, FontWeight? fontWeight, TextAlign? alignText}) {
  return Text(
    title,
    textAlign: alignText,
    style: TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
  );
}

Widget icons(icon, {Color? color, double? size}) {
  return Icon(icon, color: color, size: size);
}
