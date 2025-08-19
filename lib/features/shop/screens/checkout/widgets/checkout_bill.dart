 import 'package:flutter/material.dart';
import 'package:myecommerceapp/features/shop/screens/checkout/widgets/product_bill.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';

class bill_section extends StatelessWidget {
  const bill_section({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      product_bill(bilname: 'Subtotal', price: '4000', bodylarge: true),
      SizedBox(height: psizes.sm / 2),
      product_bill(bilname: 'Shipping Fees', price: '40', labelarge: true),
      SizedBox(height: psizes.sm / 2),
      product_bill(bilname: 'Tax ', price: '4', labelarge: true),
      SizedBox(height: psizes.spacebtnitem),
      product_bill(
        bilname: 'Total Payment',
        price: '4044',
        headinglarge: true,
      ),
    ]);
  }
}
