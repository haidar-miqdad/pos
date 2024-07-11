part of '../page.dart';

class _ItemSection extends StatelessWidget {
  const _ItemSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                  vertical: Dimens.dp4, horizontal: Dimens.dp12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimens.dp4),
                  border: Border.all(
                    color: context.theme.primaryColor,
                  )),
              child: RegularText.semiBold(
                'Done',
                style: TextStyle(color: context.theme.primaryColor),
              ),
            ),
            RegularText.semiBold(
              '24 Jan 2021 • 11:02',
              style: TextStyle(color: AppColors.black[200]),
            )
          ],
        ),
        Dimens.defaultSize.height,
        RegularText.semiBold(
          'Tunai • TRX-100-10102030405',
          style: TextStyle(color: AppColors.black[800], fontSize: Dimens.dp14),
        ),
        Dimens.defaultSize.height,
        RegularText.semiBold(
          'Rp 125.000',
          style: TextStyle(color: context.theme.primaryColor),
        )
      ],
    );
  }
}
