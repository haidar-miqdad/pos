part of '../page.dart';

class _ItemSection extends StatelessWidget {
  const _ItemSection();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Dimens.defaultSize),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network('https://images.tokopedia.net/img/cache/700/VqbcmM/2023/11/8/c2b550a5-736d-45a3-8099-80deb60ef995.jpg',
                  width: 74,
                  height: 74,
                  fit: BoxFit.cover,
                ),
              ),
              Dimens.dp12.width,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RegularText.semiBold('Organic Potato'),
                    Dimens.dp4.height,
                    RegularText.semiBold('Rp 18.900 / kg')
                  ],
                ),
              )
            ],
          ),
          Dimens.defaultSize.height,
          Row(
            children: [
              Expanded(child: OutlinedButton(onPressed: (){}, child: const Text('Edit'))),
              Dimens.defaultSize.width,
              Expanded(child: OutlinedButton(onPressed: (){}, child: const Text('Delete')))
            ],
          )
        ],
      ),
    );
  }
}
