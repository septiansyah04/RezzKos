part of 'widgets.dart';

class RatingItem extends StatelessWidget {
  final int index;
  final int rating;

  RatingItem({this.index, this.rating});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      index <= rating
          ? 'assets/icon_star_solid.png'
          : 'assets/icon_star_grey_solid.png',
      width: 20,
    );
  }
}
