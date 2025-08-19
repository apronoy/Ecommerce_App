 import 'package:flutter/material.dart';
import 'package:myecommerceapp/utilities/constants/colors.dart';

class pchiptheme {
  //primary constractor
  pchiptheme._();

  static ChipThemeData LightChipTheme = ChipThemeData(
    disabledColor: pcolors.grey,
    labelStyle: const TextStyle(color: pcolors.black),
    selectedColor: pcolors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 12.0),
    checkmarkColor: pcolors.white
  );
  static ChipThemeData DarkChipTheme = ChipThemeData(
        disabledColor: pcolors.grey,
    labelStyle: const TextStyle(color: pcolors.black),
    selectedColor: pcolors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 12.0),
    checkmarkColor: pcolors.white

  );
}
