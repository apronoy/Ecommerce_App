import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class HomeControler extends GetxController {
  static HomeControler get instance => Get.find();

  // variable
  final carouselcontroller = CarouselSliderController();
  RxInt currentIndex = 0.obs;

  void onPageChg(index) {
    currentIndex.value = index;
  }
}
