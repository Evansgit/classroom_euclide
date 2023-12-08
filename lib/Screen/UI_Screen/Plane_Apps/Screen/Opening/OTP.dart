import 'package:crypto_template/Library/Animation/FadeAnimation.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'IDVerification.dart';

class ConfirmOtpPage extends StatefulWidget {
  @override
  _ConfirmOtpPageState createState() => _ConfirmOtpPageState();
}

class _ConfirmOtpPageState extends State<ConfirmOtpPage> {
  TextEditingController otp1 = TextEditingController(text: '1');
  TextEditingController otp2 = TextEditingController(text: '2');
  TextEditingController otp3 = TextEditingController(text: '3');
  TextEditingController otp4 = TextEditingController(text: '4');
  TextEditingController otp5 = TextEditingController(text: '5');

  Widget otpBox(TextEditingController otpController) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/otpContainer.png"))),
      child: Center(
        child: SizedBox(
          width: 9,
          child: Padding(
            padding: const EdgeInsets.only(top: 2.0),
            child: TextField(
              obscureText: true,
              controller: otpController,
              decoration: InputDecoration(
                  border: InputBorder.none, contentPadding: EdgeInsets.zero),
              style: TextStyle(fontSize: 15.0, color: Color(0xFF0979FF)),
              keyboardType: TextInputType.phone,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget title = Padding(
        padding: EdgeInsets.only(left: 20.0, top: 15.0, right: 20.0),
        child: FadeAnimation(
          0.6,
          Column(
            children: [
              Text(
                'Confirm Email Address',
                style: TextStyle(
                  color: Color(0xFF0979FF),
                  fontSize: 22.0,
                  fontWeight: FontWeight.w800,
                  fontFamily: "Sofia",
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: Text(
                  'Enter the 4 digit verification code just sent to h****@email.com',
                  style: TextStyle(
                    color: Color(0xFF0979FF),
                    fontSize: 13.0,
                    fontWeight: FontWeight.w800,
                    fontFamily: "Sofia",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ));

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(new FocusNode()),
      child: Scaffold(
        backgroundColor: Color(0xFFECF2F9),
        body: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 0.0, right: 10.0),
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 0.0, top: 10.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            height: 65.0,
                            width: 110.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/backContainer.png",
                                    ),
                                    fit: BoxFit.cover)),
                            child: Padding(
                              padding: const EdgeInsets.only(right: 25.0),
                              child: Icon(
                                Icons.arrow_back,
                                color: Color(0xFF0979FF),
                                size: 25.0,
                              ),
                            ),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 11.0,
                  ),
                  Lottie.asset(
                      "lib/Screen/UI_Screen/Plane_Apps/Assets/emailSent.json",
                      height: 150.0,
                      width: 500.0),
                  title,
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 0.0, left: 20.0),
                    child: Center(
                      child: FadeAnimation(
                        0.9,
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              otpBox(otp1),
                              otpBox(otp2),
                              otpBox(otp3),
                              otpBox(otp4),
                            ]),
                        // PinCodeTextField(

                        //   controller: new TextEditingController(),
                        //   highlightColor: Colors.white,
                        //   pinBoxColor: Colors.white,
                        //   maxLength: 5,
                        //   pinBoxHeight: 55,
                        //   pinBoxWidth: 55,
                        // ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 32.0, right: 32.0, top: 50.0, bottom: 15.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(PageRouteBuilder(
                              pageBuilder: (_, __, ___) => new Verification()));
                        },
                        child: Container(
                          height: 48.0,
                          width: 115.0,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40.0)),
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
                          child: Center(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Verify",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Sofia",
                                    letterSpacing: 0.9),
                              ),
                            ],
                          )),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Didn’t receive a code?',
                    style: TextStyle(
                      color: Color(0xFF0979FF),
                      fontSize: 13.0,
                      fontWeight: FontWeight.w800,
                      fontFamily: "Sofia",
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 32.0, right: 32.0, top: 15.0, bottom: 30.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(PageRouteBuilder(
                              pageBuilder: (_, __, ___) =>
                                  new ConfirmOtpPage()));
                        },
                        child: Container(
                          height: 48.0,
                          width: 115.0,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40.0)),
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
                          child: Center(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Resend",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Sofia",
                                    letterSpacing: 0.9),
                              ),
                            ],
                          )),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
