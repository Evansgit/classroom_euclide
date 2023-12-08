import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Home2 extends StatefulWidget {
  Home2({Key? key}) : super(key: key);

  @override
  _Home2State createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECF2F9),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 45.0, left: 20.0),
                  child: Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/boxHome.png"))),
                    child: Center(
                      child: Image.asset(
                          "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/menuHome.png"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 45.0, right: 20.0),
                  child: Container(
                    height: 50.0,
                    width: 50.0,
                    child: Center(
                        child: Icon(
                      Icons.home,
                      color: Color(0xFF0979FF),
                    )),
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 25.0, top: 10.0, bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    size: 19,
                    color: Color(0xFF0979FF),
                  ),
                  SizedBox(
                    width: 1.0,
                  ),
                  Text(
                    "Back",
                    style: TextStyle(
                        fontFamily: "Sofia",
                        color: Color(0xFF0979FF),
                        fontWeight: FontWeight.w800),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),

              ///
              /// Credit Card slider
              ///
              child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 5 / 10,
                  autoPlay: true,
                  viewportFraction: 1.0,
                  height: 250.0,
                ),
                items: [0, 1, 2, 3, 4].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: _cardHeader(),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Activity",
                    style: TextStyle(
                        fontFamily: "Sofia",
                        fontWeight: FontWeight.w800,
                        fontSize: 24.0),
                  ),
                  InkWell(
                    onTap: () {
                      showSheet(context);
                    },
                    child: Container(
                        height: 40.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(80.0)),
                            color: Color(0xFFECF2F9),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10.0,
                                spreadRadius: 4.0,
                                color: Colors.black12.withOpacity(0.1),
                              )
                            ]),
                        child: Center(
                            child: Text(
                          "Expand",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              color: Colors.black45,
                              fontWeight: FontWeight.w800,
                              fontSize: 15.0),
                        ))),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0.0, right: 0.0, top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                        height: 35.0,
                        width: 80.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(80.0)),
                          color: Color(0xFF0979FF),
                        ),
                        child: Center(
                            child: Text(
                          "Day",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: 15.0),
                        ))),
                  ),
                  Text(
                    "Week",
                    style: TextStyle(
                        fontFamily: "Sofia",
                        color: Colors.black45,
                        fontWeight: FontWeight.w800,
                        fontSize: 15.0),
                  ),
                  Text(
                    "Month",
                    style: TextStyle(
                        fontFamily: "Sofia",
                        color: Colors.black45,
                        fontWeight: FontWeight.w800,
                        fontSize: 15.0),
                  ),
                  Text(
                    "Year",
                    style: TextStyle(
                        fontFamily: "Sofia",
                        color: Colors.black45,
                        fontWeight: FontWeight.w800,
                        fontSize: 15.0),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 10.0),
              child: Image.asset(
                "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/grafik.png",
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "December",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontWeight: FontWeight.w800,
                      fontSize: 24.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ///
  /// Widget credit card transaction
  ///
  Widget _cardHeader() {
    return Stack(
      children: <Widget>[
        Container(
          height: 250.0,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF4FAFF8), Color(0xFF458DEB)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 70.0,
                  width: 70.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(120.0)),
                    border: Border.all(color: Color(0xFF0979FF), width: 2.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12.withOpacity(0.2),
                          blurRadius: 10.0,
                          offset: const Offset(8.0, 5.0),
                          spreadRadius: 4.0)
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(3.0),
                    child: Image.asset(
                        "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/schoolConnection.png"),
                  ),
                ),
                SizedBox(
                  height: 17.0,
                ),
                Text(
                  "University of San Diego",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      color: Colors.white,
                      fontSize: 17.0,
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Connected on",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "12/12/200",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      color: Colors.white60,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            height: 170.0,
            width: 170.0,
            decoration: BoxDecoration(
                color: Colors.white10.withOpacity(0.1),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(200.0),
                    topRight: Radius.circular(20.0))),
          ),
        ),
      ],
    );
  }
}

