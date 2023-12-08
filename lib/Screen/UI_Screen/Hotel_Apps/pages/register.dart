import 'package:crypto_template/Screen/UI_Screen/Hotel_Apps/widgets/register_form.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.backspace,
            color: Color.fromRGBO(33, 45, 82, 1),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Builder(builder: (BuildContext context) {
          return Container(
            height: _size.height -
                Scaffold.of(context)
                    .appBarMaxHeight!, //Body height removing appbar height
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Wrap(
                  runAlignment: WrapAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 30.0),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 0.5),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      width: double.infinity,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 90.0),
                            child: Text(
                              "Create Account",
                              style: TextStyle(
                                fontSize: 35.0,
                                fontFamily: "Sofia",
                                color: Color.fromRGBO(33, 45, 82, 1),
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          //Leta take the form to a new page
                          RegisterForm(),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                // PrimaryButton(
                //   text: "Sign Up",
                //   onPressed: () {
                //     Helper.nextPage(context, Dashboard());
                //   },
                // ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        "lib/Screen/FullApps/SunriseMart/Assets/google.jpg",
                        height: 35.0,
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        "lib/Screen/UI_Screen/Hotel_Apps/assets/images/facebook.jpg",
                        height: 39.0,
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
