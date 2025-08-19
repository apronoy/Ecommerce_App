 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myecommerceapp/features/authentication/controller/onboarding_controler.dart';
import 'package:myecommerceapp/utilities/helper/devicehelpers.dart';

class skipbutton extends StatelessWidget {
  const skipbutton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingControler.instance;

    return Obx(
      () => controller.currentIndex.value == 2
          ? SizedBox()
          : Positioned(
              top: pdevicehelper.getAppbarheight(),
              right: 0,
              child: TextButton(
                  onPressed: controller.skipPage, child: Text('Skip'))),
    );
  }
}
