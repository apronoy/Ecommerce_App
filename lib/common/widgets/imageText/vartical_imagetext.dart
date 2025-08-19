 import 'package:flutter/material.dart';
import 'package:myecommerceapp/common/widgets/custom_shaps/circuler_container.dart';
import 'package:myecommerceapp/utilities/constants/colors.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';

import '../../../utilities/helper/helper_fuction.dart';

class pcatagoriesImageAndTitle extends StatelessWidget {
  const pcatagoriesImageAndTitle({
    super.key,
    required this.title,
    required this.image,
    required this.textColor,
    this.Backgroundcolor,
    this.ontap,
  });
  final String title, image;
  final Color textColor;
  final Color? Backgroundcolor;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    bool dark = phelperfuction.isDarkMode(context);
    return GestureDetector(
      onTap: ontap,
      child: Column(
        children: [
          // circuler image
          pcircular_container(
            hight: 57,
            width: 57,
            padding: EdgeInsets.all(psizes.sm),
            backgroundcolor:
                Backgroundcolor ?? (dark ? pcolors.black : pcolors.white),
            child: Image(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: psizes.spacebtnitem / 3),

          // Title
          SizedBox(
            width: 57,
            child: Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: textColor),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
