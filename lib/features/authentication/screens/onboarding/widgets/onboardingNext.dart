 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myecommerceapp/common/widgets/elevatedbtn.dart';
import 'package:myecommerceapp/features/authentication/controller/onboarding_controler.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';

class onboardingNextButton extends StatelessWidget {
  const onboardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingControler.instance;
    return Positioned(
        left: 0,
        right: 0,
        bottom: psizes.spacebtnitem,
        child: PElevatedButton(
          child: Obx(() => Text(
              controller.currentIndex.value == 2 ? 'Get Started' : 'Next')),
          onpressed: controller.nextPage,
        ));
  }
}
