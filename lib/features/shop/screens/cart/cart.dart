 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myecommerceapp/common/styles/padding.dart';
import 'package:myecommerceapp/common/widgets/appbar/appbar.dart';
import 'package:myecommerceapp/common/widgets/custom_shaps/rounded_container.dart';
import 'package:myecommerceapp/common/widgets/elevatedbtn.dart';
import 'package:myecommerceapp/common/widgets/products/cart/cartPro_addRemove_price.dart';
import 'package:myecommerceapp/common/widgets/products/cart/cartProduct_image_info.dart';
import 'package:myecommerceapp/features/shop/screens/checkout/checkout.dart';
import 'package:myecommerceapp/utilities/constants/colors.dart';

 import 'package:myecommerceapp/utilities/constants/sizes.dart';
 
class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ....appbar.....
      appBar: PappBar(
          title:
              Text(' Cart ', style: Theme.of(context).textTheme.headlineMedium),
          showBackarrow: true),

      // .....body.....
      body: Padding(
        padding: pPadding.screenPadding,
        child: ListView.separated(
          separatorBuilder: (context, index) =>
              SizedBox(height: psizes.spacebtnitem),
          itemCount: 15,
          itemBuilder: (context, index) {
            return pRoundedContainer(
              backgroundColor: pcolors.lightwhite,
              darkbackgroundColor: pcolors.lightblack,
              padding: EdgeInsets.all(psizes.sm),
              child: Column(
                children: [
                  cartProduct_Img_info(),
                  SizedBox(height: psizes.spacebtnitem),
                  CartProduct_addremove_and_price()
                ],
              ),
            );
          },
        ),
      ),

      //bottomNavigation bar ....
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(psizes.defaultspace),
        child: PElevatedButton(
            onpressed: () => Get.to(() => Checkout()),
            child: Text('Checkout \$17570')),
      ),
    );
  }
}
