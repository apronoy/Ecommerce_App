 import 'package:flutter/material.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';

class pRoundedBImage extends StatelessWidget {
  const pRoundedBImage({
    super.key, 
    this.width,
    this.height,
    required this.imageUrl,
    this.applyImageRadius=true,
    this.border,
   this.backgroundColor ,
    this.fit=BoxFit.contain,
    this.padding,
    this.isNetworkImage=false,
    this.onpressed,
    this.borderRadius=psizes.md,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color? backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onpressed;
  final double borderRadius;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        height: height,
        width: width,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
            borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
            borderRadius: applyImageRadius? BorderRadius.circular(borderRadius):BorderRadius.zero,
            child: Image(
                image: isNetworkImage
                    ? NetworkImage(imageUrl)
                    : AssetImage(imageUrl),
                fit: fit)),
      ),
    );
  }
}