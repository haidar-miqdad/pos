import 'package:flutter/material.dart';
import 'package:pos/core/core.dart';
import 'package:pos/features/product/pages/index/page.dart';

import '../../../features.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  static const routeName = '/home';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;

  final pages = const <Widget>[
    HomePage(),
    TransactionPage(),
    POSPage(),
    ProductPage(),
    SettingsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value){
          setState(() {
            index = value;
          });
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
  }
}
