import 'package:flutter/material.dart' show Widget, SizedBox;

extension NumExtensions on num {
  Widget get verticalSpace => SizedBox(height: toDouble());
  Widget get horizontalSpace => SizedBox(width: toDouble());
}
