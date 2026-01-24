import 'package:flutter/material.dart';

TextStyle mtextStyle11() {
  return const TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.italic,
  );
}

TextStyle mtextStyle16(
  {
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
  }
) {
  return TextStyle(
    fontSize: fontSize ?? 16,
    fontWeight: fontWeight ?? FontWeight.bold,
    fontStyle: fontStyle ?? FontStyle.normal,
  );
}
