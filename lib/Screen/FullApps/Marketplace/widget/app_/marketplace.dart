import 'package:flutter/material.dart';

class MarketPlaceText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            "Marketplace",
            style: TextStyle(
              fontFamily: 'Sofia',
              fontWeight: FontWeight.w400,
              fontSize: 33.0,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'connect buyer to seller',
            style: TextStyle(
                fontFamily: "Sofia",
                fontWeight: FontWeight.w300,
                fontSize: 15.0,
                color: Colors.white),
          )
        ],
      ),
    );
  }
}
