 import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myecommerceapp/utilities/constants/colors.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';
import 'package:myecommerceapp/utilities/helper/helper_fuction.dart';

import '../../../../../common/widgets/icons/circular_icon.dart';

class Bottoncartbar extends StatelessWidget {
  const Bottoncartbar({super.key});

  @override
  Widget build(BuildContext context) {
    bool dark = phelperfuction.isDarkMode(context);
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: psizes.defaultspace / 2,
          vertical: psizes.defaultspace / 2),
      decoration: BoxDecoration(
          color: dark ? pcolors.darkergrey : pcolors.lightgrey,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(psizes.cardRadiusLg),
              topLeft: Radius.circular(psizes.cardRadiusLg))),
      child: Row(
        children: [
          pcircularIcon(
              icon: Iconsax.minus,
              color: pcolors.white,
              backgroundColor: pcolors.black,
              onpressed: () {},
              height: 40,
              width: 40,
              size: 25),
          SizedBox(width: psizes.spacebtnitem),
          Text('2', style: Theme.of(context).textTheme.titleLarge),
          SizedBox(width: psizes.spacebtnitem),
          pcircularIcon(
              icon: Iconsax.add,
              color: pcolors.white,
              backgroundColor: pcolors.black,
              onpressed: () {},
              height: 40,
              width: 40,
              size: 25),
          Spacer(),
          ElevatedButton(
            onPressed: () {},
            child: Row(
              children: [
                Icon(Iconsax.shopping_bag),
                SizedBox(width: psizes.sm),
                Text('Add Cart'),
              ],
            ),
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(psizes.defaultspace / 2),
                backgroundColor: pcolors.black,
                side: BorderSide(color: pcolors.black)),
          )
        ],
      ),
    );
  }
}
