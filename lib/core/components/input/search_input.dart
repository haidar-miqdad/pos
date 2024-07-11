import 'package:flutter/material.dart';
import 'package:pos/core/core.dart';

class SearchTextInput extends StatelessWidget {
  const SearchTextInput({super.key, required this.hintText});

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return RegularTextInput(
      hintText: hintText,
      prefixIcon: AppIcons.search,
    );
  }
}
