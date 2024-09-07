import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle styleRegular16(context) {
    return const TextStyle(
      color: Color(0xFFFFFFFF),
      fontSize: 16,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular20(context) {
    return const TextStyle(
        color: Color(0xFFFFFFFF),
        fontSize: 20,
        fontFamily: 'Inter',
        fontWeight: FontWeight.normal);
  }

  static TextStyle styleBold24(context) {
    return const TextStyle(
      color: Color(0xff9C5D9C),
      fontWeight: FontWeight.bold,
      fontFamily: 'Inter',
      fontSize: 24,
    );
  }

  static TextStyle styleMeduim16(context) {
    return const TextStyle(
      color: Color(0xFFFFFFFF),
      fontSize: 16,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold16(context) {
    return const TextStyle(
      color: Color(0xFFFFFFFF),
      fontSize: 16,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMeduim13(context) {
    return const TextStyle(
      color: Color(0xFFFFFFFF),
      fontSize: 13,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMeduim11(context) {
    return const TextStyle(
      color: Color(0xFFFFFFFF),
      fontSize: 11,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
    );
  }
}
