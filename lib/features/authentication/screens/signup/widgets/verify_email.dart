import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myecommerceapp/common/styles/padding.dart';
import 'package:myecommerceapp/common/widgets/elevatedbtn.dart';
import 'package:myecommerceapp/data/repo/auth_repo.dart';
import 'package:myecommerceapp/features/authentication/controller/signup/verify_email_con.dart';
import 'package:myecommerceapp/navigation_menu.dart';
import 'package:myecommerceapp/utilities/constants/imagas.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';
import 'package:myecommerceapp/utilities/constants/texts.dart';
import 'package:myecommerceapp/utilities/helper/devicehelpers.dart';

class verifyemailscreen extends StatelessWidget {
  const verifyemailscreen({super.key, this.email});
  final String? email;

  @override
  Widget build(BuildContext context) {
    final controler = Get.put(VerifyEmailCon());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: Authenticationrepo.instance.logout,
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
              Text(ptexts.verifyemailTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              SizedBox(height: psizes.spacebtnitem),

              //email
              Text(email ?? '', style: Theme.of(context).textTheme.bodyLarge),
              SizedBox(height: psizes.spacebtnitem),

              //subtitle

              Text(
                ptexts.verifyemailSubTitle,
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: psizes.spacebtnitem),

              //continue
              PElevatedButton(
                  // onpressed:controler.checkEmailVerificationStatus,
                  onpressed: () {
                    Get.to(navigationmenu());
                  },
                  child: Text(ptexts.pcontinue)),
              //resent email
              SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: controler.sendEmailVerification,
                      child: Text(ptexts.resentemail)))
            ],
          ),
        ),
      ),
    );
  }
}
