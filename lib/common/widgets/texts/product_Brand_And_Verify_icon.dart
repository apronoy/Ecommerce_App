 import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myecommerceapp/common/widgets/texts/productBrandName.dart';
import 'package:myecommerceapp/utilities/constants/colors.dart';
import 'package:myecommerceapp/utilities/constants/enums.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';

class Pproduct_Name_And_Verify_icon extends StatelessWidget {
  const Pproduct_Name_And_Verify_icon({
    super.key,
    required this.title,
    this.maxlines = 1,
    this.textColor,
    this.iconColor = pcolors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextsize = TextSizes.samll,
  });

  final String title;
  final int maxlines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextsize;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: pBrandName(
            title: title,
            maxlines: maxlines,
            textAlign: textAlign,
            brandTextsize: brandTextsize,
            color: textColor,
          ),
        ),
        SizedBox(width: psizes.xs),
        Icon(Iconsax.verify5, color: pcolors.primary, size: psizes.sm)
      ],
    );
  }
}
