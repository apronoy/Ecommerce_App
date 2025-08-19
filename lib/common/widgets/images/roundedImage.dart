import 'package:cached_network_image/cached_network_image.dart';
 import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';

class proundedimage extends StatelessWidget {
  proundedimage(
      {super.key,
      this.height,
      this.width,
      required this.imageUrl,
      this.Padding,
      this.borderRadius=psizes.md,
      this.border,
      this.backgroundColor,
      this.fit=BoxFit.contain,
      this.isNetworkImage=false,
      this.ontap,
      this.applyImageradius=true});

  final double? height, width;
  final String imageUrl;
  final EdgeInsetsGeometry? Padding;
  final double borderRadius;
  final BoxBorder? border;
  final Color? backgroundColor;
  final BoxFit? fit;
  final bool isNetworkImage;
  final VoidCallback? ontap;
  final bool applyImageradius;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: width,
        height: height,
        padding: Padding,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius)
         ),
         child: ClipRRect(
          borderRadius: applyImageradius?BorderRadius.circular(borderRadius):BorderRadius.zero,
          child: isNetworkImage?CachedNetworkImage(imageUrl: imageUrl,errorWidget: (context, url, error) => Icon(Icons.error)):Image(image: AssetImage(imageUrl),fit: fit,)
         ),
      ),
    );
  }
}
