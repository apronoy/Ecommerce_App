 import 'package:flutter/material.dart';
import 'package:myecommerceapp/utilities/constants/colors.dart';

class ptexttheme {
  //private constractor
  ptexttheme._();

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: TextStyle().copyWith(
        fontSize: 32.0, fontWeight: FontWeight.bold, color: pcolors.dark),
    headlineMedium: TextStyle().copyWith(
        fontSize: 24.0, fontWeight: FontWeight.w600, color: pcolors.dark),
    headlineSmall: TextStyle().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.w600, color: pcolors.dark),
    titleLarge: TextStyle().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.w600, color: pcolors.dark),
    titleMedium: TextStyle().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.w500, color: pcolors.dark),
    titleSmall: TextStyle().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.w400, color: pcolors.dark),
    bodyLarge: TextStyle().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.w500, color: pcolors.dark),
    bodyMedium: TextStyle().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.normal, color: pcolors.dark),
    bodySmall: TextStyle().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.w500, color: pcolors.dark),
    labelLarge: TextStyle().copyWith(
        fontSize: 12.0, fontWeight: FontWeight.normal, color: pcolors.dark),
    labelMedium: TextStyle().copyWith(
        fontSize: 12.0, fontWeight: FontWeight.normal, color: pcolors.dark),
  );

  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: TextStyle().copyWith(
        fontSize: 32.0, fontWeight: FontWeight.bold, color: pcolors.light),
    headlineMedium: TextStyle().copyWith(
        fontSize: 24.0, fontWeight: FontWeight.w600, color: pcolors.light),
    headlineSmall: TextStyle().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.w600, color: pcolors.light),
    titleLarge: TextStyle().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.w600, color: pcolors.light),
    titleMedium: TextStyle().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.w500, color: pcolors.light),
    titleSmall: TextStyle().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.w400, color: pcolors.light),
    bodyLarge: TextStyle().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.w500, color: pcolors.light),
    bodyMedium: TextStyle().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.normal, color: pcolors.light),
    bodySmall: TextStyle().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.w500, color: pcolors.light),
    labelLarge: TextStyle().copyWith(
        fontSize: 12.0, fontWeight: FontWeight.normal, color: pcolors.light),
    labelMedium: TextStyle().copyWith(
        fontSize: 12.0, fontWeight: FontWeight.normal, color: pcolors.light),
    labelSmall: TextStyle().copyWith(
        fontSize: 12.0, fontWeight: FontWeight.normal, color: pcolors.light),
  );
}
