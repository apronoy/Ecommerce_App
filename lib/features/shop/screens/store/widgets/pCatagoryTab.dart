 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myecommerceapp/common/widgets/brands/brand_ShowCase.dart';
import 'package:myecommerceapp/common/widgets/layout/Productgridview.dart';
import 'package:myecommerceapp/common/widgets/products/products_carts/pProduct_cart_vertical.dart';
import 'package:myecommerceapp/common/widgets/texts/sectionHeading.dart';
import 'package:myecommerceapp/features/shop/screens/all_product/all_product.dart';
import 'package:myecommerceapp/utilities/constants/imagas.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';
import 'package:myecommerceapp/utilities/constants/texts.dart';

class PcatagoryTab extends StatelessWidget {
  const PcatagoryTab({
    super.key,
    this.brandImg1 = pimages.northStar,
    this.brandTitle1 = ptexts.northster,
    this.brandImg2 = pimages.northStar,
    this.brandTitle2 = ptexts.northster,
    this.totalProduct1 = 00,
    this.totalProduct2 = 00,
  });
  final String brandImg1;
  final String brandTitle1;
  final String brandImg2;
  final String brandTitle2;
  final totalProduct1;
  final totalProduct2;
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(psizes.defaultspace),
          child: Column(
            children: [
              // brand showcase 1
              pBrandShowcase(
                images: [pimages.iphone1, pimages.iphone2, pimages.iphone3],
                brandImg: brandImg1,
                brandTitle: brandTitle1,
                totalProduct: totalProduct1,
              ),
              // // brand showcase 2
              pBrandShowcase(
                images: [pimages.facewash, pimages.shoes1, pimages.watch],
                brandImg: brandImg2,
                brandTitle: brandTitle2,
                totalProduct: totalProduct2,
              ),

              //spacing
              SizedBox(height: psizes.spacebtnitem),

              //section headings ....
              psectionheading(
                  title: 'You Might like ',
                  onpressed: () => Get.to(() => AllProduct())),
              //Gridview for Show product ..
              pgridview_section(
                itemcount: 4,
                itemBuilder: (context, index) {
                  return pProductCartVertical(image: pimages.iphone2);
                },
              ),
              // bottom space
              SizedBox(height: psizes.spacebtnsection)
            ],
          ),
        ),
      ],
    );
  }
}
