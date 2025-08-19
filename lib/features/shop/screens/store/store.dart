 
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:myecommerceapp/common/widgets/appbar/tabbar.dart';
import 'package:myecommerceapp/common/widgets/brands/Product_Brand_cart.dart';
import 'package:myecommerceapp/common/widgets/texts/sectionHeading.dart';
import 'package:myecommerceapp/features/personalization/screens/Brands/all_brands.dart';
import 'package:myecommerceapp/features/personalization/screens/Brands/brand_product.dart';
import 'package:myecommerceapp/features/shop/screens/store/widgets/pStoreHeader.dart';
import 'package:myecommerceapp/features/shop/screens/store/widgets/pTabBarview.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  // static const List<Tab> Mytab = <Tab>[
  //   Tab(child: Text('Sports')),
  //   Tab(child: Text('game')),
  //   Tab(child: Text('car')),
  //   Tab(child: Text('mobile')),
  // ];

  // static const List<Widget> Mywidgets = <Widget> [
  //   PcatagoryTab(),
  //   PcatagoryTab(),
  //   PcatagoryTab(),
  //   PcatagoryTab(),
  //  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          body: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    automaticallyImplyLeading: false,
                    expandedHeight: 340,
                    pinned: true,
                    floating: false,
                    flexibleSpace: SingleChildScrollView(
                      child: Column(
                        children: [
                          PstoreHeader(),

                          SizedBox(height: psizes.spacebtnitem),

                          // brands section heading
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: psizes.defaultspace),
                            child: Column(
                              children: [
                                psectionheading(
                                  title: 'Brands',
                                  onpressed: () => Get.to(() => AllBrands()),
                                ),
                                // brands cart section
                                SizedBox(
                                  height: psizes.brandCartHeight,
                                  child: ListView.separated(
                                      itemBuilder: (context, index) => SizedBox(
                                          width: psizes.brandCartWidth,
                                          child: pBrandCard(
                                            ontap: () =>
                                                Get.to(() => BrandProduct()),
                                          )),
                                      separatorBuilder: (context, index) =>
                                          SizedBox(width: psizes.spacebtnitem),
                                      scrollDirection: Axis.horizontal,
                                      shrinkWrap: true,
                                      itemCount: 7),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    bottom: pTabBar(
                      tab: [
                        Tab(child: Text('Sports')),
                        Tab(child: Text('Eletronics')),
                        Tab(child: Text('Clothes')),
                        Tab(child: Text('Furniture')),
                        Tab(child: Text('Cosmetics')),
                      ],
                    ),
                  )
                ];
              },
              body: pTabBarview()
              // Container()
              )),
    );
  }
}
