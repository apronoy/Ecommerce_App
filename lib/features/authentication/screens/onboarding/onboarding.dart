 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myecommerceapp/features/authentication/controller/onboarding_controler.dart';
import 'package:myecommerceapp/features/authentication/screens/onboarding/widgets/onboardingNavigator.dart';
import 'package:myecommerceapp/features/authentication/screens/onboarding/widgets/onboardingNext.dart';
import 'package:myecommerceapp/features/authentication/screens/onboarding/widgets/onboardingSkip.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';
import 'package:myecommerceapp/utilities/constants/texts.dart';

import '../../../../utilities/constants/imagas.dart';
import 'widgets/onboarding_page.dart';

class onboardingscreen extends StatelessWidget {
  const onboardingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: psizes.defaultspace),
        child: Stack(
          children: [
            //Page view ..
            ScrollablePage(),
            //indicator ..
            onboardingNavigator(),
            //Bottom Button ..
            onboardingNextButton(),
            //Skip Button ..
            skipbutton()
          ],
        ),
      ),
    );
  }
}

class ScrollablePage extends StatelessWidget {
  const ScrollablePage({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingControler());
    return PageView(
      controller: controller.pageController,
      onPageChanged: controller.updatePageIndicator,
      children: [
        onboardingPage(
          animation: pimages.onboardingWelcomeAnimation,
          title: ptexts.onBoardingTitle1,
          subtitle: ptexts.onBoardingSubtitle1,
        ),
        onboardingPage(
          animation: pimages.onboardingCartAnimation,
          title: ptexts.onBoardingTitle2,
          subtitle: ptexts.onBoardingSubtitle2,
        ),
        onboardingPage(
          animation: pimages.onboardingDeliveryAnimation,
          title: ptexts.onBoardingTitle3,
          subtitle: ptexts.onBoardingSubtitle3,
        ),
      ],
    );
  }
}
