 import 'package:flutter/material.dart';
import 'package:myecommerceapp/utilities/constants/enums.dart';

class pBrandName extends StatelessWidget {
  const pBrandName({
    super.key,
    required this.title,
    this.color,
    this.maxlines = 1,
    this.textAlign=TextAlign.center,
      this.brandTextsize=TextSizes.samll,
  });

  final String title;
  final Color? color;
  final int maxlines;
  final TextAlign? textAlign;
  final TextSizes brandTextsize;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        textAlign: textAlign,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: brandTextsize == TextSizes.samll
            ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
            : brandTextsize == TextSizes.medium
                ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
                : brandTextsize == TextSizes.large
                    ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
                    : Theme.of(context).textTheme.bodyMedium!.apply(color: color));
  }
}
