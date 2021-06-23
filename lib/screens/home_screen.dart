import 'package:ebook_app/consttants.dart';
import 'package:ebook_app/screens/details_screen.dart';
import 'package:ebook_app/widgets/book_rating.dart';
import 'package:ebook_app/widgets/reading_card.dart';
import 'package:ebook_app/widgets/two_sides_rounded_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/main_page_bg.png"),
                alignment: Alignment.topCenter,
                fit: BoxFit.fitWidth),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * .1,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.display1,
                    children: [
                      TextSpan(text: "What are you \nreading "),
                      TextSpan(
                          text: "today?",
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ReadingListCard("assets/images/book-1.png",
                        "Crushing & Influence", "Gary Venchuk", 4.9, () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return DetailsScreen();
                        }),
                      );
                    }, () {}),
                    ReadingListCard(
                        "assets/images/book-2.png",
                        "Top 10 business hacks",
                        "Harmen Joet",
                        3.2,
                        () {},
                        () {}),
                    ReadingListCard("assets/images/book-3.png", "اصل الأنواع",
                        "داروين", 4.5, () {}, () {}),
                  ],
                ),
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
                            TextSpan(text: "Best of the"),
                            TextSpan(
                                text: " day",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ]),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      width: double.infinity,
                      height: 205,
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              padding: EdgeInsets.only(
                                  left: 24, top: 24, right: size.width * .32),
                              height: 185,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(29),
                                color: Color(0XFFFAEAEA).withOpacity(.45),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "New York Time best for 11th March 2021",
                                    style: TextStyle(
                                        fontSize: 9, color: kLightBlackColor),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "How to win \nFriends & Influence",
                                    style: Theme.of(context).textTheme.title,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Gary Venchuk",
                                    style: TextStyle(color: kLightBlackColor),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      BookRating(4.0),
                                      SizedBox(width: 10),
                                      Expanded(
                                        child: Text(
                                          "When the earth was flat and everyone wanted to win the game of the best and people….",
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: kLightBlackColor),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            top: 0,
                            child: Image.asset("assets/images/book-3.png",
                                width: size.width * .37),
                          ),
                          Positioned(
                              bottom: 0,
                              right: 0,
                              child: SizedBox(
                                height: 40,
                                width: size.width * .3,
                                child: TwoSidesRoundedButton("Read", 18, () {}),
                              ))
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.display1,
                        children: [
                          TextSpan(text: "Continue"),
                          TextSpan(
                            text: " reading...",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 80,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(38.50),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 33,
                                color: Color(0XFFD3D3D3).withOpacity(.84))
                          ]),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(38.5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(left: 30, right: 20),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Crushing & Influence",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            "Gary Venchuk",
                                            style: TextStyle(
                                                color: kLightBlackColor),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: Text(
                                              "Chapter 7 of 10",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: kLightBlackColor),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          )
                                        ],
                                      ),
                                    ),
                                    Image.asset(
                                      "assets/images/book-1.png",
                                      width: 55,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 7,
                              width: size.width * .65,
                              decoration: BoxDecoration(
                                color: kProgressIndicator,
                                borderRadius: BorderRadius.circular(7),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
