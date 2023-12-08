import 'package:crypto_template/Screen/UI_Screen/Hotel_Apps/widgets/input_widget.dart';
import 'package:flutter/material.dart';

class RegisterForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Email",
            style: TextStyle(
              fontSize: 15.0,
              fontFamily: "Sofia",
              height: 1.5,
              color: Color.fromRGBO(138, 150, 191, 1),
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          InputWidget(),
          SizedBox(height: 10.0),
          Text(
            "Password",
            style: TextStyle(
              fontSize: 15.0,
              fontFamily: "Sofia",
              height: 1.5,
              color: Color.fromRGBO(138, 150, 191, 1),
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          InputWidget(obscureText: true),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "Confirm Password",
            style: TextStyle(
              fontSize: 15.0,
              fontFamily: "Sofia",
              height: 1.5,
              color: Color.fromRGBO(138, 150, 191, 1),
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          InputWidget(obscureText: true),
        ],
      ),
    ));
  }
}
