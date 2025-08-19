import 'package:flutter/material.dart';

class phelperfuction {
  // primary constructor
  phelperfuction._();

  //some colours for chips

  static Color? getcolor(String value) {
    if (value == 'red') {
      return Colors.red;
    } else if (value == 'green') {
      return Colors.green;
    } else if (value == 'blue') {
      return Colors.blue;
    } else if (value == 'yellow') {
      return Colors.yellow;
    } else if (value == 'black') {
      return Colors.black;
    } else if (value == 'white') {
      return Colors.white;
    } else if (value == 'pink') {
      return Colors.pink;
    } else if (value == 'grey') {
      return Colors.grey;
    } else if (value == 'brown') {
      return Colors.brown;
    } else if (value == 'purple') {
      return Colors.purple;
    } else if (value == 'yellow') {
      return Colors.yellow;
    } else {
      return null;
    }
  }

// for dark theme ..
  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }
}
