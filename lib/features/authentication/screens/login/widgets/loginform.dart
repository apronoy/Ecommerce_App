import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myecommerceapp/features/authentication/controller/login/login_controller.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';
import 'package:myecommerceapp/utilities/constants/texts.dart';
import 'package:myecommerceapp/utilities/validations.dart/validation.dart';

class form extends StatelessWidget {
  const form({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controler = LoginController.instance;
    return Form(
      key: controler.loginFormkey,
      child: Column(
        children: [
          //email
          TextFormField(
              controller: controler.email,
              validator: (value) => PValidator.validateEmail(value),
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: ptexts.email,
              )),

          SizedBox(height: psizes.spacebtnInputFields),

          //password
          Obx(
            () => TextFormField(
                obscureText: controler.isShowpassword.value,
                controller: controler.password,
                validator: (value) => PValidator.validateEmptyText ("Password", value),
                decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.password_check),
                    labelText: ptexts.password,
                    suffixIcon: IconButton(
                        onPressed: () => controler.isShowpassword.toggle(),
                        icon: Icon(controler.isShowpassword.value
                            ? Iconsax.eye_slash
                            : Iconsax.eye)))),
          )
        ],
      ),
    );
  }
}
