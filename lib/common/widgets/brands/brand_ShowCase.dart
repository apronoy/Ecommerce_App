 import 'package:flutter/material.dart';
import 'package:myecommerceapp/common/widgets/brands/Product_Brand_cart.dart';
import 'package:myecommerceapp/common/widgets/custom_shaps/rounded_container.dart';
import 'package:myecommerceapp/utilities/constants/colors.dart';
import 'package:myecommerceapp/utilities/constants/enums.dart';
import 'package:myecommerceapp/utilities/constants/imagas.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';
import 'package:myecommerceapp/utilities/constants/texts.dart';
import 'package:myecommerceapp/utilities/helper/helper_fuction.dart';

class pBrandShowcase extends StatelessWidget {
  pBrandShowcase({
    super.key,
    required this.images,
    this.brandTitle = ptexts.northster,
    this.brandImg = pimages.northStar,
    this.totalProduct = 0,
  });
  final String brandTitle;
  final String brandImg;
  final totalProduct;

  final List<String> images;
  @override
  Widget build(BuildContext context) {
    final bool dark = phelperfuction.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: pRoundedContainer(
        showBorder: true,
        padding: EdgeInsets.all(psizes.md),
        margin: EdgeInsets.only(bottom: psizes.spacebtnitem),
        borderColor: pcolors.darkgrey,
        backgroundColor: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //brand with total product ..
            pBrandCard(
              showborder: false, //showing border or not
               brandtextsize: TextSizes.large, //the size of brands title text
              brandImg: brandImg, // logo image for brand
              brandTitle: brandTitle, //name of the brand
              totalProduct: totalProduct,
            ),

            Row(children: images.map((e) => buildBrandImage(dark, e)).toList())
          ],
        ),
      ),
    );
  }

  Widget buildBrandImage(bool dark, String e) {
    return Expanded(
      child: pRoundedContainer(
        height: 150,
        padding: EdgeInsets.all(psizes.md),
        margin: EdgeInsets.only(right: psizes.sm),
        backgroundColor: Colors.transparent,
        child: Image(image: AssetImage(e), fit: BoxFit.contain),
      ),
    );
  }
}

// class pBrandShowCase extends StatelessWidget {
//   const pBrandShowCase({
//     super.key, required this.images,
//   });
//   final List<String> images;
//   @override
//   Widget build(BuildContext context) {
//             final bool dark = phelperfuction.isDarkMode(context);

//     return pRoundedContainer(
//       showBorder: true,
//       padding: EdgeInsets.all(psizes.md),
//       margin: EdgeInsets.only(bottom: psizes.spacebtnitem),
//       borderColor: pcolors.darkgrey,
//       backgroundColor: Colors.transparent,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           //brand with total product ..
//           pBrandCard(showborder: false, width: psizes.widthBShowCase),

//           Row(
//               children: images.map((e) =>
//                  expandedImagearea(dark, e),).toList()

//       )])
//         ,
//       );

//   }

//   Expanded expandedImagearea(bool dark, String e) {
//     return Expanded(
//                 child:pRoundedContainer(
//       height: 100,
//        padding: EdgeInsets.all(psizes.md),
//       margin: EdgeInsets.only(right: psizes.sm),
//       backgroundColor: dark ? pcolors.darkgrey : pcolors.light,
//       child: Image(image: AssetImage(e), fit: BoxFit.contain),
//     ));
//   }
// }
