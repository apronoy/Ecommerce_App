import 'dart:ui';

import 'package:flutter/cupertino.dart';

//this is for clipper actions

class pcustomRoundEdge extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    //top to botton line
    Path path = Path();
    path.lineTo(0, size.height - 40);
// first curve
    Offset firstPointcurve1 = Offset(40, size.height);
    Offset secondPointcurve1 = Offset(size.width / 2, size.height);

    path.quadraticBezierTo(firstPointcurve1.dx, firstPointcurve1.dy,
        secondPointcurve1.dx, secondPointcurve1.dy);

    //second curve
    Offset firstPointcurve2 = Offset(size.width - 40, size.height);
    Offset secondPointcurve2 = Offset(size.width, size.height - 30);

    path.quadraticBezierTo(firstPointcurve2.dx, firstPointcurve2.dy,
        secondPointcurve2.dx, secondPointcurve2.dy);

    // bottom to top
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
