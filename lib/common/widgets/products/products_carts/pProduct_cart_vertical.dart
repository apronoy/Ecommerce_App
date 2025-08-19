 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myecommerceapp/common/styles/shadow.dart';
import 'package:myecommerceapp/common/widgets/custom_shaps/rounded_container.dart';
import 'package:myecommerceapp/common/widgets/icons/circular_icon.dart';
import 'package:myecommerceapp/common/widgets/images/bannarImages.dart';
import 'package:myecommerceapp/common/widgets/texts/productPrice.dart';
import 'package:myecommerceapp/common/widgets/texts/productTitle.dart';
import 'package:myecommerceapp/common/widgets/texts/product_Brand_And_Verify_icon.dart';
import 'package:myecommerceapp/features/shop/screens/productDetails/product_details.dart';
import 'package:myecommerceapp/utilities/constants/colors.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';

import '../../../../utilities/helper/helper_fuction.dart';

class pProductCartVertical extends StatelessWidget {
  const pProductCartVertical({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    final bool dark = phelperfuction.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(() => ProductDetails()),
      child: Container(
          width: 180,
          padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
              boxShadow: pshadow.verticalproductShadow,
              borderRadius: BorderRadius.circular(psizes.productImageRadius),
              color: dark ? pcolors.darkergrey : pcolors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Thumbnail , favorite button and discount tag
              //  product-image
              pRoundedContainer(
                width: 180,
                height: 180,
                padding: const EdgeInsets.all(psizes.sm),
                backgroundColor: dark ? pcolors.dark : pcolors.light,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(psizes.defaultspace / 1.5),
                      child: Center(child: pRoundedBImage(imageUrl: image)),
                    ),
                    //discount tag
                    Positioned(
                      top: 10,
                      child: pRoundedContainer(
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
                    ),
                    // favorait-icon
                    Positioned(
                      right: 0,
                      child: pcircularIcon(
                        icon: Iconsax.heart5,
                        backgroundColor: pcolors.transparent,
                        onpressed: () {},
                        color: pcolors.red,
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(height: psizes.spacebtnitem / 2),

              // productName,productBrand.....
              Padding(
                padding: const EdgeInsets.only(left: psizes.sm),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // product Title
                    pproductTitle(
                      title: 'iPhone 13',
                      smallsize: false,
                    ),
                    SizedBox(height: psizes.spacebtnitem / 3),

                    //product brand and verify logo
                    Pproduct_Name_And_Verify_icon(
                      title: 'Apple',
                    ),
                  ],
                ),
              ),

              Spacer(),

              ///product price and add button

              ///price section..
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: psizes.sm),
                    child: pProductPrice(
                      price: '750',
                      currencysign: '\$',
                    ),
                  ),
                  // add button
                  Container(
                    width: psizes.iconLg,
                    height: psizes.iconLg,
                    decoration: BoxDecoration(
                        color: pcolors.primary,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(psizes.cardRadiusMd),
                            bottomRight:
                                Radius.circular(psizes.productImageRadius))),
                    child: Icon(
                      Iconsax.add,
                      color: pcolors.white,
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}
