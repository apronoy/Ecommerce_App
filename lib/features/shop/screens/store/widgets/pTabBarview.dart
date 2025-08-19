 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myecommerceapp/features/shop/screens/store/widgets/pCatagoryTab.dart';
import 'package:myecommerceapp/utilities/constants/imagas.dart';
import 'package:myecommerceapp/utilities/constants/texts.dart';

class pTabBarview extends StatelessWidget {
  const pTabBarview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        PcatagoryTab(
            brandImg1: pimages.apple,
            brandImg2: pimages.nike,
            brandTitle1: ptexts.apple,
            brandTitle2: ptexts.nike,
            totalProduct1: 171,
            totalProduct2: 141),
        PcatagoryTab(
            brandImg1: pimages.polo,
            brandImg2: pimages.apple,
            brandTitle1: ptexts.polo,
            brandTitle2: ptexts.apple,
            totalProduct1: 172,
            totalProduct2: 142),
        PcatagoryTab(
            brandImg1: pimages.nike,
            brandImg2: pimages.polo,
            brandTitle1: ptexts.nike,
            brandTitle2: ptexts.polo,
            totalProduct1: 173,
            totalProduct2: 143),
        PcatagoryTab(
            brandImg1: pimages.apple,
            brandImg2: pimages.nike,
            brandTitle1: ptexts.apple,
            brandTitle2: ptexts.nike,
            totalProduct1: 170,
            totalProduct2: 145),
        PcatagoryTab(
            brandImg1: pimages.northStar,
            brandImg2: pimages.polo,
            brandTitle1: ptexts.northster,
            brandTitle2: ptexts.polo,
            totalProduct1: 170,
            totalProduct2: 145),
      ],
    );
  }
}
