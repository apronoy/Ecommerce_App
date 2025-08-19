import 'package:cached_network_image/cached_network_image.dart';
 import 'package:flutter/material.dart';
import 'package:myecommerceapp/common/widgets/shimmer/shimmer_effect.dart';
import 'package:myecommerceapp/utilities/constants/colors.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';
import 'package:myecommerceapp/utilities/helper/helper_fuction.dart';

class pcircularimage extends StatelessWidget {
  pcircularimage(
      {super.key,
      this.fit = BoxFit.cover,
      required this.image,
      this.isNetworkImage = false,
      this.overlaycolor,
      this.backgroundColor,
      this.width = 56,
      this.height = 56,
      this.padding = psizes.sm,
      this.showborder = false,
      this.borderColor = pcolors.primary,
      this.borderWidth = 1.0});
  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlaycolor;
  final Color? backgroundColor;
  final double width, height, padding;
  final bool showborder;
  final Color borderColor;
  final double borderWidth;
  @override
  Widget build(BuildContext context) {
    final bool dark = phelperfuction.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          color: backgroundColor ?? (dark ? pcolors.dark : pcolors.light),
          borderRadius: BorderRadius.circular(100),
          border: showborder
              ? Border.all(color: borderColor, width: borderWidth)
              : null),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: isNetworkImage
            ? CachedNetworkImage(
                imageUrl: image,
                fit: fit,
                color: overlaycolor,
                progressIndicatorBuilder: (context, url, progress) =>
                    Pshimmereffect(height: 55, width: 55),
                errorWidget: (context, url, error) => Icon(Icons.error))
            : Image(image: AssetImage(image), fit: fit),
      ),
    );
  }
}
