import 'package:flutter/material.dart';

extension TextStyleContext on BuildContext {
  TextTheme get textStyle => Theme.of(this).textTheme;
}