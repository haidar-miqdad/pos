import 'package:flutter/material.dart';

import '../../../core/core.dart';

class ItemMenuPreferences extends StatelessWidget {
  const ItemMenuPreferences(
      {super.key, required this.icon, required this.title, this.onTap});

  final IconData icon;
  final String title;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(Dimens.defaultSize),
        child: Row(
          children: [
            Icon(icon),
            Dimens.dp12.width,
            Expanded(child: RegularText(title)),
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: 18,
              color: context.theme.primaryColor,
            ),
          ],
        ),

      ),
    );
  }
}
