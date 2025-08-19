import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:myecommerceapp/features/authentication/models/user_model.dart';
import 'package:myecommerceapp/utilities/constants/keys.dart';
import 'package:myecommerceapp/utilities/exceptions/firebase_auth_exceptions.dart';
import 'package:myecommerceapp/utilities/exceptions/firebase_exception.dart';
import 'package:myecommerceapp/utilities/exceptions/format_exceptions.dart';
import 'package:myecommerceapp/utilities/exceptions/platfrom_exceptions.dart';

class UserRepo extends GetxController {
  static UserRepo get instance => Get.find();

  //variables
  final _db = FirebaseFirestore.instance;

  // function to store user data
  Future<void> saveUserRecord(UserModel user) async {
    try {
     await _db.collection(Pkeys.userCollection).doc(user.id).set(user.toJson());

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
