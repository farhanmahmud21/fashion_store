import 'package:fashion_store/utils/themes/widget/textTheme.dart';
import 'package:flutter/material.dart';

class UAppTheme {
  UAppTheme._();

  static ThemeData lightTheme = ThemeData(textTheme: UTextTheme.lightTextTheme);
  static ThemeData darkTheme = ThemeData(textTheme: UTextTheme.darkTextTheme);
}
