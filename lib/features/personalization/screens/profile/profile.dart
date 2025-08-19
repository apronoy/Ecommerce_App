import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myecommerceapp/common/widgets/texts/sectionHeading.dart';
import 'package:myecommerceapp/data/repo/auth_repo.dart';
import 'package:myecommerceapp/features/personalization/screens/address/address.dart';
import 'package:myecommerceapp/features/personalization/screens/profile/widgets/profile_info.dart';
import 'package:myecommerceapp/features/personalization/screens/profile/widgets/profile_primary_header.dart';
import 'package:myecommerceapp/features/personalization/screens/profile/widgets/settings_tile.dart';
import 'package:myecommerceapp/features/shop/screens/Order/order.dart';
import 'package:myecommerceapp/features/shop/screens/cart/cart.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class Myprofile extends StatelessWidget {
 const Myprofile({super.key});

  @override
  Widget build(BuildContext context) { 
     final controler = Authenticationrepo.instance;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Profile header..
            Profile_primary_header(),

            //Profile body part ..
            Padding(
              padding: const EdgeInsets.all(psizes.defaultspace),
              child: Column(
                children: [
                  profile_tile(),
                  SizedBox(height: psizes.spacebtnitem),
                  psectionheading(title: 'Account Settings', showtxtbtn: false),
                  SizedBox(height: psizes.spacebtnitem),
                  // address section
                  settings_tile(
                    onTap: () {
                      Get.to(() => Address());
                    },
                    title: 'My Address ',
                    subtitle: 'Set Shopping Delivery Address ',
                    icon: Iconsax.safe_home,
                  ),
                  // Cart section
                  settings_tile(
                    onTap: () => Get.to(() => Cart()),
                    title: 'My Cart ',
                    subtitle: 'Add or remove products and move to checkout',
                    icon: Iconsax.shopping_cart,
                  ),
                  // MyOrder section
                  settings_tile(
                    onTap: () => Get.to(() => order()),
                    title: 'My Order ',
                    subtitle: 'In Progress and Completed Orders ',
                    icon: Iconsax.bag_tick,
                  ),
                  SizedBox(height: psizes.spacebtnsection),

                  // LogOut button
                  SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                          onPressed: controler.logout, child: Text('Logout'))),
                  SizedBox(height: psizes.spacebtnsection),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
