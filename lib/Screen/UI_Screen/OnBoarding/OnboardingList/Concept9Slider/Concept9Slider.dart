import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'model.dart';

class OnBoarding9 extends StatefulWidget {
  OnBoarding9({Key? key}) : super(key: key);

  @override
  _OnBoarding9State createState() => _OnBoarding9State();
}

class _OnBoarding9State extends State<OnBoarding9> {
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
      body: Stack(
        children: [
          Container(
            color: Color(0xFF5CAEAA),
          ),
          Container(
            width: context.screenWidth,
            height: context.percentHeight * 80,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60),
                )),
            child: Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: contents9.length,
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
                          contents9[i].image!,
                          height: 300,
                        ),
                        SizedBox(
                          height: 35.0,
                        ),
                        Text(
                          contents9[i].title!,
                          style: TextStyle(
                            fontFamily: "Sofia",
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          contents9[i].discription!,
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
          ),
          Positioned(
            child: Container(
              height: context.percentHeight * 15,
              child: VStack(
                [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        contents9.length,
                        (index) => buildDot(index, context),
                      ),
                    ),
                  ),
                  16.heightBox,
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 50.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0))),
                        child: Center(
                          child: Text(
                            "Get Started",
                            style: TextStyle(
                                fontFamily: "Sofia",
                                color: Color(0xFF5CAEAA),
                                fontWeight: FontWeight.w700,
                                fontSize: 17.0),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
                alignment: MainAxisAlignment.start,
              ).wFull(context),
            ),
            bottom: 24,
          ),
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
        color: Colors.white,
      ),
    );
  }
}
