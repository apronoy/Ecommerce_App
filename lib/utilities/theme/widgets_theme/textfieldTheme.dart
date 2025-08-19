 import 'package:flutter/material.dart';
import 'package:myecommerceapp/utilities/constants/colors.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';

class ptextfieldTheme {
  ptextfieldTheme._();
  static InputDecorationTheme lightinputdecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: pcolors.darkgrey,
    suffixIconColor: pcolors.darkgrey,
    // constraints: const BoxConstraints.expand(height:psizes.inputFieldRadius),
    labelStyle: const TextStyle()
        .copyWith(fontSize: psizes.fontsizeMd, color: pcolors.black),
    hintStyle: const TextStyle()
        .copyWith(fontSize: psizes.fontsizeSm, color: pcolors.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: pcolors.black),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(psizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: pcolors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(psizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: pcolors.grey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(psizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: pcolors.dark),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(psizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: pcolors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(psizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: pcolors.warning),
    ),
  );
  static InputDecorationTheme darkinputdecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: pcolors.darkgrey,
    suffixIconColor: pcolors.darkgrey,
    // constraints: const BoxConstraints.expand(height:psizes.inputFieldRadius),
    labelStyle: const TextStyle()
        .copyWith(fontSize: psizes.fontsizeMd, color: pcolors.white),
    hintStyle: const TextStyle()
        .copyWith(fontSize: psizes.fontsizeSm, color: pcolors.white),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: pcolors.white),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(psizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: pcolors.darkgrey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(psizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: pcolors.darkgrey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(psizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: pcolors.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(psizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: pcolors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(psizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: pcolors.warning),
    ),
  );
}
