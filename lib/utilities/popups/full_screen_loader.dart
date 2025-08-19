import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myecommerceapp/common/widgets/loaders/animation_loader.dart';
import 'package:myecommerceapp/utilities/constants/colors.dart';
import 'package:myecommerceapp/utilities/helper/helper_fuction.dart';

class PfullscreenLoader {
  static void openLoadingDialog(String text) {
    showDialog(
      context: Get.overlayContext!,
      barrierDismissible: false,
      builder: (context) => PopScope(
          canPop: false,
          child: Container(
            color: phelperfuction.isDarkMode(Get.context!)
                ? pcolors.dark
                : pcolors.white,
            height: double.infinity,
            width: double.infinity,
            child: Column(
              children: [
                // Extra space
                const SizedBox(height: 250),

                // animation
                PanimationLoader(text: text)
              ],
            ),
          )),
    );
  }

  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
