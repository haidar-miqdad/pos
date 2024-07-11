import 'package:flutter/material.dart';
import 'package:pos/features/features.dart';

import '../core/core.dart';
import '../features/home/pages/pages.dart';

Route<dynamic> routes(settings) {
  switch (settings.name) {
    case MainPage.routeName:
      return MaterialPageRoute(builder: (context) => const MainPage());

    default:
      return MaterialPageRoute(builder: (context) {
        return const Scaffold(
          body: Center(
            child: RegularText(
              'Page not found',
              textAlign: TextAlign.center,
            ),
          ),
        );
      });
  }
}
