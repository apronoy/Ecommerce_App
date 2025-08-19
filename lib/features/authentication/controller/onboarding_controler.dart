import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:myecommerceapp/features/authentication/screens/login/login.dart';

class OnBoardingControler extends GetxController {
  static OnBoardingControler get instance => Get.find();
  final storage = GetStorage();

  /// variable
  final pageController = PageController();
  RxInt currentIndex = 0.obs;

  /// Update current index when page scroll
  void updatePageIndicator(index) {
    currentIndex.value = index;
  }

  /// Jump to Specific dot selected page
  void dotNavigatorClick(index) {
    currentIndex.value = index;
    pageController.jumpToPage(index);
  }

  /// Update current index and jump to the next page
  void nextPage() {
    if (currentIndex.value == 2) {
      storage.write('IfFirstTime', false);
      Get.offAll(() => loginscreen());
      return;
    }
    currentIndex.value++;
    pageController.jumpToPage(currentIndex.value);
  }

  /// Update current index and jump to the last page
  void skipPage() {
    currentIndex.value == 2;
    pageController.jumpToPage(2);
  }
}
