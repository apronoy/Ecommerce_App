 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myecommerceapp/common/widgets/icons/circular_icon.dart';
import 'package:myecommerceapp/common/widgets/layout/Productgridview.dart';
import 'package:myecommerceapp/common/widgets/products/products_carts/pProduct_cart_vertical.dart';
import 'package:myecommerceapp/navigation_menu.dart';
import 'package:myecommerceapp/utilities/constants/imagas.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';

import '../../../../common/widgets/appbar/appbar.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PappBar(
        title:
            Text('WishList', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          pcircularIcon(
            icon: Iconsax.add,
            size: psizes.iconLg,
            onpressed: () => navigationController.instance.selectind.value = 0,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(psizes.defaultspace),
          child: pgridview_section(
            itemcount: 5,
            itemBuilder: (context, index) =>
                pProductCartVertical(image: pimages.iphone3),
          ),
        ),
      ),
    );
  }
}
