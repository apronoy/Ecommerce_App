import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myecommerceapp/data/repo/auth_repo.dart';
import 'package:myecommerceapp/data/repo/user/user_repo.dart';
import 'package:myecommerceapp/features/authentication/models/user_model.dart';
import 'package:myecommerceapp/features/authentication/screens/signup/widgets/verify_email.dart';
import 'package:myecommerceapp/navigation_menu.dart';
import 'package:myecommerceapp/utilities/helper/network_manager.dart';
import 'package:myecommerceapp/utilities/popups/full_screen_loader.dart';
import 'package:myecommerceapp/utilities/popups/snackbar_helpers.dart';

class Signupcontroler extends GetxController {
  static Signupcontroler get instance => Get.find();

  /// variables
  final signupFormkey = GlobalKey<FormState>();
   
    final _authRepo = Get.put(Authenticationrepo());

 
  

  RxBool isPassvisible = true.obs;
  RxBool isAgreePrivacyPolicy = false.obs;

  final firstname = TextEditingController();
  final lastname = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final number = TextEditingController();

  /// Function to register the user with email and password ..
  Future<void> registerUser() async {
    try {
      //start loading ..
      PfullscreenLoader.openLoadingDialog(
          'We are proccencing you information ');

      // internet connectivity ..
      bool isconnected = await Get.put(NetworkManager().isConnected());
      if (!isconnected) {
        PfullscreenLoader.stopLoading();
        PsnakbarHelper.warningSnakBar(title: 'No internet connection');
      }

      // check privacy policy ..
      if (!isAgreePrivacyPolicy.value) {
        PfullscreenLoader.stopLoading();
        PsnakbarHelper.warningSnakBar(
            title: 'Accept Privacy Policy',
            message:
                'To an account you must have to agree with out Privacy Policy');
      }

      //Form Validation ....
      if (!signupFormkey.currentState!.validate()) {
        PfullscreenLoader.stopLoading();
        return;
      }

      // createUserAccount with firebase authentication ...
      UserCredential userCredential =
          await _authRepo.registerUser(email.text.trim(), password.text.trim());
     // create user model ..
      UserModel userModel = UserModel(
          id: userCredential.user!.uid,
          firstName: firstname.text,
          lastName: lastname.text,
          username: '${firstname.text} ${lastname.text}17 ',
          email: email.text.trim(),
          phoneNumber: number.text.trim(),
          profilePicture: '');


//save user record ...
      final userrepo = Get.put(UserRepo());
      await userrepo.saveUserRecord(userModel);

 
  

      // success screen
       PsnakbarHelper.successSnackBar(
          title: 'Congratulations', message: 'You Successfully Create Account');

      // stop loading
      PfullscreenLoader.stopLoading();

      //redirect to verify email screen ...
      // Get.to(() => verifyemailscreen(email:FirebaseAuth.instance.currentUser!.email.toString()));
            Get.offAll(() => navigationmenu());


 
      // reset the global key ....
      signupFormkey.currentState!.reset();

      
    } catch (e) {
      PfullscreenLoader.stopLoading();

      PsnakbarHelper.errorSnackBar(title: 'Error', message: e.toString());
    }
  }
}
