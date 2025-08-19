import 'package:carousel_slider/carousel_slider.dart';
 import 'package:flutter/material.dart';
import 'package:myecommerceapp/common/widgets/images/bannarImages.dart';
import 'package:myecommerceapp/features/shop/controler/home/home_controler.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';

import 'bannarsdotnavigator.dart';

class promoSlider extends StatelessWidget {
  const promoSlider({
    super.key,
     required this.banners,
  });

  final List<String> banners;
  @override
  Widget build(BuildContext context) {
    final controller=HomeControler.instance;
    return Column(
      children: [
        // this is carouselslider..
        CarouselSlider( 
          items:banners.map((banner) =>pRoundedBImage(imageUrl: banner)).toList(),
           options: CarouselOptions(viewportFraction: 1.0 ,onPageChanged: (index, reason) => controller.onPageChg(index)),
          
        carouselController: controller.carouselcontroller,
 ),

        SizedBox(height: psizes.spacebtnitem),
        // banar Indicator ..
        bannernavigation()
      ],
    );
  }
}
