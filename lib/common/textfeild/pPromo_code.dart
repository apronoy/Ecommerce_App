 import 'package:flutter/material.dart';
import 'package:myecommerceapp/common/widgets/custom_shaps/rounded_container.dart';
import 'package:myecommerceapp/utilities/constants/colors.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';
import 'package:myecommerceapp/utilities/helper/helper_fuction.dart';

class pPromo_code extends StatelessWidget {
  const pPromo_code({
    super.key,
   });

 
  @override
  Widget build(BuildContext context) {
        bool dark = phelperfuction.isDarkMode(context);

    return pRoundedContainer(
      showBorder: true,
      backgroundColor: pcolors.transparent,
      padding: EdgeInsets.only(
        left: psizes.sm,
        right: psizes.sm,
        top: psizes.xs,
        bottom: psizes.xs,
      ),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: 'Promo code',
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none),
            ),
          ),
          SizedBox(
            width: 80.0,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Apply'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: dark
                      ? pcolors.darkgrey.withOpacity(0.8)
                      : pcolors.darkgrey.withOpacity(0.2),
                  foregroundColor: dark
                      ? pcolors.white.withOpacity(0.8)
                      : pcolors.dark.withOpacity(.8),
                  side: BorderSide(color: pcolors.darkgrey)),
            ),
          ),
        ],
      ),
    );
  }
}
