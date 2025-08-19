 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myecommerceapp/common/widgets/custom_shaps/rounded_container.dart';
import 'package:myecommerceapp/common/widgets/texts/productPrice.dart';
import 'package:myecommerceapp/common/widgets/texts/product_Brand_And_Verify_icon.dart';
import 'package:myecommerceapp/features/shop/screens/productDetails/product_details.dart';
import 'package:myecommerceapp/features/shop/screens/sub_catagory/widgets/subcata_imgdisfev.dart';

import '../../../../utilities/constants/colors.dart';
import '../../../../utilities/constants/sizes.dart';
import '../../texts/productTitle.dart';

class pProduct_cart_horizontal extends StatelessWidget {
  const pProduct_cart_horizontal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => ProductDetails());
      },
      child: pRoundedContainer(
        backgroundColor: pcolors.lightwhite,
        darkbackgroundColor: pcolors.lightblack,
        child: Row(
          children: [
            // .. Product image , discount , fevorait button ....
            pRoundedContainer(
              backgroundColor: pcolors.lightgrey,
              darkbackgroundColor: pcolors.lightblack,
              padding: EdgeInsets.all(psizes.sm),
              child: subCata_image_dis_fev(),
            ),
            //  ...info and price with add button .
            SizedBox(
              width: 175.0,
              child: Padding(
                padding: EdgeInsets.only(left: psizes.sm, top: psizes.md),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    pproductTitle(title: 'iPhone 12 '),
                    Pproduct_Name_And_Verify_icon(
                      title: 'Apple',
                    ),
                    Spacer(),
                    //price and add button .....
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        pProductPrice(price: '750'),

                        // add button
                        Container(
                          width: psizes.iconLg,
                          height: psizes.iconLg,
                          decoration: BoxDecoration(
                              color: pcolors.primary,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(psizes.cardRadiusMd),
                                  bottomRight: Radius.circular(
                                      psizes.productImageRadius))),
                          child: Icon(
                            Iconsax.add,
                            color: pcolors.white,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
