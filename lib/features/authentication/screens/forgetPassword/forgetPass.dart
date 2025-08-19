import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myecommerceapp/common/styles/padding.dart';
import 'package:myecommerceapp/common/widgets/elevatedbtn.dart';
import 'package:myecommerceapp/features/authentication/controller/ForgetPass/forgetpass_controler.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';
import 'package:myecommerceapp/utilities/constants/texts.dart';
 import 'package:myecommerceapp/utilities/validations.dart/validation.dart';

class forgetpass extends StatelessWidget {
  const forgetpass({super.key});

  @override
  Widget build(BuildContext context) {
    final controler = Get.put(ForgetpassControler());
     return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: pPadding.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //....[Header]....
              //....[title]....
              Text(ptexts.forgetPasswordTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              //....[Subtitle]....
              SizedBox(
                height: psizes.spacebtnitem / 2,
              ),
              Text(
                ptexts.forgetPasswordSubtitle,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              SizedBox(height: psizes.spacebtnsection * 2),
              //....[form]....
              Column(
                children: [
                  Form(
                    key: controler.forgetpasskey,
                    child: TextFormField(
                      controller: controler.email,
                      validator: (value) => PValidator.validateEmail(value),
                      decoration: InputDecoration(
                          labelText: ptexts.email,
                          prefixIcon: Icon(Iconsax.direct_right)),
                    ),
                  ),
                  const SizedBox(height: psizes.spacebtnsection),
                  PElevatedButton(
                      onpressed: controler.sendPasswordResetEmail,
                      child: const Text(ptexts.submit))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
