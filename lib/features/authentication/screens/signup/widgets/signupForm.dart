import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myecommerceapp/common/widgets/elevatedbtn.dart';
import 'package:myecommerceapp/features/authentication/screens/signup/widgets/privacyAndterms.dart';
import 'package:myecommerceapp/features/authentication/controller/signup/signupControler.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';
import 'package:myecommerceapp/utilities/constants/texts.dart';
import 'package:myecommerceapp/utilities/validations.dart/validation.dart';

class signupform extends StatelessWidget {
  const signupform({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controler = Signupcontroler.instance;
    return Form(
      key: controler.signupFormkey,
      child: Column(
        children: [
          //first name and last name row
          Row(
            children: [
              Expanded(
                  child: TextFormField(
                controller: controler.firstname,
                validator: (value) =>
                    PValidator.validateEmptyText('First Name', value),
                decoration: InputDecoration(
                    labelText: ptexts.firstName,
                    prefixIcon: Icon(Iconsax.user)),
              )),
              SizedBox(
                width: psizes.spacebtnInputFields,
              ),
              Expanded(
                  child: TextFormField(
                controller: controler.lastname,
                validator: (value) =>
                    PValidator.validateEmptyText('Second Name', value),
                decoration: InputDecoration(
                    labelText: ptexts.lastName, prefixIcon: Icon(Iconsax.user)),
              )),
            ],
          ),
          SizedBox(height: psizes.spacebtnInputFields),

          //email
          TextFormField(
            controller: controler.email,
            validator: (value) => PValidator.validateEmail(value),
            decoration: InputDecoration(
                labelText: ptexts.email,
                prefixIcon: Icon(Iconsax.direct_right)),
          ),
          SizedBox(height: psizes.spacebtnInputFields),
          //password
          Obx(
            () => TextFormField(
              obscureText: controler.isPassvisible.value,
              controller: controler.password,
              validator: (value) => PValidator.validatePassword(value),
              decoration: InputDecoration(
                  labelText: ptexts.password,
                  prefixIcon: Icon(Iconsax.password_check),
                  suffixIcon: IconButton(
                      onPressed: () => controler.isPassvisible.value =
                          !controler.isPassvisible.value,
                      icon: !controler.isPassvisible.value
                          ? Icon(Iconsax.eye)
                          : Icon(Iconsax.eye_slash))),
            ),
          ),

          SizedBox(height: psizes.spacebtnInputFields),

          //phonenumber
          TextFormField(
            controller: controler.number,
            validator: (value) => PValidator.validatePhoneNumber(value),
            decoration: InputDecoration(
                labelText: ptexts.phoneNumber,
                prefixIcon: Icon(Iconsax.mobile)),
          ),
          SizedBox(height: psizes.spacebtnInputFields),

          //privacyPolicy&termandCondition
          privacyandterms(),

          SizedBox(
            height: psizes.spacebtnsection,
          ),
          //Create Account
          PElevatedButton(
              onpressed: () {
                controler.registerUser();
              },
              child: Text(ptexts.createAccountTitle))
        ],
      ),
    );
  }
}
