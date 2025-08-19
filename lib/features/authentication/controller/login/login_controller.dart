import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:myecommerceapp/data/repo/auth_repo.dart';
import 'package:myecommerceapp/features/authentication/screens/signup/widgets/verify_email.dart';
import 'package:myecommerceapp/features/personalization/controller/user_controler.dart';
import 'package:myecommerceapp/navigation_menu.dart';
import 'package:myecommerceapp/utilities/constants/keys.dart';
import 'package:myecommerceapp/utilities/helper/network_manager.dart';
import 'package:myecommerceapp/utilities/popups/full_screen_loader.dart';
import 'package:myecommerceapp/utilities/popups/snackbar_helpers.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();
  //variable...
  final _userControler = Get.put(UserControler());
  final email = TextEditingController();
  final password = TextEditingController();
  RxBool isShowpassword = true.obs;
  RxBool isRememberme = false.obs;
  final loginFormkey = GlobalKey<FormState>();
  final localStorage = GetStorage();

  @override
  void onInit() {
    email.text = localStorage.read(Pkeys.remembarEmail) ?? '';
    password.text = localStorage.read(Pkeys.remembarPass) ?? '';
    super.onInit();
  }

  // Function to login with email and password ...

  Future<void> loginWithEmailandPassword() async {
    try {
      // Loading screen ..
      PfullscreenLoader.openLoadingDialog('Loggin you in ...');

      //check internet connectivity.
      bool isconnected = await Get.put(NetworkManager().isConnected());
      if (!isconnected) {
        PfullscreenLoader.stopLoading();
        PsnakbarHelper.warningSnakBar(title: 'No Internet Connected');
        return;
      }
      //from validation ..

      if (!loginFormkey.currentState!.validate()) {
        PfullscreenLoader.stopLoading();
        return;
      }
      // save data if remember mer is checked ....
      if (isRememberme.value) {
        localStorage.write(Pkeys.remembarEmail, email.text.trim());
        localStorage.write(Pkeys.remembarPass, password.text.trim());
      }
      // login with email and password ..
      await Authenticationrepo.instance
          .signInWithEmailAndPassword(email.text.trim(), password.text.trim());

      //stop loading ..
      PfullscreenLoader.stopLoading();

      // screen redirect
      // Get.to(() => verifyemailscreen(email: email.text));
      Get.offAll(() => navigationmenu());
    } catch (e) {
      PfullscreenLoader.stopLoading();
      PsnakbarHelper.errorSnackBar(title: e.toString());
    }
  }

  Future<void> googleSignIn() async {
    try {
// start loading .
      PfullscreenLoader.openLoadingDialog('Logging with google ...');

// check internet connectivity ..
      bool isconnected = await Get.put(NetworkManager().isConnected());
      if (!isconnected) {
        PfullscreenLoader.stopLoading();
        PsnakbarHelper.warningSnakBar(title: ' Internet Lost ');
        return;
      }
      //Google authentication ..
      UserCredential userCredential =
          await Authenticationrepo.instance.signInwithGoogle();

      // Save user record ..
      await _userControler.saveUserRecord(userCredential);
      // Stop loading ..
      PfullscreenLoader.stopLoading();
      //Redirect ..
      Authenticationrepo.instance.screenredirect();
    } catch (e) {
      PfullscreenLoader.stopLoading();
      PsnakbarHelper.errorSnackBar(
          title: 'Log In Failed ', message: e.toString());
    }
  }
}
