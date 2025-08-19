 import 'package:flutter/material.dart';
import 'package:myecommerceapp/common/widgets/custom_shaps/rounded_container.dart';
import 'package:myecommerceapp/common/widgets/images/bannarImages.dart';
import 'package:myecommerceapp/common/widgets/texts/product_Brand_And_Verify_icon.dart';
import 'package:myecommerceapp/utilities/constants/enums.dart';
import 'package:myecommerceapp/utilities/constants/imagas.dart';
import 'package:myecommerceapp/utilities/constants/texts.dart';

import '../../../utilities/constants/sizes.dart';

class pBrandCard extends StatelessWidget {
  const pBrandCard(
      {super.key,
      this.showborder = true,
      this.brandtextsize = TextSizes.medium,
      this.brandTitle = ptexts.northster,
      this.totalProduct = 150,
      this.brandImg = pimages.northStar,
      this.ontap});

  final bool showborder;
  final brandtextsize;
  final String brandTitle;
  final totalProduct;
  final String brandImg;
  final VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: pRoundedContainer(
        height: psizes.brandCartHeight,
        showBorder: showborder,
        padding: EdgeInsets.all(psizes.sm),
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            // brands images
            Flexible(child: pRoundedBImage(imageUrl: brandImg)),
            SizedBox(width: psizes.spacebtnitem),

            // right portion
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // brandName_and_VerifyIcon

                  Pproduct_Name_And_Verify_icon(
                    title: brandTitle,
                    brandTextsize: brandtextsize,
                  ),
                  //texts
                  Text('$totalProduct products ',
                      style: Theme.of(context).textTheme.labelMedium,
                      overflow: TextOverflow.ellipsis)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
