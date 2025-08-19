import 'package:flutter/material.dart';
import 'package:myecommerceapp/common/widgets/custom_shaps/circuler_container.dart';
import 'package:myecommerceapp/utilities/constants/colors.dart';
import 'package:myecommerceapp/utilities/helper/helper_fuction.dart';

class pChoiceChip extends StatelessWidget {
  const pChoiceChip({
    super.key,
    required this.selected,
    required this.onselected,
    required this.text,
  });

  final String text;
  final bool selected;
  final Function(bool?) onselected;

  @override
  Widget build(BuildContext context) {
    bool dark = phelperfuction.isDarkMode(context);
    bool iscolor = phelperfuction.getcolor(text) != null;
    return ChoiceChip(
        label: iscolor ? SizedBox() : Text(text),
        selected: selected,
        onSelected: onselected,
        labelStyle: TextStyle(
            color: selected
                ? pcolors.white
                : dark
                    ? pcolors.light
                    : null),
        labelPadding: iscolor ? EdgeInsets.zero : null,
        padding: iscolor ? EdgeInsets.zero : null,
        backgroundColor: iscolor ? phelperfuction.getcolor(text) : null,
        shape: iscolor ? CircleBorder() : null,
        avatar: iscolor
            ? pcircular_container(
                backgroundcolor: phelperfuction.getcolor(text)!)
            : null);
  }
}
