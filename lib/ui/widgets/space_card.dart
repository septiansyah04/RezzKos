part of 'widgets.dart';

class SpaceCard extends StatelessWidget {
  final Space spaces;

  SpaceCard(this.spaces);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(DetailPage(spaces));
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Container(
              height: 110,
              width: 130,
              child: Stack(
                children: [
                  Image.network(
                    spaces.imageUrl,
                    width: 130,
                    height: 110,
                    fit: BoxFit.cover,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 70,
                      height: 30,
                      decoration: BoxDecoration(
                          color: mainColor,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/icon_star_solid.png',
                            width: 22,
                            height: 22,
                          ),
                          Text(
                            '${spaces.rating}',
                            style: whiteFontStyle.copyWith(fontSize: 13),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                spaces.name,
                style: blackFontStyle3.copyWith(fontSize: 18),
              ),
              SizedBox(
                height: 2,
              ),
              Text.rich(
                TextSpan(
                    text: ' \$${spaces.price} ',
                    style:
                        greyFontStyle.copyWith(color: mainColor, fontSize: 16),
                    children: [
                      TextSpan(
                          text: '/ month',
                          style: greyFontStyle.copyWith(fontSize: 16))
                    ]),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                '${spaces.city}, ${spaces.country}',
                style: greyFontStyle,
              )
            ],
          )
        ],
      ),
    );
  }
}
