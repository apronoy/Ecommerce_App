
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myecommerceapp/features/personalization/screens/profile_edit/profile_edit.dart';

class profile_tile extends StatelessWidget {
  const profile_tile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text('Pronoy Sarkar',
          style: Theme.of(context).textTheme.headlineSmall),
      subtitle: Text('pronoy7071@gmail.com',
          style: Theme.of(context).textTheme.bodyMedium),
      trailing: IconButton(
          onPressed: () => Get.to(profile_edit()), icon: Icon(Iconsax.edit)),
    );
  }
}
