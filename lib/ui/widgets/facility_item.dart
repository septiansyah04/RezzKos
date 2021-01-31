part of 'widgets.dart';

class FacilityItem extends StatelessWidget {
  final String name;
  final String imageUrl;
  final int total;

  FacilityItem({this.name, this.imageUrl, this.total});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(imageUrl, width: 32,),
        SizedBox(
          height: 4,
        ),
        Text.rich(
          TextSpan(
              text: '$total',
              style: greyFontStyle.copyWith(color: mainColor, fontSize: 14),
              children: [
                TextSpan(
                    text: ' $name',
                    style: greyFontStyle.copyWith(fontSize: 14))
              ]),
        ),
      ],
    );
  }
}
