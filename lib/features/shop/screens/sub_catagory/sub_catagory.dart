 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myecommerceapp/common/styles/padding.dart';
import 'package:myecommerceapp/common/widgets/appbar/appbar.dart';
import 'package:myecommerceapp/common/widgets/products/products_carts/pProduct_cart_horizontal.dart';
import 'package:myecommerceapp/common/widgets/texts/sectionHeading.dart';

import '../../../../utilities/constants/sizes.dart';

class SubCatagory extends StatelessWidget {
  const SubCatagory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PappBar(
          title:
              Text('Sports', style: Theme.of(context).textTheme.headlineMedium),
          showBackarrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: pPadding.screenPadding,
          child: Column(
            children: [
              // 1st section 
              psectionheading(
                title: 'Sports Shoes',
                showtxtbtn: true,
                onpressed: () {},
              ),
              SizedBox(height: psizes.spacebtnitem),
              SizedBox(
                height: 120,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => pProduct_cart_horizontal(),
                    separatorBuilder: (context, index) => SizedBox(
                          width: psizes.spacebtnitem,
                        ),
                    itemCount: 7),
              ),
              // 2nd section 
              psectionheading(
                title: 'Sports Shoes',
                showtxtbtn: true,
                onpressed: () {},
              ),
              SizedBox(height: psizes.spacebtnitem),
              SizedBox(
                height: 120,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => pProduct_cart_horizontal(),
                    separatorBuilder: (context, index) => SizedBox(
                          width: psizes.spacebtnitem,
                        ),
                    itemCount: 7),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
