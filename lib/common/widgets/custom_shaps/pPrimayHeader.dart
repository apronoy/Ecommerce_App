 import 'package:flutter/cupertino.dart';
import 'package:myecommerceapp/common/widgets/custom_shaps/circuler_container.dart';
import 'package:myecommerceapp/common/widgets/custom_shaps/clipper/rounded_edge.dart';
import 'package:myecommerceapp/utilities/constants/colors.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';

class pPrimaryHeaderContainer extends StatelessWidget {
  const pPrimaryHeaderContainer({
    super.key,
    required this.child,
    required this.height,
  });

  final Widget child;
  final height;
  @override
  Widget build(BuildContext context) {
    return PRoundedEdgeContainer(
      child: Container(
        height: height,
        color: pcolors.primary,
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -160,
              child: pcircular_container(
                backgroundcolor: pcolors.white.withOpacity(0.1),
                hight: psizes.homeprimaryHeaderheight,
                width: psizes.homeprimaryHeaderheight,
              ),
            ),
            Positioned(
              top: 50,
              right: -250,
              child: pcircular_container(
                backgroundcolor: pcolors.white.withOpacity(0.1),
                hight: psizes.homeprimaryHeaderheight,
                width: psizes.homeprimaryHeaderheight,
              ),
            ),
            child
          ],
        ),
      ),
    );
  }
}
