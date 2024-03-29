import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'Buttons/Animations_Buttons.dart';
import 'Buttons/Basic_Buttons.dart';
import 'Buttons/Bouncing_Buttons.dart';
import 'Buttons/Gradient_Buttons.dart';
import 'Buttons/Toggle_Buttons.dart';
import 'Buttons/Utilities_Buttons.dart';

class ListButtons extends StatefulWidget {
  ListButtons({Key? key}) : super(key: key);

  @override
  _ListButtonsState createState() => _ListButtonsState();
}

class _ListButtonsState extends State<ListButtons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 60.0),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 25.0,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: BasicButtons(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xffFF5B95),
                        Color(0xffF8556D),
                      ], Color(0xFF15EDED), "Basic Buttons",
                          "assets/images/button.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: UtilitiesButtons(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xffFF5B95),
                        Color(0xffF8556D),
                      ], Color(0xFF15EDED), "Utilities Buttons",
                          "assets/images/button.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: GradientButtons(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xffFF5B95),
                        Color(0xffF8556D),
                      ], Color(0xFF15EDED), "Gradient Buttons",
                          "assets/images/button.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: ToggleButtonsMaterial(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xffFF5B95),
                        Color(0xffF8556D),
                      ], Color(0xFF15EDED), "Toggle Buttons",
                          "assets/images/button.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: BouncingButton(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xffFF5B95),
                        Color(0xffF8556D),
                      ], Color(0xFF15EDED), "Bouncing Buttons",
                          "assets/images/button.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: AnimationsButtons(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xffFF5B95),
                        Color(0xffF8556D),
                      ], Color(0xFF15EDED), "Animation Buttons",
                          "assets/images/button.png")),
                  SizedBox(
                    height: 30.0,
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 80.0,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color(0xffFF5B95),
                Color(0xffF8556D),
              ])),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, left: 20.0),
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Text(
                        "List Buttons",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontFamily: "Sofia",
                            fontSize: 18.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40.0,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget card(
    List<Color> _colorGradient, Color _colorShadow, String _title, _image) {
  return Padding(
    padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 15.0),
    child: Container(
      height: 80.0,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: _colorGradient,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          boxShadow: [
            BoxShadow(
                color: Color(0xFF63AEED).withOpacity(0.2),
                blurRadius: 10.0,
                spreadRadius: 5.1,
                offset: Offset(3, 10))
          ]),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Row(
            children: [
              Image.asset(
                _image,
                height: 20.0,
                color: Colors.white,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(
                  _title,
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontSize: 19.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
