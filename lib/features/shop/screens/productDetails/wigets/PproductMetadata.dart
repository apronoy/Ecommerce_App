 import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myecommerceapp/common/widgets/custom_shaps/rounded_container.dart';
import 'package:myecommerceapp/common/widgets/images/circularImage.dart';
import 'package:myecommerceapp/common/widgets/texts/productPrice.dart';
import 'package:myecommerceapp/common/widgets/texts/productTitle.dart';
import 'package:myecommerceapp/utilities/constants/colors.dart';
import 'package:myecommerceapp/utilities/constants/enums.dart';
import 'package:myecommerceapp/utilities/constants/imagas.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';

import '../../../../../common/widgets/texts/product_Brand_And_Verify_icon.dart';

class PproductMetaData extends StatelessWidget {
  const PproductMetaData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            pRoundedContainer(
              radius: psizes.sm,
              backgroundColor: pcolors.primary.withOpacity(0.7),
              padding: EdgeInsets.symmetric(
                  horizontal: psizes.sm, vertical: psizes.xs),
              child: Text(
                '1%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(color: pcolors.white),
              ),
            ),
            SizedBox(width: psizes.spacebtnitem),
            pProductPrice(
                currencysign: '\$', price: '780', lineThrough: true),
            SizedBox(width: psizes.spacebtnitem),
            pProductPrice(
              currencysign: '\$',
              price: '750',
              isLarge: true,
            ),
            Spacer(),
            IconButton(onPressed: () {}, icon: Icon(Iconsax.share))
          ],
        ),
        SizedBox(height: psizes.spacebtnitem / 1.5),
        pproductTitle(title: 'iPhone 12 '),
        SizedBox(height: psizes.spacebtnitem / 1.5),
        Row(
          children: [
            pproductTitle(title: 'Status '),
            SizedBox(width: psizes.spacebtnitem / 1.5),
            pproductTitle(title: 'In Stock  '),
          ],
        ),
        SizedBox(height: psizes.spacebtnitem / 1.5),
        Row(
          children: [
            pcircularimage(
                image: pimages.apple,
                height: 50,
                width: 50,
                showborder: false),
            Pproduct_Name_And_Verify_icon(
              title: 'Apple',
              brandTextsize: TextSizes.large,
            ),
          ],
        )
      ],
    );
  }
}
