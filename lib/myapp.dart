import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
 import 'package:myecommerceapp/utilities/constants/colors.dart';
import 'package:myecommerceapp/utilities/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: pApptheme.lightTheme,
      darkTheme: pApptheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home:const Scaffold(
        backgroundColor: pcolors.primary,
        body: Center(
          child: CircularProgressIndicator(color: pcolors.white),
        ),
      ),
    );
  }
}
