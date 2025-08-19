 import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myecommerceapp/common/widgets/layout/Productgridview.dart';
import 'package:myecommerceapp/common/widgets/products/products_carts/pProduct_cart_vertical.dart';
import 'package:myecommerceapp/utilities/constants/imagas.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';

class Psortallproduct extends StatelessWidget {
  const Psortallproduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField(
          onChanged: (value) {},
          decoration: InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          items: [
            'High Price ',
            'Low Price',
            'Latest Product',
            'Best Product',
            'New Product'
          ]
              .map((product) =>
                  DropdownMenuItem(value: product, child: Text(product)))
              .toList(),
        ),
        SizedBox(height: psizes.spacebtnitem),
        pgridview_section(
          itemcount: 10,
          itemBuilder: (context, index) =>
              pProductCartVertical(image: pimages.iphone3),
        )
      ],
    );
  }
}
