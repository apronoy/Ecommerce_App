  import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myecommerceapp/features/shop/controler/home/home_controler.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class bannernavigation extends StatelessWidget {
  const bannernavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = HomeControler.instance;

    return Obx(
      () => SmoothPageIndicator(
        count: 5,
        effect: ExpandingDotsEffect(dotHeight: 5.0),
        controller: PageController(initialPage: controller.currentIndex.value),
      ),
    );
  }
}
