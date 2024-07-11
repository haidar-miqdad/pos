import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/core/core.dart';
import 'app/app.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  runApp(const MyApp());
}
