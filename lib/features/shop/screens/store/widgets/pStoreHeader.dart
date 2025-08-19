 import 'package:flutter/material.dart';
import 'package:myecommerceapp/common/widgets/appbar/appbar.dart';
import 'package:myecommerceapp/common/widgets/custom_shaps/pPrimayHeader.dart';
import 'package:myecommerceapp/common/widgets/searchbar/searchbar.dart';
import 'package:myecommerceapp/utilities/constants/colors.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';

import '../../../../../common/widgets/products/cart/cartCounter.dart';

class PstoreHeader extends StatelessWidget {
  const PstoreHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(height: psizes.storeprimaryHeaderheight + 10),
      //pPrimaryHearderContainer...
      pPrimaryHeaderContainer(
          height: psizes.storeprimaryHeaderheight,
          child: PappBar(
            title: Text(
              'Store',
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .apply(color: pcolors.white),
            ),
            actions: [cartcounterIcon()],
          )),
    
      //Search Bar...
      searchbarsection(),
    ]);
  }
}
