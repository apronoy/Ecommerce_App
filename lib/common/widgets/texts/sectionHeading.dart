import 'package:flutter/material.dart';

class psectionheading extends StatelessWidget {
  const psectionheading({
    super.key,
    required this.title,
    this.btntitle = 'View all',
    this.textcolor,
    this.onpressed,
    this.showtxtbtn = true,
  });

  final String title, btntitle;
  final Color? textcolor;
  final VoidCallback? onpressed;
  final bool showtxtbtn;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.apply(color: textcolor),
            maxLines: 1,
            overflow: TextOverflow.ellipsis),
        if (showtxtbtn) TextButton(onPressed: onpressed, child: Text(btntitle)),
      ],
    );
  }
}
