import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myecommerceapp/features/authentication/controller/login/login_controller.dart';
import 'package:myecommerceapp/features/authentication/screens/forgetPassword/forgetPass.dart';
import 'package:myecommerceapp/utilities/constants/texts.dart';

class RememberAndForgetpassword extends StatelessWidget {
  const RememberAndForgetpassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controler = LoginController.instance;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // remember me
        Row(
          children: [
            Obx(
              () => Checkbox(
                  value: controler.isRememberme.value,
                  onChanged: (value) => controler.isRememberme.toggle()),
            ),
            Text(ptexts.rememberMe)
          ],
        ),
        //forget password
        TextButton(
            onPressed: () => Get.to(() => forgetpass()),
            child: Text(ptexts.forgetpassword))
      ],
    );
  }
}
