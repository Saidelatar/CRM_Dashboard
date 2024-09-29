import 'package:flutter/material.dart';

class CustomDotContainer extends StatelessWidget {
  const CustomDotContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8,
      height: 8,
      decoration: const ShapeDecoration(
        color: Color(0xff12C4D3),
        shape: OvalBorder(),
      ),
    );
  }
}
