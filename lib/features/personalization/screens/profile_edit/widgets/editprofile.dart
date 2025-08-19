 import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myecommerceapp/features/personalization/screens/profile_edit/widgets/edit_profile_image.dart';

import '../../../../../common/widgets/icons/circular_icon.dart';

class editProfile extends StatelessWidget {
  const editProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(child: profile_edit_image()),
        Positioned(
            top: 30,
            left: 0,
            right: 0,
            child: Center(
                child: pcircularIcon(
              onpressed: () {},
              icon: Iconsax.edit,
              size: 30,
            )))
      ],
    );
  }
}
