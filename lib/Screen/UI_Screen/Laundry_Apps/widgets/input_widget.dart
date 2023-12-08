import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final String? hintText;
  final IconData? prefixIcon;
  final double height;
  final String topLabel;
  final bool obscureText;

  InputWidget({
    this.hintText,
    this.prefixIcon,
    this.height = 48.0,
    this.topLabel = "",
    this.obscureText = false,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          this.topLabel,
          style: TextStyle(
              fontFamily: "Sofia", fontSize: 18.0, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 5.0),
        Container(
          height: height,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: TextFormField(
            obscureText: this.obscureText,
            decoration: InputDecoration(
              prefixIcon: this.prefixIcon == null
                  ? this.prefixIcon as Widget?
                  : Icon(
                      this.prefixIcon,
                      color: Color.fromRGBO(105, 108, 121, 1),
                    ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFF999B84),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFF999B84),
                ),
              ),
              hintText: this.hintText,
              hintStyle: TextStyle(
                fontFamily: "Sofia",
                fontSize: 14.0,
                color: Color.fromRGBO(105, 108, 121, 0.7),
              ),
            ),
          ),
        )
      ],
    );
  }
}
