import 'package:crypto_template/Screen/UI_Screen/Laundry_Apps/widgets/latest_orders.dart';
import 'package:crypto_template/Screen/UI_Screen/Laundry_Apps/widgets/location_slider.dart';
import 'package:flutter/material.dart';


class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  // Track active index
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF999B84),
      body: Stack(
        children: [
          Positioned(
            right: 0.0,
            top: -20.0,
            child: Opacity(
              opacity: 0.3,
              child: Image.asset(
                "lib/Screen/UI_Screen/Laundry_Apps/assets/images/washing_machine_illustration.png",
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: kToolbarHeight,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.0,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 50.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                      text: "Welcome,\n",
                                      style: TextStyle(
                                          fontFamily: "Sofia",
                                          fontWeight: FontWeight.w700,
                                          fontSize: 27.0)),
                                  TextSpan(
                                      text: "Kakuzu Bugo!",
                                      style: TextStyle(
                                          fontFamily: "Sofia",
                                          fontWeight: FontWeight.w700,
                                          fontSize: 27.0))
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height - 200.0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ),
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 24.0,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 1.0),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Category",
                                style: TextStyle(
                                    color: Color.fromRGBO(19, 22, 33, 1),
                                    fontSize: 18.0,
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "View All",
                                style: TextStyle(
                                  color: Colors.black26,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 100.0,
                          child: Center(
                            // lets make a widget for the cards
                            child: LocationSlider(),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 50.0, bottom: 30.0, left: 20.0, right: 20.0),
                          child: Container(
                            height: 150.0,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Color(0xFF92967D).withOpacity(0.7)),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 0.0, left: 20.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Get Free Laundry",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: "Sofia",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 19.0),
                                      ),
                                      Text(
                                        "Service for prayer mat",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: "Sofia",
                                            fontWeight: FontWeight.w200,
                                            fontSize: 17.0),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: Image.asset(
                                      "lib/Screen/UI_Screen/Laundry_Apps/assets/images/icon5.png"),
                                )
                              ],
                            ),
                          ),
                        ),
                        LatestOrders(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
