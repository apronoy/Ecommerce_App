 import 'package:flutter/material.dart';
import 'package:myecommerceapp/features/authentication/controller/onboarding_controler.dart';
import 'package:myecommerceapp/utilities/helper/devicehelpers.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onboardingNavigator extends StatelessWidget {
  const onboardingNavigator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingControler.instance;
    return Positioned(
        bottom: pdevicehelper.getBottomNavigationBarheight() * 4.5,
        left: pdevicehelper.getScreenwidth(context) / 3,
        right: pdevicehelper.getScreenwidth(context) / 3,
        child: SmoothPageIndicator(
          controller:controller.pageController,
          onDotClicked: controller.dotNavigatorClick,
          count: 3,
          effect: ExpandingDotsEffect(dotHeight: 5.0),
        ));
  }
}
