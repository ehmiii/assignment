import 'package:flutter/material.dart' show TextStyle, FontWeight;

import '../colors/app_colors.dart';

class FontStyles {
  static TextStyle titleStyle = TextStyle(
    color: AppColors.primaryColor,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
  static TextStyle defaultStyle = const TextStyle();
}
