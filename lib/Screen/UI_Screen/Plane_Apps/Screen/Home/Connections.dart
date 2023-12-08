import 'package:flutter/material.dart';

import 'EducationConnection.dart';

class Connections extends StatefulWidget {
  Connections({Key? key}) : super(key: key);

  @override
  _ConnectionsState createState() => _ConnectionsState();
}

class _ConnectionsState extends State<Connections> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECF2F9),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
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
                SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
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
                SizedBox(
                  height: 40.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 45.0, right: 25.0, bottom: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Connected",
                        style: TextStyle(
                            fontFamily: "Sofia",
                            color: Color(0xFF0979FF),
                            fontSize: 17.0,
                            fontWeight: FontWeight.w800),
                      ),
                      Image.asset(
                        "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/buttonConnection.png",
                        height: 20.0,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 3.0, right: 6.0),
                  child: Stack(children: [
                    Center(
                        child: Image.asset(
                            "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/containerConnection.png")),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 35.0, left: 15.0, right: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(PageRouteBuilder(
                                  pageBuilder: (_, __, ___) =>
                                      new EducationConnection()));
                            },
                            child: _item(
                                "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/schoolConnection.png",
                                "School",
                                3.0),
                          ),
                          _item(
                              "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/communityConnection.png",
                              "SD Community",
                              12.0),
                          _item(
                              "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/labsConnection.png",
                              "SD Labs",
                              10.0),
                          _item(
                              "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/jonConnection.png",
                              "Jon Doe",
                              5.0),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 145.0, left: 15.0, right: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _item(
                              "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/insuranceConnection.png",
                              "Insurance",
                              9.0),
                          _item(
                              "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/dentalConnection.png",
                              "Dental",
                              12.0),
                          _item(
                              "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/passportConnection.png",
                              "Passport",
                              10.0),
                          _item(
                              "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/hospitalConnection.png",
                              "Hospital",
                              10.0),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 255.0, left: 15.0, right: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _item(
                              "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/schoolConnection2.png",
                              "School",
                              12.0),
                          _item(
                              "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/sporthConnection.png",
                              "Sporth",
                              12.0),
                          _item(
                              "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/courtConnection.png",
                              "Courth",
                              13.0),
                          _item(
                              "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/jonConnection2.png",
                              "Jon Doe",
                              10.0),
                        ],
                      ),
                    ),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 25.0, right: 25.0, bottom: 15.0, top: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "In-Network",
                        style: TextStyle(
                            fontFamily: "Sofia",
                            color: Color(0xFF0979FF),
                            fontSize: 17.0,
                            fontWeight: FontWeight.w400),
                      ),
                      Image.asset(
                        "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/buttonConnection.png",
                        height: 20.0,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                  child: Stack(
                    children: [
                      Image.asset(
                          "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/searchConnection.png"),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 50.0),
                          child: Container(
                            height: 50,
                            // decoration: BoxDecoration(
                            //     image: DecorationImage(
                            //         image: AssetImage(
                            //           "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/searchConnection.png",
                            //         ),
                            //         fit: BoxFit.cover)),
                            child: Theme(
                              data: new ThemeData(
                                  primaryColor: Colors.transparent,
                                  hintColor: Colors.transparent),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: TextFormField(
                                  style:
                                      new TextStyle(color: Color(0xFF0979FF)),
                                  textAlign: TextAlign.start,
                                  keyboardType: TextInputType.emailAddress,
                                  autocorrect: false,
                                  autofocus: false,
                                  decoration: InputDecoration(
                                      border: new UnderlineInputBorder(
                                          borderSide: new BorderSide(
                                              color: Colors.blueAccent)),
                                      contentPadding: EdgeInsets.all(0.0),
                                      filled: true,
                                      fillColor: Colors.transparent,
                                      hintText: 'Search...',
                                      hintStyle: TextStyle(
                                        color: Colors.black26,
                                      ),
                                      labelStyle: TextStyle(
                                        color: Colors.black26,
                                      )),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 7.0, left: 5.0, right: 15.0),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: 35.0,
                            width: 35.0,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(35.0)),
                                color: Color(0xFFECF2F9),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12.withOpacity(0.08),
                                    blurRadius: 10.0,
                                    spreadRadius: 3.0,
                                  )
                                ]),
                            child: Center(
                              child: Icon(
                                Icons.search,
                                color: Color(0xFF0979FF),
                                size: 19,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 3.0, right: 6.0, top: 20.0),
              child: Stack(children: [
                Center(
                    child: Image.asset(
                        "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/boxConnection.png")),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 35.0, left: 15.0, right: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _item(
                          "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/airPortConnection.png",
                          "Airport",
                          13.0),
                      _item(
                          "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/waterConnection.png",
                          "Water",
                          12.0),
                      _item(
                          "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/internetConnection.png",
                          "Internet",
                          15.0),
                      _item(
                          "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/bankConnection.png",
                          "Bank",
                          10.0),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 155.0, left: 15.0, right: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 55.0,
                            width: 55.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50.0)),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12.withOpacity(0.2),
                                    blurRadius: 10.0,
                                    offset: const Offset(8.0, 5.0),
                                    spreadRadius: 4.0)
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(11.0),
                              child: Image.asset(
                                  "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/rentalConnection.png"),
                            ),
                          ),
                          SizedBox(
                            height: 7.0,
                          ),
                          Text(
                            "Rental",
                            style: TextStyle(
                                color: Color(0xFF0979FF),
                                fontFamily: "Sofia",
                                fontSize: 12.0,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 55.0,
                            width: 55.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50.0)),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12.withOpacity(0.2),
                                    blurRadius: 10.0,
                                    offset: const Offset(8.0, 5.0),
                                    spreadRadius: 4.0)
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Image.asset(
                                  "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/carConnection.png"),
                            ),
                          ),
                          SizedBox(
                            height: 7.0,
                          ),
                          Text(
                            "Water",
                            style: TextStyle(
                                color: Color(0xFF0979FF),
                                fontFamily: "Sofia",
                                fontSize: 12.0,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 55.0,
                            width: 55.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50.0)),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12.withOpacity(0.2),
                                    blurRadius: 10.0,
                                    offset: const Offset(8.0, 5.0),
                                    spreadRadius: 4.0)
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Image.asset(
                                  "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/universityConnection.png"),
                            ),
                          ),
                          SizedBox(
                            height: 7.0,
                          ),
                          Text(
                            "Internet",
                            style: TextStyle(
                                color: Color(0xFF0979FF),
                                fontFamily: "Sofia",
                                fontSize: 12.0,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 55.0,
                            width: 55.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50.0)),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12.withOpacity(0.2),
                                    blurRadius: 10.0,
                                    offset: const Offset(8.0, 5.0),
                                    spreadRadius: 4.0)
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(11.0),
                              child: Image.asset(
                                  "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/hospitalConnection2.png"),
                            ),
                          ),
                          SizedBox(
                            height: 7.0,
                          ),
                          Text(
                            "Hospital",
                            style: TextStyle(
                                color: Color(0xFF0979FF),
                                fontFamily: "Sofia",
                                fontSize: 12.0,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 20.5, right: 20.5, top: 19.0, bottom: 10.0),
              child: Container(
                height: 90.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xFFECF2F9),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(2.0, 3.3),
                        blurRadius: 10.0,
                        spreadRadius: 4.0,
                        color: Colors.black12.withOpacity(0.1),
                      )
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(37.0))),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 0.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(PageRouteBuilder(
                                pageBuilder: (_, __, ___) => Connections()));
                          },
                          child: Padding(
                            padding:
                                const EdgeInsets.only(top: 5.0, left: 30.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 50.0,
                                  width: 50.0,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/boxHome.png"))),
                                  child: Center(
                                    child: Image.asset(
                                        "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/connectionHome.png"),
                                  ),
                                ),
                                Text(
                                  "Connections",
                                  style: TextStyle(
                                      fontFamily: "Sofia",
                                      color: Color(0xFF0979FF),
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0, left: 0.0),
                          child: Container(
                            height: 50.0,
                            width: 50.0,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0xFF16B1FF),
                                      blurRadius: 7.0,
                                      spreadRadius: 1.0)
                                ],
                                color: Color(0xFF16B1FF),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50.0),
                                )),
                            child: Center(
                              child: Image.asset(
                                  "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/plusHome.png"),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0, right: 30.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 50.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/boxHome.png"))),
                                child: Center(
                                  child: Image.asset(
                                      "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/Wallet.png"),
                                ),
                              ),
                              Text(
                                "Credentials",
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    color: Color(0xFF0979FF),
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _item(String img, String title, double padding) {
    return Column(
      children: [
        Container(
          height: 55.0,
          width: 55.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(50.0)),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12.withOpacity(0.2),
                  blurRadius: 10.0,
                  offset: const Offset(8.0, 5.0),
                  spreadRadius: 4.0)
            ],
          ),
          child: Padding(
            padding: EdgeInsets.all(padding),
            child: Image.asset(img),
          ),
        ),
        SizedBox(
          height: 7.0,
        ),
        Text(
          title,
          style: TextStyle(
              color: Color(0xFF0979FF),
              fontFamily: "Sofia",
              fontSize: 12.0,
              fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
