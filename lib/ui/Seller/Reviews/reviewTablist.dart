import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewTabList {
  

  ReviewTabList(
    {
    @required this.rImage,
    @required this.title,
    @required this.ratingBar,
    @required this.ratingNum,
    @required this.days,
    @required this.desp,
  }
  );
  Image rImage;
  String title;
  RatingBar ratingBar;
  String ratingNum;
  String days;
  String desp;
}
List<ReviewTabList> reviewList = [
    ReviewTabList(
      rImage: Image.network('https://www.woolha.com/media/2020/03/eevee.png'),
      title: "Randy Palmer",
      ratingBar: RatingBar.builder(
          initialRating: 3,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemPadding: EdgeInsets.all(2),
          itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber),
          onRatingUpdate: (rating) {
            print(rating);
          }),
      ratingNum: "3.0",
      days: "5 Days Ago",
      desp:
          "Names are random, constructed from real first and last names. Company names are real, but are randomized along with street addresses and do not represent actual locations.",
    ),
    ReviewTabList(
      rImage: Image.network('https://www.woolha.com/media/2020/03/eevee.png'),
      title: "Randy Palmer",
      ratingBar: RatingBar.builder(
          initialRating: 3,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemPadding: EdgeInsets.all(2),
          itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber),
          onRatingUpdate: (rating) {
            print(rating);
          }),
      ratingNum: "3.0",
      days: "5 Days Ago",
      desp:
          "Names are random, constructed from real first and last names. Company names are real, but are randomized along with street addresses and do not represent actual locations.",
    ),
    ReviewTabList(
      rImage: Image.network('https://www.woolha.com/media/2020/03/eevee.png'),
      title: "Randy Palmer",
      ratingBar: RatingBar.builder(
        initialRating: 3,
        minRating: 1,
        direction: Axis.horizontal,
        allowHalfRating: true,
        itemCount: 5,
        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
        itemBuilder: (context, _) => Icon(
          Icons.star,
          color: Colors.amber,
        ),
        onRatingUpdate: (rating) {
          print(rating);
        },
      ),
      ratingNum: "3.0",
      days: "5 Days Ago",
      desp:
          "Names are random, constructed from real first and last names. Company names are real, but are randomized along with street addresses and do not represent actual locations.",
    ),
  ];