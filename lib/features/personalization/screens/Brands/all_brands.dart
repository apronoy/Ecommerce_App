 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myecommerceapp/common/styles/padding.dart';
import 'package:myecommerceapp/common/widgets/appbar/appbar.dart';
import 'package:myecommerceapp/common/widgets/brands/Product_Brand_cart.dart';
import 'package:myecommerceapp/common/widgets/layout/Productgridview.dart';
import 'package:myecommerceapp/common/widgets/texts/sectionHeading.dart';
import 'package:myecommerceapp/features/personalization/screens/Brands/brand_product.dart';
import 'package:myecommerceapp/utilities/constants/imagas.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';

class AllBrands extends StatelessWidget {
  const AllBrands({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PappBar(
        title: Text('All Brands ',
            style: Theme.of(context).textTheme.headlineSmall),
        showBackarrow: true,
      ),
      //body
      body: SingleChildScrollView(
        child: Padding(
          padding: pPadding.screenPadding,
          child: Column(
            children: [
              psectionheading(title: 'Brands', showtxtbtn: false),
              SizedBox(height: psizes.spacebtnitem),
              pgridview_section(
                mainAxisExtent: 80,
                itemcount: 15,
                itemBuilder: (context, index) => pBrandCard(
                  ontap: () => Get.to(() => BrandProduct()),
                  brandImg: pimages.apple,
                  brandTitle: 'Apple',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
