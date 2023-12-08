import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class HomePin extends StatefulWidget {
  HomePin({Key? key}) : super(key: key);

  @override
  _HomePinState createState() => _HomePinState();
}

class _HomePinState extends State<HomePin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECF2F9),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 45.0, left: 20.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/boxHome.png"))),
                  child: Center(
                    child: Image.asset(
                        "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/menuHome.png"),
                  ),
                ),
              ),
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 110.0, left: 20.0, right: 20.0),
                  child: Container(
                    height: 18.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(40.0),
                            topLeft: Radius.circular(40.0)),
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xFF16B1FF),
                              Color(0xFF0979FF),
                              Color(0xFF0979FF),
                            ]),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12.withOpacity(0.08),
                            blurRadius: 10.0,
                            spreadRadius: 3.0,
                          )
                        ]),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 80.0),
                    child: Container(
                      height: 100.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12.withOpacity(0.08),
                              blurRadius: 10.0,
                              spreadRadius: 3.0,
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/key.png",
                            height: 25.0,
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Image.asset(
                            "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/lock.png",
                            height: 35.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Center(
              child: Text(
                "PIN",
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontSize: 27.0,
                    fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Center(
              child: Text(
                "Enter your pin number to continue",
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontSize: 16.0,
                    fontWeight: FontWeight.w200),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 0.0, left: 0.0, top: 30.0),
              child: Center(
                child: PinCodeTextField(
                  defaultBorderColor: Color(0xFF0979FF).withOpacity(0.2),
                  controller: new TextEditingController(),
                  highlightColor: Colors.white,
                  pinBoxColor: Colors.white,
                  maxLength: 4,
                  pinBoxHeight: 55,
                  pinBoxWidth: 55,
                ),
              ),
            ),
            SizedBox(
              height: 35.0,
            ),
            Container(
              height: 35.0,
              width: 125.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  color: Color(0xFFECF2F9),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12.withOpacity(0.08),
                      blurRadius: 10.0,
                      spreadRadius: 3.0,
                    )
                  ]),
              child: Center(
                  child: Text(
                "I Forgot the PIN",
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w300,
                    fontFamily: "Sofia",
                    letterSpacing: 0.9),
              )),
            ),
            SizedBox(
              height: 30.0,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "OR",
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontWeight: FontWeight.w800,
                    fontSize: 22.0),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              "Your Face ID",
              style: TextStyle(
                  color: Colors.black45,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w300,
                  fontFamily: "Sofia",
                  letterSpacing: 0.9),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              height: 59.0,
              width: 59.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/boxHome.png"))),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/faceId.png",
                    color: Color(0xFF16B1FF),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
