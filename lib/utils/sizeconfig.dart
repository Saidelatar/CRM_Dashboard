import 'package:flutter/material.dart';

class SizeConfig {
  static late double width, height;
  static double tabletlayout = 800;
  static double desktoplayout = 1200;

  static init(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
  }
}
