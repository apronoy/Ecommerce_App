 import 'package:flutter/material.dart';
import 'package:myecommerceapp/utilities/constants/colors.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';

class pelevatedbottonTheme {
  //primary constraction
  pelevatedbottonTheme._();

  static final lightElevatedbuttonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: pcolors.light,
      backgroundColor: pcolors.primary,
      disabledForegroundColor: pcolors.darkergrey,
      disabledBackgroundColor: pcolors.buttondisabled,
      side: const BorderSide(color: pcolors.light),
      padding: const EdgeInsets.symmetric(vertical:psizes.buttonHeight),
      textStyle: const TextStyle(fontSize: 16,color: pcolors.textwhite,fontWeight:FontWeight.w500),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(psizes.buttonRadius))
    )
  );
  static final darkElevatedbuttonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: pcolors.light,
      backgroundColor: pcolors.primary,
      disabledForegroundColor: pcolors.darkergrey,
      disabledBackgroundColor: pcolors.buttondisabled,
      side: const BorderSide(color: pcolors.light),
      padding: const EdgeInsets.symmetric(vertical:psizes.buttonHeight),
      textStyle: const TextStyle(fontSize: 16,color: pcolors.textwhite,fontWeight:FontWeight.w500),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(psizes.buttonRadius))
    )
  );
}
