 import 'package:flutter/material.dart';
import 'package:myecommerceapp/utilities/helper/helper_fuction.dart';
import 'package:shimmer/shimmer.dart';

import '../../../utilities/constants/colors.dart';

class Pshimmereffect extends StatelessWidget {
  const Pshimmereffect(
      {super.key,
      required this.height,
      required this.width,
      this.radius = 15,
      this.color});
  final double height, width, radius;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final dark = phelperfuction.isDarkMode(context);

    return Shimmer.fromColors(
      baseColor: dark ? Colors.grey[850]! : Colors.grey[350]!,
      highlightColor: dark ? Colors.grey[700]! : Colors.grey[100]!,
      child: Container( 
        
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: color ?? (dark ? pcolors.darkergrey : pcolors.white),
            borderRadius: BorderRadius.circular(radius)),
      ),
    );
  }
}
