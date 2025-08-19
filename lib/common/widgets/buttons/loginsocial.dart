import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myecommerceapp/features/authentication/controller/login/login_controller.dart';
import 'package:myecommerceapp/utilities/constants/colors.dart';

import '../../../utilities/constants/imagas.dart';
import '../../../utilities/constants/sizes.dart';

class socialplatform extends StatelessWidget {
  const socialplatform({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controler = Get.put(LoginController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // google icon ...
        defaultwidgets(() {
          controler.googleSignIn();
        }, pimages.gooleIcon),
        SizedBox(width: psizes.spacebtnitem),
        // Fackbook icon ..
        defaultwidgets(() {
          print('It is FaceBook');
        }, pimages.facebookIcon),
      ],
    );
  }

  Container defaultwidgets(VoidCallback onpressed, String image) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: pcolors.grey),
            borderRadius: BorderRadius.circular(100)),
        child: IconButton(
            icon: Image(height: psizes.iconLg, image: AssetImage(image)),
            onPressed: onpressed));
  }
}
