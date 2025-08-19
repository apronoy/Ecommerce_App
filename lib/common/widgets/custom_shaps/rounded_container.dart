 import 'package:flutter/material.dart';
import 'package:myecommerceapp/utilities/constants/colors.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';
import 'package:myecommerceapp/utilities/helper/helper_fuction.dart';

class pRoundedContainer extends StatelessWidget {
  const pRoundedContainer(
      {super.key,
      this.width,
      this.height,
      this.radius = psizes.cardRadiusLg,
      this.child,
      this.showBorder = false,
      this.borderColor = pcolors.grey,
      this.backgroundColor = pcolors.white,
      this.darkbackgroundColor = pcolors.black,
      this.padding,
      this.margin});

  final double? width, height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor, backgroundColor,darkbackgroundColor;
  final EdgeInsetsGeometry? padding, margin;

  @override
  Widget build(BuildContext context) {
    bool dark = phelperfuction.isDarkMode(context);
    return Container(
      width: width, // default 0
      height: height, // default 0
      padding: padding, // default 0
      margin: margin, // default 0
      decoration: BoxDecoration(
          color: dark ? darkbackgroundColor : backgroundColor, // default white
          borderRadius: BorderRadius.circular(radius),
          // default 16, which is card radius large
          border: showBorder /*false*/
              ? Border.all(color: borderColor)
              : null // white color default
          ),
      child: child,
    );
  }
}
