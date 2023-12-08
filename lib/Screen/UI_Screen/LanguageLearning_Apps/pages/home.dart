import 'package:crypto_template/Screen/UI_Screen/LanguageLearning_Apps/widgets/primary_button.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'create_account.dart';
import 'dashboard.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 40.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 32.0),
                child: Image.asset(
                    "lib/Screen/UI_Screen/LanguageLearning_Apps/assets/images/home.jpg"),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22.0),
                child: Text(
                  "Welcome to DuoLanguage App",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: "Sofia",
                    fontWeight: FontWeight.w600,
                    color: Constants.primaryTextColor,
                  ),
                ),
              ),
              SizedBox(
                height: 35.0,
              ),
              Text(
                "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.0,
                  fontFamily: "Sofia",
                  color: Constants.captionTextColor,
                ),
              ),
              SizedBox(
                height: 35.0,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return Dashboard();
                      },
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(169, 176, 185, 0.42),
                        spreadRadius: 0,
                        blurRadius: 8,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        fontFamily: "Sofia",
                        color: Colors.black45,
                        fontSize: 17.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              PrimaryButton(
                text: "Create An Account",
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return CreateAccount();
                      },
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
