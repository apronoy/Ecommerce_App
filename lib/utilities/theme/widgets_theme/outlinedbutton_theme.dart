 import 'package:flutter/material.dart';
import 'package:myecommerceapp/utilities/constants/colors.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';

class poutlinedbuttontheme {
  poutlinedbuttontheme._();

  static final lightoutlinedbuttonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
    elevation: 0,
    foregroundColor: pcolors.dark,
    side: const BorderSide(color: pcolors.black),
    textStyle: const TextStyle(
        fontSize: 16, color: pcolors.black, fontWeight: FontWeight.w600),
    padding: const EdgeInsets.symmetric(
        vertical: psizes.buttonHeight, horizontal: 20),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(psizes.buttonRadius)),
  ));
  static final darkoutlinedbuttonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
    elevation: 0,
    foregroundColor: pcolors.light,
    side: const BorderSide(color: pcolors.borderprimary),
    textStyle: const TextStyle(
        fontSize: 16, color: pcolors.textwhite, fontWeight: FontWeight.w600),
    padding: const EdgeInsets.symmetric(
        vertical: psizes.buttonHeight, horizontal: 20),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(psizes.buttonRadius)),
  ));
}
