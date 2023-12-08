import 'package:flutter/material.dart';


class PrimaryButton extends StatelessWidget {
  final String? text;
  final Function? onPressed;
  PrimaryButton({this.text, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.onPressed as void Function()?,
      child: Container(
        width: double.infinity,
        height: 55.0,
        decoration: BoxDecoration(
          color: Color(0xFF94D0CC),
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
            this.text!,
            style: TextStyle(
              fontFamily: "Sofia",
              color: Colors.white,
              fontSize: 17.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
