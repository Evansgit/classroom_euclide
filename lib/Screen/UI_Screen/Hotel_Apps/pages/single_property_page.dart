import 'package:crypto_template/Screen/UI_Screen/Hotel_Apps/pages/booking_screen.dart';
import 'package:crypto_template/Screen/UI_Screen/Hotel_Apps/utils/helper.dart';
import 'package:crypto_template/Screen/UI_Screen/Hotel_Apps/widgets/property_features.dart';
import 'package:flutter/material.dart';


class SinglePropertyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Builder(builder: (BuildContext context) {
        double heightFromWhiteBg =
            size.height - 300.0; // height for white section
        return SingleChildScrollView(
          child: Container(
            height: size.height,
            child: Stack(
              children: [
                Positioned(
                  width: size.width,
                  child: Container(
                    height: size.height,
                    padding: EdgeInsets.symmetric(horizontal: 24.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: NetworkImage(
                            "https://images.pexels.com/photos/2417842/pexels-photo-2417842.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 350.0,
                  width: size.width,
                  child: Container(
                    height: heightFromWhiteBg,
                    padding: EdgeInsets.symmetric(
                      horizontal: 24.0,
                      vertical: 20.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Trevatel Hotel Room",
                              style: TextStyle(
                                fontSize: 23.0,
                                height: 1.5,
                                fontFamily: "Sofia",
                                color: Color.fromRGBO(33, 45, 82, 1),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30.0,
                        ),

                        //Property features
                        PropertyFeatures(),
                        SizedBox(
                          height: 30.0,
                        ),
                        Text(
                          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using.",
                          maxLines: 6,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 16.0,
                            height: 1.5,
                            fontFamily: "Sofia",
                            color: Colors.black45,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(
                          height: 50.0,
                        ),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.only(left: 16.0, right: 5.0),
                          height: 56,
                          decoration: BoxDecoration(
                            color: Color(0xFF76C893),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "\$20 / ",
                                      style: TextStyle(
                                        fontSize: 19.0,
                                        height: 1.5,
                                        fontFamily: "Sofia",
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    TextSpan(
                                      text: " night",
                                      style: TextStyle(
                                        fontSize: 19.0,
                                        height: 1.5,
                                        fontFamily: "Sofia",
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Helper.nextPage(context, BookingScreen());
                                },
                                child: Container(
                                  height: 45,
                                  alignment: Alignment.center,
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 16.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24.0),
                                    color: Colors.white,
                                  ),
                                  child: Text(
                                    "Booking Now",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontFamily: "Sofia",
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
