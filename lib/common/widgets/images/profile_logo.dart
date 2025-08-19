 import 'package:flutter/cupertino.dart';
import 'package:myecommerceapp/common/widgets/images/circularImage.dart';
import 'package:myecommerceapp/utilities/constants/imagas.dart';

class profile_logo extends StatelessWidget {
  const profile_logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return pcircularimage(
      image: pimages.profileImage,
      height: 120,
      width: 120,
      padding: 0,
      borderWidth: 5.0,
    );
  }
}
