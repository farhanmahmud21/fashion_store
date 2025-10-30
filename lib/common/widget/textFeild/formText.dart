import 'package:flutter/material.dart';

class formText extends StatelessWidget {
  final String hint;
  final IconData prefix;
  final IconData? suffix;
  final bool? filled;
  final Color? color;
  const formText({
    super.key,
    required this.hint,
    required this.prefix,
    this.suffix,
    this.filled = false,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: filled,
        fillColor: color,
        hintText: hint,
        prefixIcon: Icon(prefix),
        suffixIcon: Icon(suffix),
      ),
    );
  }
}
