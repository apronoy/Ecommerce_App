   import 'package:flutter/material.dart';
import 'package:myecommerceapp/common/styles/padding.dart';
import 'package:myecommerceapp/common/widgets/appbar/appbar.dart';
import 'package:myecommerceapp/common/widgets/products/all_product/SortAllProduct.dart';
  
class AllProduct extends StatelessWidget {
  const AllProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PappBar(
          title: Text(
            'All Product ',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          showBackarrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: pPadding.screenPadding,
          child: Psortallproduct(),
        ),
      ),
    );
  }
}

