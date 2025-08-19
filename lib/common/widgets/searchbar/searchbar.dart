 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myecommerceapp/common/styles/shadow.dart';
import 'package:myecommerceapp/utilities/constants/colors.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';
import 'package:myecommerceapp/utilities/constants/texts.dart';
import 'package:myecommerceapp/utilities/helper/helper_fuction.dart';

class searchbarsection extends StatelessWidget {
  const searchbarsection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool dark = phelperfuction.isDarkMode(context);
    return Positioned(
      bottom: 0,
      right: psizes.spacebtnsection,
      left: psizes.spacebtnsection,
      child: Container(
        height: psizes.searchbarheight,
        padding: EdgeInsets.symmetric(horizontal: psizes.md),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(psizes.borderradiusLg),
            color: dark ? pcolors.dark : pcolors.white,
            boxShadow: pshadow.searchbarshadow),
        child: Row(
          children: [
            Icon(
              Iconsax.search_normal,
              color: pcolors.grey,
            ),
            SizedBox(
              width: psizes.spacebtnitem,
            ),
            Text(
              ptexts.searchTitle,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: pcolors.grey),
            )
          ],
        ),
      ),
    );
  }
}
