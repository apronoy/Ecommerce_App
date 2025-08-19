import 'package:flutter/material.dart';

class product_bill extends StatelessWidget {
  const product_bill({
    super.key,
    required this.bilname,
    required this.price,
    this.bodylarge = false,
    this.labelarge = true,
    this.headinglarge = false,
  });
  final String bilname, price;
  final bool bodylarge, labelarge, headinglarge;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            bilname,
            style: headinglarge
                ? Theme.of(context).textTheme.headlineSmall
                : bodylarge
                    ? Theme.of(context).textTheme.bodySmall
                    : labelarge
                        ? Theme.of(context).textTheme.labelLarge
                        : Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Text(
          '\$$price',
          style: headinglarge
              ? Theme.of(context).textTheme.headlineSmall
              : bodylarge
                  ? Theme.of(context).textTheme.bodyMedium
                  : labelarge
                      ? Theme.of(context).textTheme.labelLarge
                      : Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
