import 'package:flutter/material.dart';

class CustomTextClass {
  //Heading 1

  static TextStyle h1Bold(BuildContext context, Color textColor) {
    return TextStyle(
      fontSize: MediaQuery.of(context).size.height * 0.028,
      fontWeight: FontWeight.w800,
      color: textColor,
    );
  }

  //Heading 2

  static TextStyle h2Bold(BuildContext context, Color textColor) {
    return TextStyle(
      fontSize: MediaQuery.of(context).size.height * 0.015,
      fontWeight: FontWeight.w700,
      color: textColor,
    );
  }

  //Heading 3

  static TextStyle h3Bold(BuildContext context, Color textColor) {
    return TextStyle(
      fontSize: MediaQuery.of(context).size.height * 0.013,
      fontWeight: FontWeight.w600,
      color: textColor,
    );
  }
}
