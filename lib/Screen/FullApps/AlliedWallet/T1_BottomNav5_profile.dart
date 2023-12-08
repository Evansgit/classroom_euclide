import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class T1_profile extends StatefulWidget {
  @override
  _T1_profileState createState() => _T1_profileState();
}

class _T1_profileState extends State<T1_profile> {
  /// Text for about me under card
  String _aboutMe =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF141C35),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 40.0),

              ///
              /// Photo profile with name and sice join
              ///
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 80.0,
                    width: 80.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://images.pexels.com/photos/2804282/pexels-photo-2804282.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                            fit: BoxFit.cover)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, left: 19.9),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Kathleen Walker",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontWeight: FontWeight.w700,
                              fontSize: 17.0,
                              color: Colors.white),
                        ),
                        Text(
                          "Member Since 18 2016",
                          style: TextStyle(
                              fontFamily: "Sans",
                              fontWeight: FontWeight.w300,
                              color: Colors.white54),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),

            ///
            /// Card with horizontal scroll
            ///
            Container(
              height: 140.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _card("lib/Screen/FullApps/AlliedWallet/Assets/ae.png", "AE",
                      "\$ 15.213.00"),
                  _card("lib/Screen/FullApps/AlliedWallet/Assets/NEO.png",
                      "NEO", "\$ 12.113.00"),
                  _card("lib/Screen/FullApps/AlliedWallet/Assets/bat.png",
                      "BAT", "\$ 9.213.00"),
                  _card("lib/Screen/FullApps/AlliedWallet/Assets/BCH.png",
                      "BCH", "\$ 4.111.00"),
                  _card("lib/Screen/FullApps/AlliedWallet/Assets/btc.png",
                      "BCHSV", "\$ 5.423.00"),
                  _card("lib/Screen/FullApps/AlliedWallet/Assets/ETC.png",
                      "ETC", "\$ 6.213.00"),
                ],
              ),
            ),

            ///
            /// Text about me and description
            ///
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "About me",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Sans",
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    _aboutMe,
                    style: TextStyle(
                        fontFamily: "Sofia",
                        fontWeight: FontWeight.w100,
                        color: Colors.white24),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40.0,
            ),

            ///
            /// Circle Percent Indicator
            ///
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Wrap(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        "Overall",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      new CircularPercentIndicator(
                        radius: 40.0,
                        lineWidth: 2.0,
                        animation: true,
                        percent: 0.7,
                        center: new Text(
                          "90.0%",
                          style: new TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13.0,
                              color: Colors.white),
                        ),
                        circularStrokeCap: CircularStrokeCap.round,
                        progressColor: Colors.lightBlueAccent,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        "Incomes",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      new CircularPercentIndicator(
                        radius: 40.0,
                        lineWidth: 2.0,
                        animation: true,
                        percent: 0.7,
                        center: new Text(
                          "70.0%",
                          style: new TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 13.0),
                        ),
                        circularStrokeCap: CircularStrokeCap.round,
                        progressColor: Colors.green,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        "Expenses",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      new CircularPercentIndicator(
                        radius: 40.0,
                        lineWidth: 2.0,
                        animation: true,
                        percent: 0.7,
                        center: new Text(
                          "35.0%",
                          style: new TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 13.0),
                        ),
                        circularStrokeCap: CircularStrokeCap.round,
                        progressColor: Colors.purple,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  ///
  /// card for crypto list
  ///
  Widget _card(String _img, String _title, String _deskripsi) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 10.0,
        width: 180.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          color: Color(0xFF2E2E46),
        ),
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 19.0, top: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 30.0,
                    width: 30.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(_img))),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    _title,
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontFamily: "Sans",
                        color: Colors.white),
                  ),
                  Text(
                    _deskripsi,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 17.0),
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
