 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myecommerceapp/common/styles/padding.dart';
import 'package:myecommerceapp/common/widgets/appbar/appbar.dart';
import 'package:myecommerceapp/features/personalization/screens/address/add_address.dart';
import 'package:myecommerceapp/features/personalization/screens/address/widgets/singleAddressTile.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';

class Address extends StatelessWidget {
  const Address({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // .......appbar.....
        appBar: PappBar(
          showBackarrow: true,
          title: Text(
            'Address',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        // .......body.....
        body: SingleChildScrollView(
          child: Padding(
            padding: pPadding.screenPadding,
            child: Column(
              children: [
                single_address_tile(isselected: true),
                SizedBox(height: psizes.spacebtnitem),
                single_address_tile(isselected: false),
                SizedBox(height: psizes.spacebtnitem),
                single_address_tile(isselected: false),
                SizedBox(height: psizes.spacebtnitem),
                single_address_tile(isselected: false),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              Get.to(() => Add_address());
            },
            child: Icon(Iconsax.add)));
  }
}
