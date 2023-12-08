
import 'package:flutter/material.dart';

import '../../../../Library/Constant/Slideanimation.dart';

class SplashScreen31 extends StatefulWidget {
  SplashScreen31({Key? key}) : super(key: key);

  @override
  _SplashScreen31State createState() => _SplashScreen31State();
}

class _SplashScreen31State extends State<SplashScreen31>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 2000));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                  Colors.blueAccent,
                  Color.fromARGB(255, 108, 180, 238)
                ],
                    stops: [
                  0,
                  1
                ])),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    'https://images2.imgbox.com/eb/38/Lj9XMPYT_o.png',
                    color: Colors.white,
                    width: 150,
                    height: 150,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  SlideAnimation(
                    position: 3,
                    itemCount: 8,
                    slideDirection: SlideDirection.fromRight,
                    animationController: _animationController,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 33.0, top: 20.0, bottom: 10.0),
                        child: Text(
                          "Biggest Kit",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 35),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  SlideAnimation(
                    position: 3,
                    itemCount: 8,
                    slideDirection: SlideDirection.fromRight,
                    animationController: _animationController,
                    child: GestureDetector(
                      onTap: () {
                        //Navigator.pop(context);
                      },
                      child: Container(
                          alignment: Alignment.center,
                          child: Text("Lorem ipsum sir amet color de luxa",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
                              ))),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  back() {
    return BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.blueAccent, Color.fromARGB(255, 108, 180, 238)],
          stops: [0, 1]),
    );
  }
}
