 import 'package:flutter/material.dart';
import 'package:myecommerceapp/common/widgets/images/circularImage.dart';
import 'package:myecommerceapp/utilities/constants/imagas.dart';

class profile_edit_image extends StatelessWidget {
  const profile_edit_image({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return pcircularimage(
      image: pimages.profileImage,
      height: 120,
      width: 120,
    );
  }
}