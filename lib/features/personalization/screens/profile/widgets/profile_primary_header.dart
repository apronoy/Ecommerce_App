 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 import 'package:myecommerceapp/common/widgets/appbar/appbar.dart';
import 'package:myecommerceapp/common/widgets/custom_shaps/pPrimayHeader.dart';
import 'package:myecommerceapp/common/widgets/images/profile_logo.dart';
import 'package:myecommerceapp/utilities/constants/colors.dart';
 import 'package:myecommerceapp/utilities/constants/sizes.dart';
 
class Profile_primary_header extends StatelessWidget {
  const Profile_primary_header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(height: psizes.profileprimaryHeaderheight + 60),
        pPrimaryHeaderContainer(
            child: PappBar(
                title: Text(
              'Profile',
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(color: pcolors.light),
            )),
            height: psizes.profileprimaryHeaderheight),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Center(
            child: profile_logo(),
          ),
        )
      ],
    );
  }
}
