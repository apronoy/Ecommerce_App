import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:myecommerceapp/features/authentication/screens/login/login.dart';
import 'package:myecommerceapp/features/authentication/screens/onboarding/onboarding.dart';
import 'package:myecommerceapp/features/authentication/screens/signup/widgets/verify_email.dart';
import 'package:myecommerceapp/navigation_menu.dart';
import 'package:myecommerceapp/utilities/exceptions/firebase_auth_exceptions.dart';
import 'package:myecommerceapp/utilities/exceptions/firebase_exception.dart';
import 'package:myecommerceapp/utilities/exceptions/format_exceptions.dart';
import 'package:myecommerceapp/utilities/exceptions/platfrom_exceptions.dart';

class Authenticationrepo extends GetxController {
  //create instance .. 
  static Authenticationrepo get instance => Get.find();

  // firebase stored in _auth variable .. 
  final _auth = FirebaseAuth.instance;
 
//  Getstorage stored in localStorage 
  final localStorage = GetStorage();

  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenredirect();
  }

// function to redirect to the right screen ..
  void screenredirect() {
    final user = _auth.currentUser;
    // Check user register or first time or not verified
    if (user != null) {
      if (user.emailVerified) {
        // if verified go to navigation menu
        Get.offAll(() =>const navigationmenu());
      } else {
        // if not  verified go to verification screen

        Get.offAll(() => verifyemailscreen(email: user.email));
      }
    } else {
      // check first time or not . 
      localStorage.writeIfNull('IfFirstTime', true);
      localStorage.read('IfFirstTime') != true
          ? Get.off(() => const loginscreen())
          : Get.off(() => const onboardingscreen());
    }
  }

  // User create  with email and password ..
  Future<UserCredential> registerUser(String email, password) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw PFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw PFirebaseException(e.code).message;
    } on FormatException catch (e) {
      throw PFormatException(e.message);
    } on PlatformException catch (e) {
      throw PplatformException(e.code).message;
    } catch (e) {
      throw ' Something went worng , please try again .';
    }
  }

  // Authentication with email and password ..
  Future<UserCredential> signInWithEmailAndPassword(
      String email, password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw PFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw PFirebaseException(e.code).message;
    } on FormatException catch (e) {
      throw PFormatException(e.message);
    } on PlatformException catch (e) {
      throw PplatformException(e.code).message;
    } catch (e) {
      throw ' Something went worng , please try again .';
    }
  }

  // Sign in with Google ....
  Future<UserCredential> signInwithGoogle() async {
    try {
      // show popup to select google account ..
      final GoogleSignInAccount? googleAccount = await GoogleSignIn().signIn();

      // Get auth from the request  ..

      final GoogleSignInAuthentication? googleAuth =
          await googleAccount?.authentication;

      // create cradintials ...
      final OAuthCredential credential = GoogleAuthProvider.credential(
          idToken: googleAuth?.idToken, accessToken: googleAuth?.accessToken);

      // sign in with google cradentials ...

      UserCredential userCredential =
          await _auth.signInWithCredential(credential);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw PFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw PFirebaseException(e.code).message;
    } on FormatException catch (e) {
      throw PFormatException(e.message);
    } on PlatformException catch (e) {
      throw PplatformException(e.code).message;
    } catch (e) {
      throw ' Something went worng , please try again .';
    }
  }

//verification email sent ..
  Future<void> sendEmailverification() async {
    try {
      await _auth.currentUser!.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      throw PFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw PFirebaseException(e.code).message;
    } on FormatException catch (e) {
      throw PFormatException(e.message);
    } on PlatformException catch (e) {
      throw PplatformException(e.code).message;
    } catch (e) {
      throw ' Something went worng , please try again .';
    }
  }

  // SentEmailForResetpassword..
  Future<void> sentEmailResetPassword(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      throw PFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw PFirebaseException(e.code).message;
    } on FormatException catch (e) {
      throw PFormatException(e.message);
    } on PlatformException catch (e) {
      throw PplatformException(e.code).message;
    } catch (e) {
      throw ' Something went worng , please try again .';
    }
  }

// logout from firebase and go to login screen screen...
  Future<void> logout() async {
    try {
      await _auth.signOut();
      await GoogleSignIn().signOut();
      Get.offAll(() => loginscreen());

      return;
    } on FirebaseAuthException catch (e) {
      throw PFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw PFirebaseException(e.code).message;
    } on FormatException catch (e) {
      throw PFormatException(e.message);
    } on PlatformException catch (e) {
      throw PplatformException(e.code).message;
    } catch (e) {
      throw ' Something went worng , please try again .';
    }
  }
}
