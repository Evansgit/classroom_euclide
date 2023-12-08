import 'package:crypto_template/Screen/UI_Screen/Laundry_Apps/utils/constants.dart';
import 'package:crypto_template/Screen/UI_Screen/Laundry_Apps/utils/helper.dart';
import 'package:crypto_template/Screen/UI_Screen/Laundry_Apps/widgets/app_button.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF999B84),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 3,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Positioned(
                    top: 100.0,
                    left: 0.0,
                    right: 0.0,
                    child: Container(
                      height: 150.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              "lib/Screen/UI_Screen/Laundry_Apps/assets/images/cloth_faded.png"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 24.0,
                ),
                decoration: BoxDecoration(
                  color: Constants.scaffoldBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 40.0),
                    Text(
                      "Welcome To Wash App",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.w600,
                            fontFamily: "Sofia",
                            fontSize: 25.0,
                            color: Color.fromRGBO(19, 22, 33, 1),
                          ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Text(
                      "You can describe your laundry preferences and we'll return your items exactly as described you have one week to grab this offer before the activation code expires",
                      style: TextStyle(
                          textBaseline: TextBaseline.alphabetic,
                          fontFamily: "Sofia",
                          color: Color.fromRGBO(74, 77, 84, 1),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w300),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 100.0,
                    ),
                    // Let's create a generic button widget
                    AppButton(
                      text: "Sign In",
                      type: ButtonType.PLAIN,
                      onPressed: () {
                        nextScreen(context, "/login");
                      },
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    AppButton(
                      text: "Create Account",
                      type: ButtonType.PRIMARY,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
