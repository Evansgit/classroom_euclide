import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Walkthrough extends StatefulWidget {
  @override
  _WalkthroughState createState() => _WalkthroughState();
}

class _WalkthroughState extends State<Walkthrough> {
  List pageInfos = [
    {
      "title": "Lorem Ipsum",
      "body":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
      "img": "https://images2.imgbox.com/a1/bf/2mU89ijt_o.png",
    },
    {
      "title": "Lorem Ipsum",
      "body":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
      "img": "https://images2.imgbox.com/d4/8a/iIeNlBaL_o.png",
    },
    {
      "title": "Lorem Ipsum",
      "body":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
      "img": "https://images2.imgbox.com/0b/eb/jtEbIimr_o.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    List<PageViewModel> pages = [
      for (int i = 0; i < pageInfos.length; i++) _buildPageModel(pageInfos[i])
    ];

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: IntroductionScreen(
        pages: pages,
        dotsDecorator: DotsDecorator(
          activeColor: Colors.redAccent,
        ),
        onDone: () {
          Navigator.pop(context);
        },
        onSkip: () {
          Navigator.pop(context);
        },
        showSkipButton: true,
        skip: Text(
          "Skip",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: Colors.grey,
          ),
        ),
        next: Text(
          "Next",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: Colors.blue,
          ),
        ),
        done: Container(
          padding:
              EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0, bottom: 10.0),
          decoration: BoxDecoration(
            color: Colors.pink[300],
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          child: Text(
            "Done",
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  _buildPageModel(Map item) {
    return PageViewModel(
      titleWidget: Text(item['title'],
          style: TextStyle(
            color: Colors.blue,
            fontSize: 28.0,
            fontWeight: FontWeight.w600,
          )),
      body: item['body'],
      image: Padding(
        padding: const EdgeInsets.only(
            top: 50.0, left: 15.0, right: 15.0, bottom: 15.0),
        child: CachedNetworkImage(
          imageUrl: item['img'],
        ),
      ),
      decoration: PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 28.0,
          fontWeight: FontWeight.w600,
          color: Colors.black12,
        ),
        bodyTextStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
//        ),
        pageColor: Colors.white,
      ),
    );
  }
}
