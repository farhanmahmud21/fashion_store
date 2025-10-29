import 'package:fashion_store/utils/themes/widget/UtextTheme.dart';
import 'package:fashion_store/utils/themes/widget/textFieldTheme.dart';
import 'package:flutter/material.dart';

class UAppTheme {
  UAppTheme._();

  static ThemeData lightTheme = ThemeData(
    textTheme: UTextTheme.lightTextTheme,
    inputDecorationTheme: UTextField.lightTextField,
  );
  static ThemeData darkTheme = ThemeData(
    textTheme: UTextTheme.darkTextTheme,
    inputDecorationTheme: UTextField.darkTextField,
  );
}
