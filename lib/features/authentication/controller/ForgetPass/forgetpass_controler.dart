import 'package:flutter/material.dart';
import 'package:get/get.dart';
 import 'package:myecommerceapp/data/repo/auth_repo.dart';
import 'package:myecommerceapp/features/authentication/screens/forgetPassword/resetpass.dart';
import 'package:myecommerceapp/utilities/helper/network_manager.dart';
import 'package:myecommerceapp/utilities/popups/full_screen_loader.dart';
import 'package:myecommerceapp/utilities/popups/snackbar_helpers.dart';

class ForgetpassControler extends GetxController {
  static ForgetpassControler get instance => Get.find();

  // variable ..

  final email = TextEditingController();
  final forgetpasskey = GlobalKey<FormState>();

  // sent email to forget password ..
  Future<void> sendPasswordResetEmail() async {
    try {
      //start loading ..
      PfullscreenLoader.openLoadingDialog('Request Proccecing ...');
      // network connectivity ..
      bool isNetWork = await NetworkManager.instance.isConnected();
      if (!isNetWork) {
        PfullscreenLoader.stopLoading();
        PsnakbarHelper.warningSnakBar(title: 'Network not Connected !! ');
        return;
      }
      //form validation ..
      if (!forgetpasskey.currentState!.validate()) {
        PfullscreenLoader.stopLoading();
        return;
      }
      // send link email  to reset password .

      Authenticationrepo.instance.sentEmailResetPassword(email.text);

      // stop loading.. 
      PfullscreenLoader.stopLoading();
      //  successscreen
      PsnakbarHelper.successSnackBar(
          title: 'Email Send ',
          message: 'Email Sent on your mail for Reset password ');

      // redirect page
      Get.to(() =>   resetpassscreen(email: email.text.trim()));
    } catch (e) {
      PfullscreenLoader.stopLoading();
      //  successscreen
      PsnakbarHelper.errorSnackBar(title: 'Error  !!', message: e.toString());
    }
  }

  // email resent to reset password .. 

  Future<void> reSendPasswordResetEmail() async {
    try {
      //start loading ..
      PfullscreenLoader.openLoadingDialog('Request Proccecing ...');
      // network connectivity ..
      bool isNetWork = await NetworkManager.instance.isConnected();
      if (!isNetWork) {
        PfullscreenLoader.stopLoading();
        PsnakbarHelper.warningSnakBar(title: 'Network not Connected !! ');
        return;
      }
 
      // send email to reset password .
       Authenticationrepo.instance.sentEmailResetPassword(email.text);

      // stop loading.. 
      PfullscreenLoader.stopLoading();
      //  successscreen
      PsnakbarHelper.successSnackBar(
          title: 'Email Send ',
          message: 'Email Sent on your mail for Reset password ');

     } catch (e) {
      PfullscreenLoader.stopLoading();
      //  successscreen
      PsnakbarHelper.errorSnackBar(title: 'Error  !!', message: e.toString());
    }
  }
}
