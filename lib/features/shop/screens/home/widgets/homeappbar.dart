 import 'package:flutter/material.dart';
import 'package:myecommerceapp/common/widgets/appbar/appbar.dart';
import 'package:myecommerceapp/common/widgets/products/cart/cartCounter.dart';
import 'package:myecommerceapp/utilities/constants/colors.dart';
import 'package:myecommerceapp/utilities/constants/texts.dart';

class PhoneAppbar extends StatelessWidget {
  const PhoneAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PappBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // This is Grettings of appBar ..
          Text(ptexts.homeappbartitle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: pcolors.grey)),
          // This is Titile of appBar ..

          Text(ptexts.homeappBarSubtitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: pcolors.white)),
        ],
      ),

      // actions
      actions: [cartcounterIcon()],
    );
  }
}
