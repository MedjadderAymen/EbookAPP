import 'package:ebook_app/widgets/two_sides_rounded_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../consttants.dart';

class BookRating extends StatelessWidget {
  final double score;

  const BookRating(
    this.score, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
                offset: Offset(3, 7),
                blurRadius: 20,
                color: Color(0XFD3D3D3).withOpacity(.5))
          ]),
      child: Column(
        children: [
          Icon(
            Icons.star,
            color: kIconColor,
            size: 15,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "$score",
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}