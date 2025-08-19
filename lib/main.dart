import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get_storage/get_storage.dart';
import 'package:myecommerceapp/data/repo/auth_repo.dart';
import 'package:myecommerceapp/firebase_options.dart';
import 'package:myecommerceapp/myapp.dart';

Future<void> main() async {
//widgets Flutter Binding
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
// Flutter native splash....
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  //GetStorage initialize
 await GetStorage.init();

// firebase initialize..
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) {
    Get.put(Authenticationrepo());
  });

// for always portrait size ..
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const MyApp());
}
