import 'package:flutter/material.dart';
import 'package:myecommerceapp/common/widgets/images/roundedImage.dart';
import 'package:myecommerceapp/common/widgets/texts/productTitle.dart';
import 'package:myecommerceapp/common/widgets/texts/product_Brand_And_Verify_icon.dart';
import 'package:myecommerceapp/utilities/helper/helper_fuction.dart';

import '../../../../utilities/constants/colors.dart';
import '../../../../utilities/constants/imagas.dart';
import '../../../../utilities/constants/sizes.dart';

class cartProduct_Img_info extends StatelessWidget {
  const cartProduct_Img_info({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool dark = phelperfuction.isDarkMode(context);

    return Row(
      children: [
        // product images ......
        proundedimage(
          imageUrl: pimages.iphone1,
          height: 60,
          width: 60,
          Padding: EdgeInsets.all(psizes.xs),
          backgroundColor: dark ? pcolors.darkergrey : pcolors.lightgrey,
        ),
        SizedBox(width: psizes.spacebtnitem),
        // product information ....
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Pproduct_Name_And_Verify_icon(
                title: 'Apple',
              ),
              pproductTitle(
                title: 'iPhone 12',
                maxline: 1,
              ),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Color ',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  TextSpan(
                      text: 'Olivia ',
                      style: Theme.of(context).textTheme.bodyLarge),
                  TextSpan(
                    text: ' Storage ',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  TextSpan(
                      text: '512 GB',
                      style: Theme.of(context).textTheme.bodyLarge),
                ]),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
