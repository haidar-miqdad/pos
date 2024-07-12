part of '../page.dart';

class _ItemSection extends StatelessWidget {
  const _ItemSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Dimens.defaultSize),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(Dimens.dp8),
                child: Image.network(
                  'https://cdn.rri.co.id/berita/Manokwari/o/1711773635870-images_(11)/buhx0l5woy5p4mc.jpeg',
                  width: Dimens.dp80,
                ),
              ),
              Dimens.defaultSize.width,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RegularText.semiBold('Organic Potato'),
                    Dimens.dp8.height,
                    RegularText.semiBold('21.000 / kg'),
                  ],
                ),
              ),
              Row(
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      minimumSize: const Size(12, 12),
                      padding: const EdgeInsets.symmetric(vertical: Dimens.dp6, horizontal: Dimens.dp8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(Dimens.dp4),
                      ),
                    ),
                    onPressed: (){},
                    child: const Text('-'),
                  ),
                  RegularText.semiBold('2', style: const TextStyle(fontSize: 12),),
                  ElevatedButton(
                      style: OutlinedButton.styleFrom(
                        minimumSize: const Size(12, 12),
                        padding: const EdgeInsets.symmetric(vertical: Dimens.dp6, horizontal: Dimens.dp8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(Dimens.dp4),
                        ),
                      ),
                      onPressed: (){},
                      child: const Text('+')
                  ),

                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
