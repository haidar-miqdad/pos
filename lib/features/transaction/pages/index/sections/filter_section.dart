part of '../page.dart';

class _FilterSection extends StatefulWidget {
  const _FilterSection();

  @override
  State<_FilterSection> createState() => _FilterSectionState();
}

class _FilterSectionState extends State<_FilterSection> {
  String selected = 'Done';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _buildContainer(context, label: 'Done'),
          Dimens.dp12.width,
          _buildContainer(context, label: 'Draft'),
        ],
      ),
    );
  }

  Widget _buildContainer(BuildContext context, {required label}) {
    final isActive = selected == label;
    return InkWell(
      borderRadius: BorderRadius.circular(8.0),
      onTap: () {
        setState(() {
          selected =
              label; //nilai dari selected akan diganti dengan label yg diklik
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: Dimens.dp16, vertical: Dimens.dp8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: isActive ? context.theme.primaryColor : null,
            border: Border.all(
              color:
                  isActive ? context.theme.primaryColor : AppColors.white[500]!,
            )),
        child: RegularText.semiBold(
          label,
          style: TextStyle(
              color: isActive ? AppColors.white : AppColors.black[200]),
        ),
      ),
    );
  }
}
