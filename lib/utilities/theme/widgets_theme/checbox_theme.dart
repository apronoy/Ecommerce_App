 import 'package:flutter/material.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';

import '../../constants/colors.dart';

class pcheckboxTheme {
  //primary constractor
  pcheckboxTheme._();

  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(psizes.xs)),
      checkColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return pcolors.white;
        } else {
          return pcolors.black;
        }
      }),
      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return pcolors.primary;
        } else {
          return Colors.transparent;
        }
      }),
      );

  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(psizes.xs)),
      checkColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return pcolors.white;
        } else {
          return pcolors.black;
        }
      }),
      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return pcolors.primary;
        } else {
          return Colors.transparent;
        }
      }),
      );
}
