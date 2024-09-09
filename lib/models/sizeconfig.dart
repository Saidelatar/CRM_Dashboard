import 'package:flutter/material.dart';

class Sizeconfig {
  static late double width, height;

  static init(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
  }
}
