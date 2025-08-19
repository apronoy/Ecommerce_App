 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myecommerceapp/common/widgets/elevatedbtn.dart';
import 'package:myecommerceapp/features/authentication/controller/login/login_controller.dart';
import 'package:myecommerceapp/features/authentication/screens/signup/signup.dart';
import 'package:myecommerceapp/navigation_menu.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';
import 'package:myecommerceapp/utilities/constants/texts.dart';

class SigninAndCreateAccount extends StatelessWidget {
  const SigninAndCreateAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controler=LoginController.instance;
    return Column(
      children: [
        //signin account..
        PElevatedButton(
            onpressed: controler.loginWithEmailandPassword,
            child: Text(ptexts.signIn)),
        SizedBox(
          height: psizes.spacebtnitem / 2,
        ),
        // create account ..
        SizedBox(
          width: double.infinity,
          child: OutlinedButton(
              onPressed: () => Get.to(() => signup()),
              child: Text(ptexts.createAccountTitle)),
        )
      ],
    );
  }
  
 }
