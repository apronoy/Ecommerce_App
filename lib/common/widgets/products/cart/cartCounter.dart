 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myecommerceapp/features/shop/screens/cart/cart.dart';
import 'package:myecommerceapp/utilities/constants/colors.dart';
import 'package:myecommerceapp/utilities/helper/helper_fuction.dart';

class cartcounterIcon extends StatelessWidget {
  const cartcounterIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool dark = phelperfuction.isDarkMode(context);

    return Stack(
      children: [
        //beg icon / part icon / shop icon
        IconButton(
            onPressed: () => Get.to(() => Cart()),
            icon: Icon(
              Iconsax.shopping_bag,
              color: pcolors.white,
            )),
        //counter text
        Positioned(
          top: 4,
          right: 5.5,
          child: Container(
            height: 16,
            width: 16,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: dark ? pcolors.dark : pcolors.light),
            child: Center(
              child: Text('3',
                  style: Theme.of(context).textTheme.labelLarge!.apply(
                      fontSizeFactor: .9,
                      color: dark ? pcolors.white : pcolors.dark)),
            ),
          ),
        )
      ],
    );
  }
}
