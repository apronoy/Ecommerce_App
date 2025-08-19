 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myecommerceapp/common/widgets/imageText/vartical_imagetext.dart';
import 'package:myecommerceapp/features/shop/screens/sub_catagory/sub_catagory.dart';
import 'package:myecommerceapp/utilities/constants/colors.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';
import 'package:myecommerceapp/utilities/constants/texts.dart';

import '../../../../../utilities/constants/imagas.dart';

class phomeCatagories extends StatelessWidget {
  const phomeCatagories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: psizes.spacebtnsection),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // This is popular catagory ..
          // catagory title
          Text(ptexts.popularcatagories,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: pcolors.white)),

          SizedBox(height: psizes.spacebtnitem),
//this is circuler image
          SizedBox(
            height: 80,
            child: ListView.separated(
              separatorBuilder: (context, index) =>
                  SizedBox(width: psizes.spacebtnitem),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return pcatagoriesImageAndTitle(
                  title: 'Sports Catagories',
                  image: pimages.clothes,
                  textColor: pcolors.white,
                  ontap: () => Get.to(() => SubCatagory()),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
