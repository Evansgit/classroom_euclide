
import 'package:flutter/material.dart';

class LoginScreen2 extends StatelessWidget {
  const LoginScreen2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var boxDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      border: Border.all(color: Constants.black_s3, width: 4),
    );
    var textStyle = TextStyle(fontSize: 18);
    var linearGradient =
        LinearGradient(colors: [Color(0xFF278EFF), Color(0xFF6271FF)]);

    var textStyle2 = TextStyle(color: Colors.white, fontSize: 18);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Constants.black_s1,
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 26, horizontal: 12),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                        padding: const EdgeInsets.all(12.0),
                        alignment: Alignment.center,
                        decoration: boxDecoration,
                        child: Icon(
                          Icons.arrow_back_ios_rounded,
                          color: Colors.white,
                          size: 26.0,
                        )),
                    const SizedBox(
                      width: 24.0,
                    ),
                    Center(
                      child: Text(
                        "Log in",
                        style: TextStyle(
                            fontFamily: "Sofia",
                            fontSize: 36.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
                Text(
                  'Log in with one of following options',
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 16.0,
                    fontFamily: "Sofia",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                        child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        alignment: Alignment.center,
                        decoration: boxDecoration.copyWith(color: Colors.white),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(Constants.ic_google, width: 24),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "Google",
                                  style: TextStyle(
                                      fontFamily: "Sofia",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15.0),
                                ),
                              )
                            ]),
                      ),
                    )),
                    const SizedBox(width: 20.0),
                    Expanded(
                        child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        decoration: boxDecoration.copyWith(color: Colors.white),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(Constants.ic_apple, width: 24),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "Facebook",
                                  style: TextStyle(
                                      fontFamily: "Sofia",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15.0),
                                ),
                              )
                            ]),
                      ),
                    )),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Email',
                  style: textStyle,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  style: textStyle2,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                        fontFamily: "Sofia",
                        color: Colors.white,
                        fontSize: 16.0),
                    hintText: 'Enter your email',
                    filled: true,
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 16.0),
                    fillColor: Constants.black_s2,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Passsword',
                  style: textStyle,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  style: textStyle2,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                        fontFamily: "Sofia",
                        color: Colors.white,
                        fontSize: 16.0),
                    hintText: 'Enter your password',
                    filled: true,
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 16.0),
                    fillColor: Constants.black_s2,
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return LoginScreen2();
                    }));
                  },
                  child: Container(
                    width: double.infinity,
                    height: 56,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(38.0),
                        gradient: linearGradient),
                    child: Text(
                      'Log in',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Sofia",
                          color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                            color: Colors.white54,
                            fontSize: 16.0,
                            fontFamily: "Sofia"),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Sign up',
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Constants {
  static const Color black_s1 = Color(0xff101010);
  static const Color black_s2 = Color(0xff232323);
  static const Color black_s3 = Color(0xff323232);
  static const Color white = Color(0xffffffff);
  static const Color pink = Color(0xFF278EFF);
  static const Color purple_pink = Color(0xffB615DE);
  static const String ic_apple =
      'lib/Screen/FullApps/SunriseMart/Assets/facebook.jpg';
  static const String ic_google =
      'lib/Screen/FullApps/SunriseMart/Assets/google.jpg';
}
