import 'package:crypto_template/Screen/UI_Screen/Laundry_Apps/utils/helper.dart';
import 'package:crypto_template/Screen/UI_Screen/Laundry_Apps/widgets/app_button.dart';
import 'package:crypto_template/Screen/UI_Screen/Laundry_Apps/widgets/input_widget.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF999B84),
      body: SafeArea(
        bottom: false,
        child: Container(
          child: Stack(
            children: [
              Positioned(
                right: 0.0,
                top: -20.0,
                child: Opacity(
                  opacity: 0.3,
                  child: Image.asset(
                      "lib/Screen/UI_Screen/Laundry_Apps/assets/images/cloth_faded.png"),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 15.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Icon(
                                Icons.arrow_left,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 70.0,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Welcome Back",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(
                                        fontWeight: FontWeight.w800,
                                        color: Colors.white,
                                        fontFamily: "Sofia",
                                        fontSize: 32.0),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 70.0,
                      ),
                      Flexible(
                        child: Container(
                          width: double.infinity,
                          constraints: BoxConstraints(
                            minHeight:
                                MediaQuery.of(context).size.height - 180.0,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              topRight: Radius.circular(30.0),
                            ),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.all(24.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              SizedBox(
                                height: 30.0,
                              ),
                              // Lets make a generic input widget
                              InputWidget(
                                topLabel: "Email",
                                hintText: "Enter your email address",
                              ),
                              SizedBox(
                                height: 45.0,
                              ),
                              InputWidget(
                                topLabel: "Password",
                                obscureText: true,
                                hintText: "Enter your password",
                              ),
                              SizedBox(
                                height: 100.0,
                              ),
                              AppButton(
                                type: ButtonType.PRIMARY,
                                text: "Log In",
                                onPressed: () {
                                  nextScreen(context, "/dashboard");
                                },
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
