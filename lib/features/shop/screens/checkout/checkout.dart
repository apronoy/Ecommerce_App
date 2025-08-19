import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myecommerceapp/common/screens/successscreen.dart';
import 'package:myecommerceapp/common/styles/padding.dart';
import 'package:myecommerceapp/common/textfeild/pPromo_code.dart';
import 'package:myecommerceapp/common/widgets/appbar/appbar.dart';
import 'package:myecommerceapp/common/widgets/custom_shaps/rounded_container.dart';
import 'package:myecommerceapp/common/widgets/elevatedbtn.dart';
import 'package:myecommerceapp/common/widgets/products/cart/cartProduct_image_info.dart';
import 'package:myecommerceapp/features/shop/screens/checkout/widgets/Ppayment_method.dart';
import 'package:myecommerceapp/features/shop/screens/checkout/widgets/checkout_bill.dart';
import 'package:myecommerceapp/features/shop/screens/checkout/widgets/pshipping_address.dart';
import 'package:myecommerceapp/navigation_menu.dart';
import 'package:myecommerceapp/utilities/constants/colors.dart';
import 'package:myecommerceapp/utilities/constants/imagas.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PappBar(
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackarrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: pPadding.screenPadding,
          child: Column(
            children: [
              //  ordered product list
              ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => cartProduct_Img_info(),
                  separatorBuilder: (context, index) =>
                      SizedBox(height: psizes.spacebtnitem),
                  itemCount: 3),
              SizedBox(height: psizes.spacebtnsection),

              pPromo_code(),
              SizedBox(height: psizes.spacebtnsection),
              //  products bill
              pRoundedContainer(
                showBorder: true,
                padding: EdgeInsets.all(psizes.md),
                backgroundColor: pcolors.transparent,
                child: Column(
                  children: [
                    bill_section(),
                    SizedBox(height: psizes.spacebtnitem),
                    //payment section
                    Ppayment_method(),
                    SizedBox(height: psizes.spacebtnsection),
                    //shipping address ....
                    Pshipping_address()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: pPadding.screenPadding,
        child: PElevatedButton(
            onpressed: () => Get.to(
                  () => successscreen(
                    image: pimages.successs_payment_screen,
                    onpressed: () => Get.offAll(navigationmenu()),
                    title: 'Payment Successfull',
                    subtitle: 'Your item will be shipped soon !!',
                  ),
                ),
            child: Text('Confirm')),
      ),
    );
  }
}
