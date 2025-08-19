 import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myecommerceapp/common/widgets/custom_shaps/rounded_container.dart';
import 'package:myecommerceapp/common/widgets/icons/circular_icon.dart';
import 'package:myecommerceapp/utilities/constants/colors.dart';
import 'package:myecommerceapp/utilities/constants/imagas.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';

class subCata_image_dis_fev extends StatelessWidget {
  const subCata_image_dis_fev({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
            height: 120,
            width: 120,
            child: Image(image: AssetImage(pimages.iphone3))),

        //discount tag
        Positioned(
          top: 10,
          child: pRoundedContainer(
            radius: psizes.sm,
            backgroundColor: pcolors.primary.withOpacity(0.7),
            padding: EdgeInsets.symmetric(
                horizontal: psizes.sm, vertical: psizes.xs),
            child: Text(
              '7%',
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(color: pcolors.white),
            ),
          ),
        ),
        // favorait-icon
        Positioned(
          right: 0,
          child: pcircularIcon(
            size: 20,
            icon: Iconsax.heart5,
            backgroundColor: pcolors.transparent,
            onpressed: () {},
            color: pcolors.red,
          ),
        )
      ],
    );
  }
}
