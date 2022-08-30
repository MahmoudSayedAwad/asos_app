
import 'package:flutter/material.dart';

import 'fonts_manager.dart';

TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(
      fontWeight: fontWeight,
      color: color,
      fontSize: fontSize,
      fontFamily: FontConstants.fontFamily);
}

// regular style

TextStyle getRegularStyle({double fontSize = FontSize.s12, required color}) {
  return _getTextStyle(fontSize, FontWeightManager.regular, color);
}

// semi-bold style

TextStyle getSemiBoldStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.semiBold, color);
}
