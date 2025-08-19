 import 'package:flutter/material.dart';
import 'package:myecommerceapp/utilities/constants/colors.dart';
import 'package:myecommerceapp/utilities/theme/widgets_theme/bottomsheet_theme.dart';
import 'package:myecommerceapp/utilities/theme/widgets_theme/chip_theme.dart';
import 'package:myecommerceapp/utilities/theme/widgets_theme/elevatedbottom_theme.dart';
import 'package:myecommerceapp/utilities/theme/widgets_theme/outlinedbutton_theme.dart';
import 'package:myecommerceapp/utilities/theme/widgets_theme/text_theme.dart';
import 'package:myecommerceapp/utilities/theme/widgets_theme/textfieldTheme.dart';

import 'widgets_theme/appbar_theme.dart';
import 'widgets_theme/checbox_theme.dart';

class pApptheme {
  // private constructor
  pApptheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Nunito',
    brightness: Brightness.light,
    primaryColor: pcolors.primary,
    disabledColor: pcolors.grey,
    textTheme: ptexttheme.lightTextTheme,
    chipTheme: pchiptheme.LightChipTheme,
    scaffoldBackgroundColor: pcolors.white,
    appBarTheme: pappbarTheme.lightAppbarTheme,   
    checkboxTheme: pcheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: pbottomsheetTheme.lightbottomsheetTheme,
    elevatedButtonTheme: pelevatedbottonTheme.lightElevatedbuttonTheme,
    outlinedButtonTheme: poutlinedbuttontheme.lightoutlinedbuttonTheme,
    inputDecorationTheme: ptextfieldTheme.lightinputdecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Nunito',
    brightness: Brightness.dark,
    primaryColor: pcolors.primary,
    disabledColor: pcolors.grey,
    textTheme: ptexttheme.darkTextTheme,
    chipTheme: pchiptheme.DarkChipTheme,
    scaffoldBackgroundColor: pcolors.black,
    appBarTheme: pappbarTheme.darkAppbarTheme,
    checkboxTheme: pcheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: pbottomsheetTheme.darkbottomsheetTheme,
    elevatedButtonTheme: pelevatedbottonTheme.darkElevatedbuttonTheme,
    outlinedButtonTheme: poutlinedbuttontheme.darkoutlinedbuttonTheme,
    inputDecorationTheme: ptextfieldTheme.darkinputdecorationTheme,
  );
}
