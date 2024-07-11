part of '../page.dart';

class _ProfileSection extends StatelessWidget {
  const _ProfileSection();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Dimens.defaultSize),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(Dimens.dp50),
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbomjmg5CGWhxiJS_nUfeTjFtL8pjZcYIFKA&s',
              height: 64,
              width: 64,
              fit: BoxFit.cover,
            ),
          ),
          Dimens.defaultSize.width,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RegularText.semiBold(
                  'SuperPOS',
                  style: TextStyle(color: AppColors.black[800]),
                ),
                Dimens.dp4.height,
                const RegularText('superpos@gmail.com'),
                Dimens.dp4.height,
                const RegularText('+6282117499922'),
              ],
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                AppIcons.edit,
                color: context.theme.primaryColor,
              ))
        ],
      ),
    );
  }
}
