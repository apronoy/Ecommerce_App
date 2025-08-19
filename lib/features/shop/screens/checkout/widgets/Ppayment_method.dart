 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myecommerceapp/common/widgets/texts/sectionHeading.dart';
import 'package:myecommerceapp/utilities/constants/imagas.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';

class Ppayment_method extends StatelessWidget {
  const Ppayment_method({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      psectionheading(
        title: 'Payment Getway',
        btntitle: 'Change',
        onpressed: () {},
      ),
      SizedBox(height: psizes.spacebtnitem / 2),
      Row(children: [
        SizedBox(width: 20),
        SizedBox(
            height: 30, child: Image(image: AssetImage(pimages.google_pay))),
        SizedBox(width: 15),
        Text(' Google Pay', style: Theme.of(context).textTheme.bodyLarge)
      ])
    ]);
  }
}
