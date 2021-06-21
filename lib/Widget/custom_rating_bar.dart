import 'package:flutter/material.dart';

class RatingBar extends StatelessWidget {
  final double rating, size;

  const RatingBar({Key key, @required this.rating, @required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    int totStars = 5;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(totStars, (i) {
        int index = i + 1;
        return Icon(
          Icons.star,
          color: index <= rating ? Colors.yellow[800] : Colors.grey[300],
          size: size,
        );
      }),
    );
  }
}
