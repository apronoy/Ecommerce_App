 import 'package:flutter/material.dart';
import 'package:myecommerceapp/utilities/constants/colors.dart';
import 'package:myecommerceapp/utilities/helper/devicehelpers.dart';
import 'package:myecommerceapp/utilities/helper/helper_fuction.dart';

class pTabBar extends StatelessWidget implements PreferredSizeWidget {
  const pTabBar({
    super.key,
    required this.tab,
  });

  final List<Widget> tab;
  @override
  Widget build(BuildContext context) {
    final bool dark = phelperfuction.isDarkMode(context);
    return Material(
      color: dark ? pcolors.black : pcolors.white,
      child: TabBar(
          isScrollable: true,
          labelColor: dark ? pcolors.white : pcolors.primary,
          indicatorColor: dark ? pcolors.white : pcolors.primary,
          unselectedLabelColor: pcolors.darkgrey,
          tabs: tab),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(pdevicehelper.getAppbarheight());
}
