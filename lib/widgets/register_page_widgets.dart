import 'package:flutter/material.dart';

// widget for putting space
Widget space(side, double size) {
  // if side is true => height
  if (side) {
    // if side is false => width
    return SizedBox(
      height: size,
    );
  }
  return SizedBox(
    width: size,
  );
}

// textField widget
Widget textField(Color color, String hintTexts) {
  return Container(
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(border: Border(bottom: BorderSide(color: color))),
    child: TextField(
      decoration:
          InputDecoration(hintText: hintTexts, border: InputBorder.none),
    ),
  );
}

// textButton widget
Widget textButton(
    {required String title,
    required Color buttonColor,
    required Color textColor,
    double? fontSize = 15,
    FontWeight? fontWeight,
    double? radius}) {
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(radius ?? 50),
      color: buttonColor,
    ),
    child: TextButton(
      onPressed: () {},
      child: Text(
        title,
        style: TextStyle(
            fontSize: fontSize, color: textColor, fontWeight: fontWeight),
      ),
    ),
  );
}
