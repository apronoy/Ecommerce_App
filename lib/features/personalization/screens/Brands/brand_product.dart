 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 import 'package:myecommerceapp/common/styles/padding.dart';
import 'package:myecommerceapp/common/widgets/appbar/appbar.dart';
import 'package:myecommerceapp/common/widgets/brands/Product_Brand_cart.dart';
import 'package:myecommerceapp/common/widgets/products/all_product/SortAllProduct.dart';
 import 'package:myecommerceapp/utilities/constants/imagas.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';
 
class BrandProduct extends StatelessWidget {
  const BrandProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PappBar(
        title: Text('Brands Products ',
            style: Theme.of(context).textTheme.headlineSmall),
        showBackarrow: true,
      ),
      body: SingleChildScrollView(
          child: Padding(
              padding: pPadding.screenPadding,
              child: Column(children: [
                pBrandCard(
                  brandImg: pimages.apple,
                  brandTitle: 'Apple',
                ),
                SizedBox(height: psizes.spacebtnitem),
                // including sort all product ..
                Psortallproduct()
              ]))),
    );
  }
}
