import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myecommerceapp/common/styles/padding.dart';
import 'package:myecommerceapp/common/widgets/elevatedbtn.dart';
import 'package:myecommerceapp/features/authentication/controller/ForgetPass/forgetpass_controler.dart';
import 'package:myecommerceapp/features/authentication/screens/forgetPassword/forgetPass.dart';
import 'package:myecommerceapp/features/authentication/screens/login/login.dart';
import 'package:myecommerceapp/utilities/constants/imagas.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';
import 'package:myecommerceapp/utilities/constants/texts.dart';
import 'package:myecommerceapp/utilities/helper/devicehelpers.dart';

class resetpassscreen extends StatelessWidget {
  const resetpassscreen({super.key, required this.email});

  final String email;

  @override
  Widget build(BuildContext context) {
    final controler = ForgetpassControler.instance;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => loginscreen()),
              icon: Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: pPadding.screenPadding,
          child: Column(
            children: [
              //image
              Image(
                image: AssetImage(pimages.mailsentImage),
                height: pdevicehelper.getScreenHeight(context) * 0.35,
              ),
              SizedBox(height: psizes.spacebtnitem),
              //title
              Text(ptexts.forgetEmailSentTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              SizedBox(height: psizes.spacebtnitem),

              //email
              Text(email, style: Theme.of(context).textTheme.bodyLarge),
              SizedBox(height: psizes.spacebtnitem),

              //subtitle
              Text(
                ptexts.forgetEmailSentSubTitle,
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: psizes.spacebtnitem),

              //done
              PElevatedButton(onpressed: () {}, child: Text(ptexts.Done)),
              //resent email
              SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: controler.reSendPasswordResetEmail, child: Text(ptexts.resentemail)))
            ],
          ),
        ),
      ),
    );
  }
}
