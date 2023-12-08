import 'package:flutter/material.dart';

class BookingPropertyFeatures extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      padding: EdgeInsets.symmetric(vertical: 20.0),
      decoration: BoxDecoration(
        color: Color(0xFF76C893).withOpacity(0.05),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        children: [
          item("Room", "3"),
          item("Bathroom", "2"),
          item("Sofa", "1"),
        ],
      ),
    );
  }
}

Widget item(String title, String count) {
  return Expanded(
    child: Container(
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(
            color: Color.fromRGBO(138, 150, 190, 0.2),
          ),
        ),
      ),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(fontFamily: "Sofia"),
          ),
          Text(
            count,
            style: TextStyle(fontFamily: "Sofia"),
          ),
        ],
      ),
    ),
  );
}
