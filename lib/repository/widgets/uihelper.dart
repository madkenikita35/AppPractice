import 'package:flutter/material.dart';

class Uihelper {
  // ignore: non_constant_identifier_names
  static CustomImage({required String img, double? height, double? width}) {
    return Image.asset(
      "assets/images/$img",
      width: width,
      height: height,
    );
  }

  static Widget customFont({
    required String text,
    required Color color,
    required FontWeight fontWeight,
    required double fontSize,
    String? fontFamily,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontFamily: fontFamily ?? "Regular",
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
