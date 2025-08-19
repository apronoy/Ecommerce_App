  import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myecommerceapp/common/widgets/custom_shaps/rounded_container.dart';
import 'package:myecommerceapp/utilities/constants/colors.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';

class single_address_tile extends StatelessWidget {
  const single_address_tile({
    super.key,
    required this.isselected,
  });

  final bool isselected;
  @override
  Widget build(BuildContext context) {
    return pRoundedContainer(
      width: double.infinity,
      backgroundColor:
          isselected ? pcolors.primary.withOpacity(.5) : pcolors.lightgrey,
      darkbackgroundColor:
          isselected ? pcolors.primary.withOpacity(.5) : pcolors.darkergrey,
      padding: EdgeInsets.all(psizes.defaultspace / 2),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(' Pronoy Sarkar ',
                  style: Theme.of(context).textTheme.headlineSmall),
              SizedBox(height: psizes.spacebtnitem),
              Text('+88 01846624175 ',
                  style: Theme.of(context).textTheme.bodyLarge),
              SizedBox(height: psizes.spacebtnitem),
              Text('Mohipal 32B Gangchil,Feni,Bangladesh ',
                  style: Theme.of(context).textTheme.bodyLarge),
            ],
          ),
          if (isselected)
            Positioned(
                top: 0, bottom: 0, right: 7, child: Icon(Iconsax.tick_circle5))
        ],
      ),
    );
  }
}
