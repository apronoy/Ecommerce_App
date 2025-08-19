 import 'package:flutter/material.dart';
import 'package:myecommerceapp/common/styles/padding.dart';
import 'package:myecommerceapp/common/widgets/appbar/appbar.dart';
import 'package:myecommerceapp/features/shop/screens/Order/widgets/orderlist.dart';

class order extends StatelessWidget {
  const order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PappBar(
        showBackarrow: true,
        title: Text('My Orders ',
            style: Theme.of(context).textTheme.headlineMedium),
      ),
      body: Padding(padding: pPadding.screenPadding, child: Orderlist()),
    );
  }
}
      