void showSheet(context) {
  showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 550,
          color: Color(0xFFECF2F9),
          child: Wrap(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "All Statistics",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          fontWeight: FontWeight.w800,
                          fontSize: 24.0),
                    ),
                    Column(
                      children: [
                        Container(
                          height: 45.0,
                          width: 45.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(120.0)),
                            border: Border.all(
                                color: Colors.transparent, width: 2.0),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12.withOpacity(0.2),
                                  blurRadius: 10.0,
                                  offset: const Offset(8.0, 5.0),
                                  spreadRadius: 4.0)
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(0.0),
                            child: Image.asset(
                                "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/schoolConnection.png"),
                          ),
                        ),
                        SizedBox(
                          height: 4.0,
                        ),
                        Container(
                          width: 70.0,
                          child: Text(
                            "University of San Diego",
                            style: TextStyle(
                                fontFamily: "Sofia",
                                fontSize: 11.0,
                                color: Colors.black26),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 0.0, right: 0.0, top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        height: 35.0,
                        width: 80.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(80.0)),
                          color: Color(0xFF0979FF),
                        ),
                        child: Center(
                            child: Text(
                          "Day",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: 15.0),
                        ))),
                    Container(
                        height: 35.0,
                        width: 80.0,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(80.0)),
                            color: Color(0xFFECF2F9),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12.withOpacity(0.1),
                                  blurRadius: 5.0,
                                  spreadRadius: 2.0)
                            ]),
                        child: Center(
                          child: Text(
                            "Week",
                            style: TextStyle(
                                fontFamily: "Sofia",
                                color: Colors.black26,
                                fontWeight: FontWeight.w800,
                                fontSize: 15.0),
                          ),
                        )),
                    Container(
                        height: 35.0,
                        width: 80.0,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(80.0)),
                            color: Color(0xFFECF2F9),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12.withOpacity(0.1),
                                  blurRadius: 5.0,
                                  spreadRadius: 2.0)
                            ]),
                        child: Center(
                          child: Text(
                            "Month",
                            style: TextStyle(
                                fontFamily: "Sofia",
                                color: Colors.black26,
                                fontWeight: FontWeight.w800,
                                fontSize: 15.0),
                          ),
                        )),
                    Container(
                        height: 35.0,
                        width: 80.0,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(80.0)),
                            color: Color(0xFFECF2F9),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12.withOpacity(0.1),
                                  blurRadius: 5.0,
                                  spreadRadius: 2.0)
                            ]),
                        child: Center(
                          child: Text(
                            "Year",
                            style: TextStyle(
                                fontFamily: "Sofia",
                                color: Colors.black26,
                                fontWeight: FontWeight.w800,
                                fontSize: 15.0),
                          ),
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                child: Image.asset(
                    "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/grafik.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Activity",
                    style: TextStyle(
                        fontFamily: "Sofia",
                        fontWeight: FontWeight.w800,
                        fontSize: 24.0),
                  ),
                ),
              ),
              Stack(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        height: 120.0,
                        width: MediaQuery.of(context).size.width / 2.3,
                        decoration: BoxDecoration(
                            color: Color(0xFFECF2F9),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12.withOpacity(0.1),
                                blurRadius: 2.0,
                                spreadRadius: 2.0,
                              )
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 3.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/communityConnection.png",
                                      height: 35.0,
                                      width: 35.0,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 15.0),
                                      child: Text(
                                        "School",
                                        style: TextStyle(
                                            fontFamily: "Sofia",
                                            color: Color(0xFF0979FF),
                                            fontWeight: FontWeight.w700),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 1.0,
                              ),
                              Text(
                                "Requested on    12/12/2020",
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    color: Colors.black26,
                                    fontSize: 12.0),
                              ),
                              Text(
                                "Shared on    12/12/2020",
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    color: Colors.black26,
                                    fontSize: 12.0),
                              ),
                              Text(
                                "Time    12/12/2020",
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    color: Colors.black26,
                                    fontSize: 12.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 100.0,
                        width: MediaQuery.of(context).size.width / 2.2,
                        decoration: BoxDecoration(
                            color: Color(0xFFECF2F9),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12.withOpacity(0.1),
                                blurRadius: 2.0,
                                spreadRadius: 2.0,
                              )
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 3.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/carConnection.png",
                                      height: 35.0,
                                      width: 35.0,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 15.0),
                                      child: Text(
                                        "Rental",
                                        style: TextStyle(
                                            fontFamily: "Sofia",
                                            color: Color(0xFF0979FF),
                                            fontWeight: FontWeight.w700),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 1.0,
                              ),
                              Text(
                                "Requested on    12/12/2020",
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    color: Colors.black26,
                                    fontSize: 12.0),
                              ),
                              Text(
                                "Time    3:05 PM",
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    color: Colors.black26,
                                    fontSize: 12.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(top: 113.0),
                  //   child: Row(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //     children: [
                  //       SizedBox(
                  //         height: 10.0,
                  //       ),
                  //       Padding(
                  //         padding: const EdgeInsets.only(top: 50.0),
                  //         child: Container(
                  //           height: 100.0,
                  //           width: MediaQuery.of(context).size.width / 2.2,
                  //           decoration: BoxDecoration(
                  //               color: Color(0xFFECF2F9),
                  //               borderRadius:
                  //                   BorderRadius.all(Radius.circular(20.0)),
                  //               boxShadow: [
                  //                 BoxShadow(
                  //                   color: Colors.black12.withOpacity(0.1),
                  //                   blurRadius: 2.0,
                  //                   spreadRadius: 2.0,
                  //                 )
                  //               ]),
                  //         ),
                  //       ),
                  //       Container(
                  //         height: 150.0,
                  //         width: MediaQuery.of(context).size.width / 2.3,
                  //         decoration: BoxDecoration(
                  //             color: Color(0xFFECF2F9),
                  //             borderRadius:
                  //                 BorderRadius.all(Radius.circular(20.0)),
                  //             boxShadow: [
                  //               BoxShadow(
                  //                 color: Colors.black12.withOpacity(0.1),
                  //                 blurRadius: 2.0,
                  //                 spreadRadius: 2.0,
                  //               )
                  //             ]),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        );
      });
}
