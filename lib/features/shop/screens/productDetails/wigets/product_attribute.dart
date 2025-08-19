 import 'package:flutter/material.dart';
import 'package:myecommerceapp/common/widgets/chips/choiceChip.dart';
import 'package:myecommerceapp/common/widgets/custom_shaps/rounded_container.dart';
import 'package:myecommerceapp/common/widgets/texts/productPrice.dart';
import 'package:myecommerceapp/common/widgets/texts/productTitle.dart';
import 'package:myecommerceapp/common/widgets/texts/sectionHeading.dart';
import 'package:myecommerceapp/utilities/constants/colors.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';
import 'package:myecommerceapp/utilities/helper/helper_fuction.dart';

class pProduct_attribute extends StatelessWidget {
  const pProduct_attribute({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = phelperfuction.isDarkMode(context);
    return Column(
      children: [
        pRoundedContainer(
          padding: EdgeInsets.all(psizes.md),
          backgroundColor: dark ? pcolors.darkergrey : pcolors.lightgrey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  psectionheading(title: 'Variation ', showtxtbtn: false),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          pproductTitle(
                            title: 'Price  ',
                          ),
                          pProductPrice(
                            currencysign: '\$',
                            price: '780',
                            lineThrough: true,
                            issmall: true,
                          ),
                          SizedBox(width: psizes.spacebtnitem / 2),
                          pProductPrice(
                              currencysign: '\$', price: '750', isLarge: true)
                        ],
                      ),
                      SizedBox(height: psizes.spacebtnitem / 2),
                      Row(
                        children: [
                          Text('Status '),
                          SizedBox(width: psizes.spacebtnitem / 2.5),
                          pproductTitle(title: 'Available ', larzesize: true),
                        ],
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: psizes.spacebtnitem / 1.5,
              ),
              pproductTitle(title: ' iPhone 12 a Product of Apple ')
            ],
          ),
        ),
        SizedBox(height: psizes.spacebtnitem),

        //attributes colors ...
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            psectionheading(title: 'Colors ', showtxtbtn: false),
            SizedBox(height: psizes.spacebtnitem),
            Wrap(
              children: [
                pChoiceChip(text: 'red', selected: true, onselected: (v) {}),
                pChoiceChip(text: 'black', selected: false, onselected: (v) {}),
                pChoiceChip(text: 'pink', selected: false, onselected: (v) {}),
              ],
            ),
          ],
        ),
        //attributes sizes ...
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            psectionheading(title: 'Sizes ', showtxtbtn: false),
            SizedBox(height: psizes.spacebtnitem),
            Wrap(
              children: [
                pChoiceChip(text: '128', selected: false, onselected: (v) {}),
                SizedBox(width: psizes.spacebtnitem),
                pChoiceChip(text: '256', selected: false, onselected: (v) {}),
                SizedBox(width: psizes.spacebtnitem),
                pChoiceChip(text: '512', selected: true, onselected: (v) {}),
              ],
            )
          ],
        ),
      ],
    );
  }
}
