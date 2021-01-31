part of 'widgets.dart';

class TipsCard extends StatelessWidget {
  final Tips tips;

  TipsCard(this.tips);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            margin: EdgeInsets.only(right: 20),
            width: 80,
            height: 80,
            child: Image.asset(tips.imageUrl)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tips.title,
              style: blackFontStyle2,
            ),
            Text(
              'Update ${tips.updateAt}',
              style: greyFontStyle,
            )
          ],
        ),
        Spacer(),
        IconButton(
            icon: Icon(Icons.chevron_right), color: greyColor, onPressed: () {})
      ],
    );
  }
}
