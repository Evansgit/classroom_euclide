import 'package:flutter/material.dart';

import 'model.dart';

class OnBoarding7 extends StatefulWidget {
  @override
  _OnBoarding7State createState() => _OnBoarding7State();
}

class _OnBoarding7State extends State<OnBoarding7> {
  int currentIndex = 0;
  PageController? _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 60.0,
                      ),
                      Image.asset(
                        contents[i].image!,
                        height: 300,
                      ),
                      SizedBox(
                        height: 35.0,
                      ),
                      Text(
                        contents[i].title!,
                        style: TextStyle(
                          fontFamily: "Sofia",
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        contents[i].discription!,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black26,
                            fontFamily: "Sofia",
                            fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contents.length,
                (index) => buildDot(index, context),
              ),
            ),
          ),
          Container(
            height: 60,
            margin: EdgeInsets.all(40),
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0.0, backgroundColor: Color(0xFFD16ACF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: Text(
                currentIndex == contents.length - 1 ? "Continue" : "Next",
                style: TextStyle(fontFamily: "Sofia", fontSize: 17.0),
              ),
              onPressed: () {
                if (currentIndex == contents.length - 1) {
                  Navigator.of(context).pop();
                }
                _controller!.nextPage(
                  duration: Duration(milliseconds: 100),
                  curve: Curves.bounceIn,
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFFD16ACF),
      ),
    );
  }
}
