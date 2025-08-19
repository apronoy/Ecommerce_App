 import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myecommerceapp/common/widgets/appbar/appbar.dart';
import 'package:myecommerceapp/common/widgets/icons/circular_icon.dart';
import 'package:myecommerceapp/common/widgets/images/roundedImage.dart';
import 'package:myecommerceapp/utilities/constants/colors.dart';
import 'package:myecommerceapp/utilities/constants/imagas.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';
import 'package:myecommerceapp/utilities/helper/helper_fuction.dart';

class ProductAndSlider_image extends StatelessWidget {
  const ProductAndSlider_image({
    super.key,
   });



  @override
  Widget build(BuildContext context) {
        final bool dark = phelperfuction.isDarkMode(context);

    return Stack(
      children: [
        // product Image or Thumbnail
        SizedBox(
          height: 400,
          child: Padding(
            padding: EdgeInsets.all(psizes.productImageRadius * 2),
            child: Center(
                child:
                    Image(image: const AssetImage(pimages.iphone3))),
          ),
        ),
        // Image slider
        Positioned(
          bottom: 30,
          left: psizes.defaultspace,
          right: 0,
          child: SizedBox(
            height: 100,
            width: 100,
            child: ListView.separated(
              separatorBuilder: (context, index) =>
                  SizedBox(width: psizes.defaultspace / 1.5),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 6,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {},
                child: proundedimage(
                  imageUrl: pimages.iphone1,
                  Padding: EdgeInsets.all(psizes.xs),
                  width: 80,
                  border: Border.all(color: pcolors.primary),
                  backgroundColor:
                      dark ? pcolors.dark : pcolors.light,
                ),
              ),
            ),
          ),
        ),
        // this is appBar ...
        PappBar(
          showBackarrow: true,
          actions: [
            pcircularIcon(
              icon: Iconsax.heart5,
              color: pcolors.red,
            )
          ],
        )
      ],
    );
  }
}
