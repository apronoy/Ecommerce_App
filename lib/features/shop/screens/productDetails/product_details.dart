 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myecommerceapp/common/widgets/elevatedbtn.dart';
import 'package:myecommerceapp/features/shop/screens/checkout/checkout.dart';
import 'package:myecommerceapp/features/shop/screens/productDetails/wigets/PproductMetadata.dart';
import 'package:myecommerceapp/features/shop/screens/productDetails/wigets/ProductSlider.dart';
import 'package:myecommerceapp/features/shop/screens/productDetails/wigets/bottoncartbar.dart';
import 'package:myecommerceapp/features/shop/screens/productDetails/wigets/product_attribute.dart';
import 'package:myecommerceapp/utilities/constants/colors.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';
import 'package:myecommerceapp/utilities/helper/helper_fuction.dart';
import 'package:readmore/readmore.dart';

import '../../../../common/styles/padding.dart';
import '../../../../common/widgets/texts/sectionHeading.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = phelperfuction.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // product image , back arrow , favorait icon , horizontal images ..
            Container(
              color: dark ? pcolors.darkergrey : pcolors.lightgrey,
              child: ProductAndSlider_image(),
            ),
            Padding(
              padding: pPadding.screenPadding,
              child: Column(
                children: [
                  // Discount , Price ,Brand , etc ...

                  PproductMetaData(),
                  SizedBox(height: psizes.spacebtnitem),
                  pProduct_attribute(),
                  SizedBox(
                    height: psizes.spacebtnsection,
                  ),

                  PElevatedButton(
                    onpressed: () => Get.to(() => Checkout()),
                    child: Text('Checkout'),
                  ),
                  SizedBox(
                    height: psizes.spacebtnsection,
                  ),
                  psectionheading(title: 'Description', showtxtbtn: false),
                  ReadMoreText(
                    'iPhone 12 , the latest phone of Apple . This phone have the latest technology i12 . This phone have sevaral types of variation .It has 3 deffrent price for 3 diffrent variation ',
                    trimCollapsedText: 'Show More',
                    trimExpandedText: ' Less ',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    moreStyle:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Bottoncartbar(),
    );
  }
}
