import 'package:crypto_template/Screen/UI_Screen/Hotel_Apps/models/property.dart';
import 'package:crypto_template/Screen/UI_Screen/Hotel_Apps/pages/single_property_page.dart';
import 'package:crypto_template/Screen/UI_Screen/Hotel_Apps/utils/helper.dart';
import 'package:flutter/material.dart';

class HouseCard extends StatelessWidget {
  final Property? house;
  HouseCard({this.house});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Helper.nextPage(context, SinglePropertyPage());
      },
      child: Container(
        height: 300,
        width: 255,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          //   color: Color(0xFFF4F5F6),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      house!.imagePath!,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    house!.name!,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color.fromRGBO(33, 45, 82, 1),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    house!.description!,
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Color.fromRGBO(138, 150, 190, 1),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: house!.price! + " /Night",
                              style: TextStyle(
                                fontFamily: "Sofia",
                                color: Color(0xFF76C893),
                                fontWeight: FontWeight.w600,
                                fontSize: 18.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
