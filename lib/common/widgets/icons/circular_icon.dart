 import 'package:flutter/material.dart';
import 'package:myecommerceapp/utilities/constants/colors.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';

import '../../../utilities/helper/helper_fuction.dart';

class pcircularIcon extends StatelessWidget {
  const pcircularIcon(
      {super.key,
      this.width,
      this.height,
      this.size = psizes.md,
      this.icon,
      this.color,
      this.backgroundColor,
      this.onpressed});

  final double? width, height, size;
  final IconData? icon;
  final Color? color, backgroundColor;
  final VoidCallback? onpressed;
  @override
  Widget build(BuildContext context) {
    final bool dark = phelperfuction.isDarkMode(context);
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: (backgroundColor != null)
              ? backgroundColor
              : dark
                  ? pcolors.dark.withOpacity(0.8)
                  : pcolors.light.withOpacity(0.8),
          borderRadius: BorderRadius.circular(100)),
      child: IconButton(
          onPressed: onpressed, icon: Icon(icon, color: color, size: size)),
    );
  }
}
