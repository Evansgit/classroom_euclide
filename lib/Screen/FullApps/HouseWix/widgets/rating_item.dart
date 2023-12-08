import 'package:flutter/material.dart';

class RatingItem extends StatelessWidget {
  final int? index;
  final int? rating;

  RatingItem({this.index, this.rating});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      index! <= rating!
          ? 'https://images2.imgbox.com/a2/93/pdUWMwl6_o.png'
          : 'https://images2.imgbox.com/64/70/gndtZagw_o.png',
      width: 20,
    );
  }
}
