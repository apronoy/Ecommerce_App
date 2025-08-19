 import 'package:flutter/cupertino.dart';
import 'package:myecommerceapp/utilities/constants/colors.dart';

class pcircular_container extends StatelessWidget {
  const pcircular_container({
    super.key,
    this.hight = 300,
    this.width = 300,
     this.backgroundcolor = pcolors.white,
    this.margin,
    this.padding,
    this.child,
  });

  final double hight, width;
  final Color backgroundcolor;
  final EdgeInsetsGeometry? margin, padding;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: hight,
      width: width,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(1000), color: backgroundcolor),
      child: child,
    );
  }
}
