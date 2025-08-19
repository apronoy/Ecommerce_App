 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myecommerceapp/common/widgets/custom_shaps/pPrimayHeader.dart';
import 'package:myecommerceapp/common/widgets/layout/Productgridview.dart';
import 'package:myecommerceapp/common/widgets/texts/sectionHeading.dart';
import 'package:myecommerceapp/features/shop/controler/home/home_controler.dart';
import 'package:myecommerceapp/features/shop/screens/all_product/all_product.dart';
import 'package:myecommerceapp/features/shop/screens/home/widgets/promoSlider.dart';
import 'package:myecommerceapp/utilities/constants/imagas.dart';

import '../../../../common/widgets/products/products_carts/pProduct_cart_vertical.dart';
import '../../../../common/widgets/searchbar/searchbar.dart';
import '../../../../utilities/constants/sizes.dart';
import 'widgets/homeappbar.dart';
import 'widgets/homecatagories.dart';

class homescreen extends StatelessWidget {
  const homescreen({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeControler());

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          // UpperPart...
          Stack(children: [
            SizedBox(height: psizes.homeprimaryHeaderheight + 10),
            pPrimaryHeaderContainer(
                height: psizes.homeprimaryHeaderheight,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PhoneAppbar(),
                      SizedBox(height: psizes.spacebtnsection),
                      phomeCatagories()
                    ])),

            //Search Bar
            searchbarsection(),
          ]),

          Padding(
            padding: const EdgeInsets.all(psizes.defaultspace),
            child: Column(
              children: [
                //Banners
                promoSlider(
                  banners: [
                    pimages.banarImage1,
                    pimages.banarImage2,
                    pimages.banarImage3,
                    pimages.banarImage5,
                    pimages.banarImage6
                  ],
                ),
                SizedBox(height: psizes.spacebtnsection),

                //section heading
                psectionheading(
                    title: 'Popular Products',
                    btntitle: 'View All',
                    onpressed: () => Get.to(() => AllProduct())),

                SizedBox(height: psizes.spacebtnitem),

                // vertical product cart
                // gridview of product part
                pgridview_section(
                  itemcount: 6,
                  itemBuilder: (context, index) {
                    return pProductCartVertical(
                      image: pimages.iphone1,
                    );
                  },
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
