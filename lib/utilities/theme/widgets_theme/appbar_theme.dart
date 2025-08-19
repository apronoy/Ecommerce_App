 import 'package:flutter/material.dart';
import 'package:myecommerceapp/utilities/constants/colors.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';

class pappbarTheme {
  //primary constractor
  pappbarTheme._();

  static  const lightAppbarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: pcolors.black,size:psizes.iconMd),
    actionsIconTheme: IconThemeData(color: pcolors.black,size: psizes.iconMd),
    titleTextStyle: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w600,color: pcolors.black)
  );
  static  const darkAppbarTheme = AppBarTheme(
        elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: pcolors.black,size:psizes.iconMd),
    actionsIconTheme: IconThemeData(color: pcolors.white,size: psizes.iconMd),
    titleTextStyle: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w600,color: pcolors.white)

  );
}
