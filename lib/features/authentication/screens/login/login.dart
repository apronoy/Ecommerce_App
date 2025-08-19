import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myecommerceapp/common/styles/padding.dart';
import 'package:myecommerceapp/common/widgets/appbar/appbar.dart';
import 'package:myecommerceapp/common/widgets/buttons/loginsocial.dart';
import 'package:myecommerceapp/common/widgets/loginsignup/logindivider.dart';
import 'package:myecommerceapp/features/authentication/controller/login/login_controller.dart';
import 'package:myecommerceapp/features/authentication/screens/login/widgets/loginform.dart';
import 'package:myecommerceapp/features/authentication/screens/login/widgets/loginrepass.dart';
import 'package:myecommerceapp/features/authentication/screens/login/widgets/loginsign.dart';
import 'package:myecommerceapp/features/authentication/screens/login/widgets/logintitle.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';
import 'package:myecommerceapp/utilities/constants/texts.dart';
 
class loginscreen extends StatelessWidget {
  const loginscreen({super.key});
  @override
  Widget build(BuildContext context) {
    final controler = Get.put(LoginController());
    
     return Scaffold(
      appBar: PappBar(showBackarrow: false),
      body: SingleChildScrollView(
        child: Padding(
          padding: pPadding.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ///title and subtitle
              titleansubtitle(),

              SizedBox(height: psizes.spacebtnsection),

              ///form
              form(),

              SizedBox(height: psizes.spacebtnInputFields / 2),

              //Rememberme and ForgetPassword
              RememberAndForgetpassword(),

              SizedBox(height: psizes.spacebtnsection),

              //SingIn Button
              SigninAndCreateAccount(),

              SizedBox(height: psizes.spacebtnsection),

              ///divider
              divider(
                title: ptexts.orsigninWith,
              ),
              SizedBox(
                height: psizes.spacebtnsection,
              ),

              ///social platfrom
              socialplatform()
            ],
          ),
        ),
      ),
    );
  }
}
