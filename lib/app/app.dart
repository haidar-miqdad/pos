import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/app/route.dart';
import 'package:pos/core/core.dart';
import 'package:pos/features/home/blocs/blocs.dart';

import '../core/preferences/theme/theme.dart';
import '../features/settings/settings.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: LightTheme(AppColors.green).theme,
        home: const SplashPage(),
        onGenerateRoute: routes,
      ),
    );
  }
}
