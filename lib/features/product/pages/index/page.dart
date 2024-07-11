import 'package:flutter/material.dart';
import 'package:pos/core/core.dart';


part 'sections/item_section.dart';

class ProductPage extends StatelessWidget {
  const ProductPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.all(Dimens.defaultSize),
            child: SearchTextInput(hintText: 'Search by product name or SKU'),
          ),
          const Padding(
            padding: EdgeInsets.all(Dimens.defaultSize),
            child: SubtitleText('3 Product'),
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index){
                  return const _ItemSection();
                },
                separatorBuilder: (context, index){
                  return Dimens.defaultSize.height;
                },
                itemCount: 3,
            ),
          )
        ],
      ),
    );
  }
}

