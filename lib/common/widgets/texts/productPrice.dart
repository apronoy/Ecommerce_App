import 'package:flutter/material.dart';

class pProductPrice extends StatelessWidget {
  const pProductPrice({
    super.key,
     this.currencysign='\$',
    required this.price,
    this.maxlines = 1,
    this.isLarge = false,
    this.issmall = false,
    this.lineThrough = false,
   });

  final String currencysign, price;
  final int maxlines;
   final bool isLarge, lineThrough, issmall;
  @override
  Widget build(BuildContext context) {
    return Text(currencysign + price,
        style: isLarge
            ? Theme.of(context).textTheme.headlineMedium?.apply(
                decoration: lineThrough ? TextDecoration.lineThrough : null)
            : issmall
                ? Theme.of(context).textTheme.titleSmall?.apply(
                    decoration: lineThrough ? TextDecoration.lineThrough : null)
                : Theme.of(context).textTheme.titleLarge?.apply(
                    decoration:
                        lineThrough ? TextDecoration.lineThrough : null),
        maxLines: maxlines,
        
        overflow: TextOverflow.ellipsis);
  }
}
