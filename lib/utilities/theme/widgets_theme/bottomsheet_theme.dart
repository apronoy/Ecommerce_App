 import 'package:flutter/material.dart';
import 'package:myecommerceapp/utilities/constants/colors.dart';

class pbottomsheetTheme {
  //primary constractor
  pbottomsheetTheme._();    
  
  static BottomSheetThemeData lightbottomsheetTheme=BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: pcolors.white,
    modalBackgroundColor: pcolors.white,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
   );
  static BottomSheetThemeData darkbottomsheetTheme=BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: pcolors.white,
    modalBackgroundColor: pcolors.white,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
   );

}
