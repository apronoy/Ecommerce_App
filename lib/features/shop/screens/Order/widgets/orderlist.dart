  import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myecommerceapp/common/widgets/custom_shaps/rounded_container.dart';
import 'package:myecommerceapp/utilities/constants/colors.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';

class Orderlist extends StatelessWidget {
  const Orderlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(
            itemBuilder: (context, index) => pRoundedContainer(
                  padding: EdgeInsets.all(psizes.sm),
                  showBorder: true,
                  backgroundColor: pcolors.lightwhite,
                  darkbackgroundColor: pcolors.lightblack,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // 1st row ...
                      Row(
                        children: [
                          Icon(Iconsax.ship),
                          SizedBox(width: psizes.spacebtnitem),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Processing',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .apply(color: pcolors.primary),
                              ),
                              Text(
                                '21 june 2025',
                                style:
                                    Theme.of(context).textTheme.headlineSmall,
                              ),
                            ],
                          ),
                          Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Iconsax.arrow_right_14))
                        ],
                      ),

                      SizedBox(height: psizes.spacebtnitem),
                      // row 2
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Iconsax.tag),
                              SizedBox(width: psizes.spacebtnitem),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Order No',
                                    style:
                                        Theme.of(context).textTheme.labelLarge,
                                  ),
                                  Text(
                                    'H258C3',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.date_range),
                              SizedBox(width: psizes.spacebtnitem),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Shipping Date',
                                    style:
                                        Theme.of(context).textTheme.labelLarge,
                                  ),
                                  Text(
                                    '27 june 2025',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall,
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
            separatorBuilder: (context, index) =>
                SizedBox(height: psizes.spacebtnitem),
            itemCount: 15));
  }
}
