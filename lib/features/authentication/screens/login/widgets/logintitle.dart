 import 'package:flutter/material.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';
import 'package:myecommerceapp/utilities/constants/texts.dart';

class titleansubtitle extends StatelessWidget {
  const titleansubtitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          ptexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(
          height: psizes.sm,
        ),
        Text(
          ptexts.loginSubtitle,
          style: Theme.of(context).textTheme.bodySmall,
        )
      ],
    );
  }
}