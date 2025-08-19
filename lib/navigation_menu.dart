 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myecommerceapp/features/personalization/screens/profile/profile.dart';
import 'package:myecommerceapp/features/shop/screens/home/home.dart';
import 'package:myecommerceapp/features/shop/screens/store/store.dart';
import 'package:myecommerceapp/features/shop/screens/wishlist/wishlist.dart';
import 'package:myecommerceapp/utilities/constants/colors.dart';
import 'package:myecommerceapp/utilities/helper/helper_fuction.dart';

class navigationmenu extends StatelessWidget {
  const navigationmenu({super.key});
  @override
  Widget build(BuildContext context) {
    bool Dark = phelperfuction.isDarkMode(context);
    final controller = Get.put(navigationController());

    return Scaffold(
      body: Obx(() => controller.screens[controller.selectind.value]),
      bottomNavigationBar: Obx(
        () => NavigationBar(
            elevation: 0,
            backgroundColor: Dark ? pcolors.dark : pcolors.light,
            indicatorColor: Dark
                ? pcolors.light.withOpacity(0.2)
                : pcolors.black.withOpacity(0.1),
            selectedIndex: controller.selectind.value,
            onDestinationSelected: (value) {
              controller.selectind.value = value;
            },
            destinations: const [
              NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
              NavigationDestination(icon: Icon(Iconsax.shop), label: 'Shop'),
              NavigationDestination(
                  icon: Icon(Iconsax.heart), label: 'Wishlist'),
              NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
            ]),
      ),
    );
  }
}

class navigationController extends GetxController {
  static navigationController get instance => Get.find();
  RxInt selectind = 0.obs;
  List<Widget> screens = [homescreen(), Store(), Wishlist(), Myprofile( )];
}
