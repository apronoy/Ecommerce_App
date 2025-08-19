 import 'package:flutter/material.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';

class pgridview_section extends StatelessWidget {
  const pgridview_section({
    super.key,
    required this.itemcount,
    this.mainAxisExtent=280,
    required this.itemBuilder,
  });

  final int itemcount;
  final double? mainAxisExtent;
  final Widget Function(BuildContext context, int index) itemBuilder;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: itemcount,
      padding: EdgeInsets.zero,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: mainAxisExtent,
          crossAxisSpacing: psizes.gridViewspacing,
          mainAxisSpacing: psizes.gridViewspacing),
      itemBuilder:itemBuilder
      
    );
  }
}
