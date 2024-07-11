part of '../page.dart';

class _ItemSection extends StatelessWidget {
  const _ItemSection({super.key, required this.title, required this.items});

  final String title;
  final List<Widget> items;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(Dimens.defaultSize),
          child: RegularText.semiBold(title),
        ),
        ...items
      ],
    );
  }
}
