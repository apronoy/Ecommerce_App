import 'package:flutter/material.dart';

class pproductTitle extends StatelessWidget {
  const pproductTitle({
    super.key,
    required this.title,
    this.smallsize = false,
    this.larzesize = false,
    this.maxline = 1,
    this.textAlign = TextAlign.start,
  });

  final String title;
  final bool smallsize;
  final bool larzesize;
  final int maxline;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      overflow: TextOverflow.ellipsis,
      style: larzesize
          ? Theme.of(context).textTheme.headlineSmall
          : smallsize
              ? Theme.of(context).textTheme.labelLarge
              : Theme.of(context).textTheme.titleSmall,
      maxLines: maxline,
      textAlign: textAlign,
    );
  }
}
