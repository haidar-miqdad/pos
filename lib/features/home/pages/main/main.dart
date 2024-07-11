import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/core/core.dart';
import 'package:pos/features/home/blocs/blocs.dart';
import 'package:pos/features/product/pages/index/page.dart';

import '../../../features.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    const pages = <Widget>[
      HomePage(),
      TransactionPage(),
      POSPage(),
      ProductPage(),
      SettingsPage()
    ];

    return BlocBuilder<BottomNavBloc, int>(
      builder: (context, index) {
        return Scaffold(
          body: pages[index],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              context.read<BottomNavBloc>().add(TapBottomNavEvent(value));
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(AppIcons.storefront),
                label: 'Beranda',
              ),
              BottomNavigationBarItem(
                icon: Icon(AppIcons.receipt),
                label: 'Transaction',
              ),
              BottomNavigationBarItem(
                icon: Icon(AppIcons.pos),
                label: 'POS',
              ),
              BottomNavigationBarItem(
                icon: Icon(AppIcons.product),
                label: 'Product',
              ),
              BottomNavigationBarItem(
                icon: Icon(AppIcons.settings),
                label: 'Settings',
              ),
            ],
          ),
        );
      },
    );
  }
}
