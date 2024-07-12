import 'package:flutter/material.dart';
import 'package:pos/core/core.dart';

import '../../components/components.dart';

part 'sections/profile_section.dart';
part 'sections/item_section.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Preferences'),
      ),
      body: ListView(
        children: [
          const _ProfileSection(),
          const Divider(
            thickness: Dimens.dp8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _ItemSection(
                title: 'Account',
                items: [
                  ItemMenuPreferences(
                      icon: AppIcons.receipt, title: 'Informasi Usaha', onTap: (){},),
                  const Divider(),
                  ItemMenuPreferences(
                      icon: AppIcons.creditCard, title: 'API Key Xendit', onTap: (){},),
                ],
              ),
              const Divider(
                thickness: 8,
              ),
              const _ItemSection(
                title: 'Perangkat Tambahan',
                items: [
                  ItemMenuPreferences(
                      icon: Icons.print_outlined, title: 'Printer'),
                  Divider(),
                  ItemMenuPreferences(
                      icon: AppIcons.coupon, title: 'Atur Struk'),
                ],
              ),
              const Divider(
                thickness: 8,
              ),
               const _ItemSection(
                title: 'Info Lainnya',
                items: [
                  ItemMenuPreferences(
                      icon: AppIcons.verified, title: 'Kebijakan Privasi'),
                  Divider(),
                  ItemMenuPreferences(
                      icon: AppIcons.star, title: 'Beri Rating'),
                ],
              ),
            ],
          ),
          Dimens.dp12.height,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Dimens.dp16),
            child: OutlinedButton(
                onPressed: (){},
              style: OutlinedButton.styleFrom(
                foregroundColor: context.theme.colorScheme.error,
                side: BorderSide(color: context.theme.colorScheme.error)
              ),
                child: const Text('Keluar',),
            ),
          )
        ],
      ),
    );
  }
}
