 import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myecommerceapp/common/widgets/texts/sectionHeading.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';

class Pshipping_address extends StatelessWidget {
  const Pshipping_address({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        psectionheading(
          title: 'Billing Address',
          showtxtbtn: true,
          onpressed: () {},
          btntitle: 'Change',
        ),
        SizedBox(width: psizes.spacebtnitem),
        Row(
          children: [
            Icon(Iconsax.user),
            SizedBox(width: psizes.spacebtnitem),
            Text(
              'Pronoy Sarkar',
              style: Theme.of(context).textTheme.bodyLarge,
            )
          ],
        ),
        SizedBox(height: psizes.spacebtnitem),
        Row(
          children: [
            Icon(Icons.phone),
            SizedBox(width: psizes.spacebtnitem),
            Text(
              '+880 1846624175',
              style: Theme.of(context).textTheme.bodyLarge,
            )
          ],
        ),
        SizedBox(height: psizes.spacebtnitem),
        Row(
          children: [
            Icon(Iconsax.building),
            SizedBox(width: psizes.spacebtnitem),
            Text(
              '22B Gangchil Feni Bangladesh ',
              style: Theme.of(context).textTheme.bodyLarge,
            )
          ],
        ),
        SizedBox(height: psizes.spacebtnitem),
      ],
    );
  }
}
