import 'package:flutter/material.dart';

class formText extends StatelessWidget {
  final String hint;
  final IconData prefix;
  final IconData? suffix;
  const formText({
    super.key,
    required this.hint,
    required this.prefix,
    this.suffix,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: Icon(prefix),
        suffixIcon: Icon(suffix),
      ),
    );
  }
}
