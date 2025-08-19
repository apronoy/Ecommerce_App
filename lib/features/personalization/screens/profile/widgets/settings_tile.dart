import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class settings_tile extends StatelessWidget {
  const settings_tile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon, required this.onTap,
  });
  final String title, subtitle;
  final IconData icon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        title: Text(title, style: Theme.of(context).textTheme.titleMedium),
        subtitle:
            Text(subtitle, style: Theme.of(context).textTheme.labelMedium),
        leading: Icon(icon),
      ),
    );
  }
}
