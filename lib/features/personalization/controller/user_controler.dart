import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:myecommerceapp/data/repo/user/user_repo.dart';
import 'package:myecommerceapp/features/authentication/models/user_model.dart';
import 'package:myecommerceapp/utilities/popups/snackbar_helpers.dart';

class UserControler extends GetxController {
  static UserControler get instance => Get.find();

  // variable

  final _userrepo = Get.put(UserRepo());
 // function to save the user record ..
  Future<void> saveUserRecord(UserCredential userCredential) async {
    try {
      // convert full name to first name and last name ...
      final nameParts = UserModel.nameParts(userCredential.user!.displayName);
      final username = '${userCredential.user!.displayName}1777';
// creat user model ...
      UserModel userModel = UserModel(
          id: userCredential.user!.uid,
          firstName: nameParts[0],
          lastName: nameParts.length > 1 ? nameParts.sublist(1).join('') : '',
          username: username,
          email: userCredential.user!.email ?? '',
          phoneNumber: userCredential.user!.phoneNumber ?? '',
          profilePicture: userCredential.user!.photoURL ?? '');
// save uesr record ...
      await _userrepo.saveUserRecord(userModel);
    } catch (e) {
      PsnakbarHelper.warningSnakBar(
          title: 'Data not Saved ',
          message: 'Somethings wents wrong , try again ');
    }
  }
}
