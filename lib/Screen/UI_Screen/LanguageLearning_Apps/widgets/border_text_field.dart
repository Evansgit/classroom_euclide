import 'package:flutter/material.dart';

class BorderTextField extends StatelessWidget {
  final String? hintText;
  final bool obscureText;
  final Icon? suffixIcon;
  final Icon? prefixIcon;
  final double borderRadius;

  BorderTextField(
      {this.hintText,
      this.obscureText = false,
      this.suffixIcon,
      this.prefixIcon,
      this.borderRadius = 8.0});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.0),
      width: double.infinity,
      height: 49,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(this.borderRadius),
        boxShadow: [
          BoxShadow(
            color: Colors.black12.withOpacity(0.05),
            spreadRadius: 0,
            blurRadius: 8,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 2.0, top: 2.0),
        child: TextFormField(
          obscureText: this.obscureText,
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: this.prefixIcon,
            ),
            contentPadding: EdgeInsets.only(left: 10),
            prefixIconConstraints: BoxConstraints(minWidth: 0.0),
            suffixIcon: this.suffixIcon,
            border: InputBorder.none,
            hintText: this.hintText,
            hintStyle: TextStyle(
              fontFamily: "Sofia",
              fontSize: 15.0,
              color: Color.fromRGBO(169, 176, 185, 1),
            ),
          ),
        ),
      ),
    );
  }
}
