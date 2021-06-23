import 'package:ebook_app/consttants.dart';
import 'package:ebook_app/widgets/book_rating.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: size.height * .4,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/images/bg.png",
                          ),
                          fit: BoxFit.fitWidth),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50))),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height * .1,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Crushing &",
                                    style: Theme.of(context).textTheme.display1,
                                  ),
                                  Text(
                                    "Influence",
                                    style: Theme.of(context)
                                        .textTheme
                                        .display1!
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "When the earth was flat andeveryone wanted to win the gameof the best and people and winning with an A game with all the things you have.",
                                              maxLines: 5,
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: kLightBlackColor),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  .6,
                                              child: GestureDetector(
                                                onTap: () {},
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  margin: EdgeInsets.symmetric(
                                                      vertical: 10),
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 10,
                                                      horizontal: 30),
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                    boxShadow: [
                                                      BoxShadow(
                                                          offset: Offset(0, 4),
                                                          blurRadius: 30,
                                                          color:
                                                              Color(0XFF666666)
                                                                  .withOpacity(
                                                                      .11)),
                                                    ],
                                                  ),
                                                  child: Text(
                                                    "Read",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.favorite_border),
                                          ),
                                          BookRating(4.9),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Image.asset(
                              "assets/images/book-1.png",
                              height: 170,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * .4 - 20),
                  child: Column(
                    children: [
                      ChapterCard(1, "Money", "Life is about change", () {},
                          size: size),
                      ChapterCard(2, "Power", "Everything loves power", () {},
                          size: size),
                      ChapterCard(3, "Influence",
                          "Influence easily like never before", () {},
                          size: size),
                      ChapterCard(4, "Win", "Winning is what matters", () {},
                          size: size),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.display1,
                      children: [
                        TextSpan(text: "You might also "),
                        TextSpan(
                          text: "Like… .",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 180,
                        width: double.infinity,
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        left: 0,
                        child: Container(
                          padding:
                              EdgeInsets.only(left: 24, top: 24, right: 150),
                          height: 160,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(29),
                              color: Color(0XFFFFF8F9)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(color: kBlackColor),
                                  children: [
                                    TextSpan(
                                      text:
                                          "How to win \nFriends & Influence \n",
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "Gary Venchunk",
                                      style: TextStyle(color: kLightBlackColor),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  BookRating(4.6),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.center,
                                      margin:
                                          EdgeInsets.symmetric(vertical: 10),
                                      padding: EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 30),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(30),
                                        boxShadow: [
                                          BoxShadow(
                                              offset: Offset(0, 4),
                                              blurRadius: 30,
                                              color: Color(0XFF666666)
                                                  .withOpacity(.11)),
                                        ],
                                      ),
                                      child: Text(
                                        "Read",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Image.asset("assets/images/book-3.png"),
                        width: 150,
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}

class ChapterCard extends StatelessWidget {
  final String name, tag;
  final int chapterNumber;
  final VoidCallback press;

  const ChapterCard(
    this.chapterNumber,
    this.name,
    this.tag,
    this.press, {
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width - 48,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(38.5),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 33,
                color: Color(0XFFD3D3D3).withOpacity(.84))
          ]),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Chapter $chapterNumber: $name \n",
                  style: TextStyle(
                      fontSize: 16,
                      color: kBlackColor,
                      fontWeight: FontWeight.bold),
                ),
                TextSpan(text: tag, style: TextStyle(color: kLightBlackColor))
              ],
            ),
          ),
          Spacer(),
          IconButton(
              onPressed: press,
              icon: Icon(
                Icons.arrow_forward_ios,
                size: 18,
              ))
        ],
      ),
    );
  }
}
