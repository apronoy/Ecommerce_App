 import 'package:flutter/cupertino.dart';
import 'package:myecommerceapp/common/widgets/custom_shaps/clipper/custopRn_clipper.dart';

class PRoundedEdgeContainer extends StatelessWidget {
  const PRoundedEdgeContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: pcustomRoundEdge(),
      child: child,
    );
  }
}
