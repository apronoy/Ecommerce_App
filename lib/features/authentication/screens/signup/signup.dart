import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myecommerceapp/common/styles/padding.dart';
import 'package:myecommerceapp/common/widgets/buttons/loginsocial.dart';
import 'package:myecommerceapp/common/widgets/loginsignup/logindivider.dart';
import 'package:myecommerceapp/features/authentication/screens/signup/widgets/signupForm.dart';
import 'package:myecommerceapp/features/authentication/controller/signup/signupControler.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';
import 'package:myecommerceapp/utilities/constants/texts.dart';

class signup extends StatelessWidget {
  const signup({super.key});

  @override
  Widget build(BuildContext context) {
    final controler = Get.put(Signupcontroler());
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
              ///[Header].......
              Text(
                ptexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: psizes.spacebtnsection),

              ///[form].........
              signupform(),

              SizedBox(height: psizes.spacebtnsection),

              ///[devider].......
              divider(title: Text(ptexts.orSignupWith)),

              SizedBox(height: psizes.spacebtnsection),

              ///[footer]........
              socialplatform()
            ],
          ),
        ),
      ),
    );
  }
}
