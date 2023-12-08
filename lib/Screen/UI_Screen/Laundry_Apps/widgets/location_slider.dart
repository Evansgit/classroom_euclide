import 'package:crypto_template/Screen/UI_Screen/Laundry_Apps/models/location.dart';
import 'package:flutter/material.dart';

class LocationSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Model to represent each card

    // Make a list to represent each card
    List<Location> locations = [
      Location(
        address: "Dry Wash",
        color: Color(0xFF92967D),
        state: "Bucharest",
        imagePath: "lib/Screen/UI_Screen/Laundry_Apps/assets/images/icon1.png",
      ),
      Location(
        address: "Wash",
        color: Color(0xFFC8C6A7),
        state: "Bucharest",
        imagePath: "lib/Screen/UI_Screen/Laundry_Apps/assets/images/icon2.png",
      ),
      Location(
        address: "Ironing",
        color: Color(0xFF99BBAD),
        state: "Bucharest",
        imagePath: "lib/Screen/UI_Screen/Laundry_Apps/assets/images/icon3.png",
      ),
      Location(
        address: "Clean",
        color: Color.fromRGBO(237, 116, 41, 1),
        state: "Bucharest",
        imagePath: "lib/Screen/UI_Screen/Laundry_Apps/assets/images/icon4.png",
      ),
    ];
    return Container(
      height: 140.0,
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {},
            child: Container(
              width: 110.0,
              decoration: BoxDecoration(
                color: locations[index].color,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(169, 176, 185, 0.42),
                    spreadRadius: 0,
                    blurRadius: 8.0,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              padding: EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 12.0,
              ),
              child: Stack(
                children: [
                  Positioned(
                    right: -5.0,
                    top: 40.0,
                    child: Image.asset(
                      locations[index].imagePath!,
                      height: 37.0,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "${locations[index].address}",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: "Sofia",
                            height: 1.5,
                            fontSize: 17.0,
                          ),
                        ),
                        // TextSpan(
                        //   text: locations[index].state,
                        //   style: TextStyle(
                        //     fontSize: 16.0,
                        //   ),
                        // )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 15.0,
          );
        },
        itemCount: locations.length,
      ),
    );
  }
}
