 import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';

class UserAcc_Details extends StatelessWidget {
  const UserAcc_Details(
      {super.key,
      required this.label,
      required this.value,
      this.icon = Iconsax.arrow_right_34,
      required this.onpressed});

  final String label, value;
  final IconData icon;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Padding(
        padding:
            const EdgeInsets.symmetric(vertical: psizes.spacebtnitem / 1.7),
        child: Row(
          children: [
            Expanded(
                flex: 3,
                child: Text(label,
                    style: Theme.of(context).textTheme.bodySmall,
                    overflow: TextOverflow.ellipsis)),
            Expanded(
                flex: 5,
                child: Text(
                  value,
                  style: Theme.of(context).textTheme.bodyLarge,
                  overflow: TextOverflow.ellipsis,
                )),
            Expanded(
              flex: 1,
              child: Icon(icon),
            )
          ],
        ),
      ),
    );
  }
}