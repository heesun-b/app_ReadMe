import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class StarScore extends StatelessWidget {
  final double score;

  const StarScore({required this.score, Key? key}) : super(key: key);

  double extra(score) {
    return (5.0 - score);
  }

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      itemSize: 20,
      ignoreGestures: true,
      initialRating: score > 5 ? 5 : score,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: const EdgeInsets.symmetric(horizontal: 0),
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    );
  }
}