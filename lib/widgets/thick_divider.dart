import 'package:flutter/material.dart';

class ThickDivider extends StatelessWidget {
  const ThickDivider({super.key, required this.thickness, required this.color});
  final Color color;
  final double thickness;
  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: thickness,
      color: color,
    );
  }
}
