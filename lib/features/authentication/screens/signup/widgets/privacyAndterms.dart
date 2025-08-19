import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myecommerceapp/features/authentication/controller/signup/signupControler.dart';
import 'package:myecommerceapp/utilities/constants/colors.dart';
import 'package:myecommerceapp/utilities/constants/texts.dart';
import 'package:myecommerceapp/utilities/helper/helper_fuction.dart';

class privacyandterms extends StatelessWidget {
  const privacyandterms({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Dark = phelperfuction.isDarkMode(context);
    final controler = Signupcontroler.instance;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Obx(
          () => Checkbox(
              value: controler.isAgreePrivacyPolicy.value,
              onChanged: (value) => controler.isAgreePrivacyPolicy.value =
                  !controler.isAgreePrivacyPolicy.value),
        ),
        RichText(
            text: TextSpan(
                style: Theme.of(context).textTheme.bodyMedium,
                children: [
              TextSpan(text: "${ptexts.iAgreeTo}"),
              TextSpan(
                  text: '${ptexts.privacypolicy}',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Dark ? pcolors.white : pcolors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: Dark ? pcolors.white : pcolors.primary)),
              TextSpan(text: " ${ptexts.and} "),
              TextSpan(
                  text: '${ptexts.termsOfuse}',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Dark ? pcolors.white : pcolors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor: Dark ? pcolors.white : pcolors.primary,
                      ))
            ]))
      ],
    );
  }
}
