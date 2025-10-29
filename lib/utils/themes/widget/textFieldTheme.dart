import 'package:flutter/material.dart';

class UTextField {
  UTextField._();

  static final lightTextField = InputDecorationTheme(
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black, width: 1.5),
    ),
  );

  static final darkTextField = InputDecorationTheme(
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white, width: 1.5),
    ),
  );
}
