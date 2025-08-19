import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:myecommerceapp/utilities/constants/colors.dart';
import 'package:myecommerceapp/utilities/constants/imagas.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';

class PanimationLoader extends StatelessWidget {
  final String text;
  final String animation;
  final bool showActionButton;
  final String? actionText;
  final VoidCallback? onactionPressed;

  const PanimationLoader(
      {super.key,
      required this.text,
        this.animation=pimages.loadingAnimation,
        this.showActionButton=false,
      this.actionText,
      this.onactionPressed});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //animation 
          Lottie.asset(animation,width: Get.width*0.8),
          const SizedBox(height: psizes.defaultspace),

          //title
          Text(text,style: Theme.of(context).textTheme.bodyMedium,textAlign: TextAlign.center),
          const SizedBox(height: psizes.defaultspace),

          showActionButton?SizedBox(width: 250,child: OutlinedButton(onPressed: onactionPressed, child:Text(actionText!,style: Theme.of(context).textTheme.bodyMedium!.apply(color: pcolors.light))),):SizedBox()
        ],
      ),
    );
  }
}
