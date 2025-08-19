 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myecommerceapp/common/styles/padding.dart';
import 'package:myecommerceapp/common/widgets/appbar/appbar.dart';
import 'package:myecommerceapp/common/widgets/custom_shaps/pPrimayHeader.dart';
 import 'package:myecommerceapp/common/widgets/texts/sectionHeading.dart';
import 'package:myecommerceapp/features/personalization/screens/profile_edit/widgets/editprofile.dart';
import 'package:myecommerceapp/features/personalization/screens/profile_edit/widgets/userAcc_details.dart';
import 'package:myecommerceapp/utilities/constants/colors.dart';
  import 'package:myecommerceapp/utilities/constants/sizes.dart';
 import 'package:iconsax/iconsax.dart';
 
class profile_edit extends StatelessWidget {
  const profile_edit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(height: 150),
                pPrimaryHeaderContainer(
                    child: PappBar(
                      title: Text(
                        'Edit Profile',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(color: pcolors.light),
                      ),
                    ),
                    height: psizes.appBarheight + 70)
              ],
            ),
            Padding(
              padding: pPadding.screenPadding,
              child: Column(
                children: [
                  editProfile(),
                  SizedBox(height: psizes.spacebtnsection),
                  Divider(),
                  SizedBox(height: psizes.spacebtnitem),

                  // account_details.....
                  psectionheading(title: 'Account Details', showtxtbtn: false),
                  SizedBox(height: psizes.spacebtnitem / 1.5),
                  UserAcc_Details(
                      label: 'Name', value: 'Pronoy Sarkar', onpressed: () {}),
                  UserAcc_Details(
                      label: 'UserName', value: 'pronoy_17', onpressed: () {}),
                  SizedBox(height: psizes.spacebtnitem),
                  Divider(),
                  SizedBox(height: psizes.spacebtnitem),
                  //personal details ......

                  psectionheading(title: 'Personal Details', showtxtbtn: false),
                  SizedBox(height: psizes.spacebtnitem / 1.5),
                  UserAcc_Details(
                    label: 'User ID',
                    value: '585357',
                    onpressed: () {},
                    icon: Iconsax.copy,
                  ),
                  UserAcc_Details(
                      label: 'Phone', value: '01846624175', onpressed: () {}),
                  UserAcc_Details(
                      label: 'Email',
                      value: 'pronoy17@gmail.com',
                      onpressed: () {}),
                  UserAcc_Details(
                      label: 'Gender', value: 'Male', onpressed: () {}),
                  //space.....
                  SizedBox(height: psizes.spacebtnitem),
                  Divider(),

                  //text button....
                  TextButton(
                      onPressed: () => Get.back(),
                      child: Text(
                        'Close Account ',
                        style: TextStyle(color: pcolors.red),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
