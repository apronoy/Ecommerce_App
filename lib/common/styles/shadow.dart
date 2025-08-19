 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myecommerceapp/utilities/constants/colors.dart';

class pshadow {
  pshadow._();
  static List<BoxShadow> searchbarshadow = [
    BoxShadow(
        color: pcolors.grey.withOpacity(0.2),
        blurRadius: 4.0,
        spreadRadius: 2.0)
  ];

  static List<BoxShadow> verticalproductShadow = [
    BoxShadow(
        color: pcolors.darkgrey.withOpacity(0.1),
        blurRadius: 50,
        spreadRadius: 7,
        offset: const Offset(0, 2))
  ];
}
