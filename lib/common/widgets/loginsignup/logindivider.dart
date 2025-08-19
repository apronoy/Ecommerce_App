 import 'package:flutter/material.dart';
import 'package:myecommerceapp/utilities/constants/colors.dart';
import 'package:myecommerceapp/utilities/constants/texts.dart';
import 'package:myecommerceapp/utilities/helper/helper_fuction.dart';

class divider extends StatelessWidget {
  const divider({
    super.key,
    required this.title,
  });

  final title;

  @override
  Widget build(BuildContext context) {
    final dark = phelperfuction.isDarkMode(context);

    return Row(children: [
      Expanded(
          child: Divider(
        indent: 50,
        endIndent: 7,
        thickness: .5,
        color: dark ? pcolors.grey : pcolors.darkergrey,
      )),
      Text(
        ptexts.orsigninWith,
        style: Theme.of(context).textTheme.labelMedium,
      ),
      Expanded(
          child: Divider(
        indent: 7,
        endIndent: 50,
        thickness: .5,
        color: dark ? pcolors.grey : pcolors.darkergrey,
      ))
    ]);
  }
}
