import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myecommerceapp/utilities/constants/colors.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';
import 'package:myecommerceapp/utilities/helper/devicehelpers.dart';
import 'package:myecommerceapp/utilities/helper/helper_fuction.dart';

class PappBar extends StatelessWidget implements PreferredSizeWidget {
  const PappBar(
      {super.key,
      this.title,
      this.showBackarrow = false,
      this.leadingIcon,
      this.actions,
      this.leadigOnpressed});
  final Widget? title;
  final bool showBackarrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadigOnpressed;

  @override
  Widget build(BuildContext context) {
    final bool dark = phelperfuction.isDarkMode(context);

    var get = Get;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: psizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
         //leading
        leading: showBackarrow
            ? IconButton(
                onPressed: get.back,
                icon: Icon(
                  Iconsax.arrow_left,
                  color: dark ? pcolors.white : pcolors.dark,
                ))
            : leadingIcon != null
                ? IconButton(
                    onPressed: leadigOnpressed, icon: Icon(leadingIcon))
                : null,

        //title
        title: title,
        //subtitle
        actions: actions,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(pdevicehelper.getAppbarheight());
}
