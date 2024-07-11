import 'package:flutter/material.dart';
import 'package:pos/core/core.dart';

part 'sections/filter_section.dart';
part 'sections/item_section.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Transaction'),
        ),
        body: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(Dimens.defaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const _FilterSection(),
                Dimens.dp24.height,
                Expanded(
                  child: ListView(
                    children: const [_ItemSection()],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
