 import 'package:flutter/material.dart';
import 'package:myecommerceapp/utilities/constants/colors.dart';
import 'package:myecommerceapp/utilities/helper/devicehelpers.dart';

class PElevatedButton extends StatelessWidget {
  const PElevatedButton({
    super.key,
    required this.onpressed,
    required this.child,
  });

  final VoidCallback onpressed;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: pdevicehelper.getScreenwidth(context),
        child: ElevatedButton(
          onPressed: onpressed,
          child: child,
          style: ElevatedButton.styleFrom(
              side: BorderSide(color: pcolors.primary)),
        ));
  }
}
