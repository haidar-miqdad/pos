import 'package:flutter/material.dart';

import '../../../features.dart';


class MainPage extends StatelessWidget {
  const MainPage({super.key});

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomePage(),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
         BottomNavigationBarItem(
           icon: Icon(Icons.home),
           label: 'Beranda',
         ),
          BottomNavigationBarItem(
           icon: Icon(Icons.home),
           label: 'Transaction',
         ),
          BottomNavigationBarItem(
           icon: Icon(Icons.home),
           label: 'POS',
         ),
          BottomNavigationBarItem(
           icon: Icon(Icons.home),
           label: 'Product',
         ),
          BottomNavigationBarItem(
           icon: Icon(Icons.home),
           label: 'Settings',
         ),
        ],
      ),
    );
  }
}
