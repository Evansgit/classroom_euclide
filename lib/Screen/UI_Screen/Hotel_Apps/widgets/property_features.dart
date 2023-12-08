import 'package:flutter/material.dart';

class PropertyFeatures extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          item(Icons.people_alt, "4 People"),
          SizedBox(
            width: 10.0,
          ),
          item(Icons.king_bed_rounded, "2 Room"),
          SizedBox(
            width: 10.0,
          ),
          item(Icons.wc, "3 Toilet")
        ],
      ),
    );
  }
}

Widget item(IconData icon, String text) {
  return Expanded(
    child: Container(
      height: 40.0,
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            size: 16.0,
            color: Color(0xFF494A6A),
          ),
          SizedBox(
            width: 5.0,
          ),
          Text(text,
              style: TextStyle(
                  fontFamily: "Sofia", fontSize: 12.0, color: Colors.grey))
        ],
      ),
    ),
  );
}
