import 'package:flutter/material.dart';
import 'package:pos/core/core.dart';

part 'sections/item_section.dart';

class POSPage extends StatelessWidget {
  const POSPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('POS'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.all(Dimens.defaultSize),
            child: SearchTextInput(hintText: 'Search by product name or SKU'),
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => const _ItemSection(),
              separatorBuilder: (context, index) => Dimens.defaultSize.height,
              itemCount: 3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(Dimens.defaultSize),
            child: ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: Dimens.dp16, vertical: Dimens.dp12),
                child: Row(
                  children: [
                    const Icon(AppIcons.shoppingCart),
                    Dimens.defaultSize.width,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RegularText.semiBold(
                            '3 Items',
                            style: const TextStyle(fontSize: Dimens.dp12, color: AppColors.white),
                          ),

                          RegularText.semiBold(
                            'Rp 49.000',
                            style: const TextStyle(fontSize: Dimens.dp10, color: AppColors.white),
                          ),
                        ],
                      ),
                    ),
                    const Icon(Icons.arrow_forward, color: AppColors.white, ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
