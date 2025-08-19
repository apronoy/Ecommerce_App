import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:myecommerceapp/common/screens/successscreen.dart';
import 'package:myecommerceapp/data/repo/auth_repo.dart';
import 'package:myecommerceapp/utilities/constants/imagas.dart';
import 'package:myecommerceapp/utilities/constants/texts.dart';
import 'package:myecommerceapp/utilities/popups/snackbar_helpers.dart';

class VerifyEmailCon extends GetxController {
  static VerifyEmailCon get instance => Get.find();

  @override
  void onInit() {
    sendEmailVerification();
    setTimerforAutoRedirect();
    super.onInit();
  }

//  sent email verification via link
  Future<void> sendEmailVerification() async {
    try {
      await Authenticationrepo.instance.sendEmailverification();
      PsnakbarHelper.successSnackBar(
          title: 'Email sent',
          message:
              'We sent an email just now . please Checkout for Verification ');
    } catch (e) {
      PsnakbarHelper.errorSnackBar(title: 'Error', message: e.toString());
    }
  }

  void setTimerforAutoRedirect() {
    Timer.periodic(
      Duration(seconds: 1),
      (timer) async {
        await  FirebaseAuth.instance.currentUser?.reload();
        final user = FirebaseAuth.instance.currentUser;
        if (user?.emailVerified ?? false) {
          timer.cancel();
          Get.off(() => successscreen(
              onpressed: () => Authenticationrepo.instance.screenredirect(),
              title: ptexts.createAccountTitle,
              subtitle: ptexts.createAccountsubtitle,
              image: pimages.successs_payment_screen));
        }
      },
    );
  }

// manually check user verified or not 
  Future<void> checkEmailVerificationStatus() async {
    try {
      final currentUser = FirebaseAuth.instance.currentUser;
      if(currentUser!=null&&currentUser.emailVerified){
         Get.off(() => successscreen(
              onpressed: () => Authenticationrepo.instance.screenredirect(),
              title: ptexts.createAccountTitle,
              subtitle: ptexts.createAccountsubtitle,
              image: pimages.successs_payment_screen));
      }
    } catch (e) {}
  }
}
