import 'package:flutter/material.dart';

enum ButtonType { PRIMARY, PLAIN }

class AppButton extends StatelessWidget {
  final ButtonType? type;
  final VoidCallback? onPressed;
  final String? text;

  AppButton({this.type, this.onPressed, this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.onPressed,
      child: Container(
        width: double.infinity,
        height: 55.0,
        decoration: BoxDecoration(
          color: getButtonColor(type),
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(169, 176, 185, 0.42),
              spreadRadius: 0,
              blurRadius: 8.0,
              offset: Offset(0, 2),
            )
          ],
        ),
        child: Center(
          child: Text(
            this.text!,
            style: TextStyle(
              color: getTextColor(type),
              fontFamily: "Sofia",
              fontSize: 19.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

Color getButtonColor(ButtonType? type) {
  switch (type) {
    case ButtonType.PRIMARY:
      return Color(0xFF999B84);
    case ButtonType.PLAIN:
      return Colors.white;
    default:
      return Color(0xFF999B84);
  }
}

Color getTextColor(ButtonType? type) {
  switch (type) {
    case ButtonType.PLAIN:
      return Color(0xFF999B84);
    case ButtonType.PRIMARY:
      return Colors.white;
    default:
      return Colors.white;
  }
}
