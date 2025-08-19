 import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myecommerceapp/common/widgets/icons/circular_icon.dart';
import 'package:myecommerceapp/common/widgets/texts/productPrice.dart';

import '../../../../utilities/constants/sizes.dart';

class CartProduct_addremove_and_price extends StatelessWidget {
  const CartProduct_addremove_and_price({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        pcircularIcon(
          icon: Iconsax.minus,
          size: 20,
          onpressed: () {},
        ),
        SizedBox(width: psizes.sm),
        Text('1', style: Theme.of(context).textTheme.titleLarge),
        SizedBox(width: psizes.sm),
        pcircularIcon(
          icon: Iconsax.add,
          size: 20,
          onpressed: () {},
        ),
        Spacer(),
        pProductPrice(price: '750')
      ],
    );
  }
}
