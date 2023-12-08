import 'package:flutter/material.dart';

class EducationConnection extends StatefulWidget {
  EducationConnection({Key? key}) : super(key: key);

  @override
  _EducationConnectionState createState() => _EducationConnectionState();
}

class _EducationConnectionState extends State<EducationConnection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFECF2F9),
        body: SingleChildScrollView(
            child: Column(children: [
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
                      "Connection",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          fontSize: 17.0,
                          color: Color(0xFF0979FF),
                          fontWeight: FontWeight.w800),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
          Column(
            children: [
              Container(
                height: 115.0,
                width: 115.0,
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
                height: 7.0,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Image.asset(
                        "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/Box/boxEducation1.png"),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("DID:SOV:kjh876sfgshsthsfsf6921sfgs5dr",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              color: Color(0xFF0979FF),
                              fontWeight: FontWeight.w600)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40.0,
              ),
              Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Image.asset(
                          "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/Box/boxEducation3.png"),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 28.0, left: 25.0, right: 15.0),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Description: This connection was establihsed on 01/02/2020",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              color: Color(0xFF0979FF),
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Image.asset(
                              "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/Box/boxEducation2.png"),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text("Apply",
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  color: Color(0xFF0979FF),
                                  fontWeight: FontWeight.w700)),
                        ),
                      ],
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Image.asset(
                              "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/Box/boxEducation2.png"),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text("Delete",
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  color: Color(0xFF0979FF),
                                  fontWeight: FontWeight.w700)),
                        ),
                      ],
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Image.asset(
                              "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/Box/boxEducation2.png"),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text("Requests",
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  color: Color(0xFF0979FF),
                                  fontWeight: FontWeight.w700)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Image.asset(
                            "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/Box/boxEducation2.png"),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text("Messages",
                            style: TextStyle(
                                fontFamily: "Sofia",
                                color: Color(0xFF0979FF),
                                fontWeight: FontWeight.w700)),
                      ),
                    ],
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Image.asset(
                            "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/Box/boxEducation2.png"),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text("Stats",
                            style: TextStyle(
                                fontFamily: "Sofia",
                                color: Color(0xFF0979FF),
                                fontWeight: FontWeight.w700)),
                      ),
                    ],
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Image.asset(
                            "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/Box/boxEducation2.png"),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text("Delete",
                            style: TextStyle(
                                fontFamily: "Sofia",
                                color: Color(0xFF0979FF),
                                fontWeight: FontWeight.w700)),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 45.0,
              ),
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Image.asset(
                        "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/Box/boxEducation4.png"),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Text("Current Credentials",
                          style: TextStyle(
                              fontSize: 17.0,
                              fontFamily: "Sofia",
                              color: Color(0xFF0979FF),
                              fontWeight: FontWeight.w800)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 70.0, left: 15.0, right: 15.0),
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: Image.asset(
                                  "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/Box/boxEducation3.png"),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 60.0, left: 30.0),
                                  child: Icon(
                                    Icons.more_vert,
                                    size: 24.0,
                                    color: Color(0xFF0979FF),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 0.0),
                                  child: Text("B.S. Computer Sceince",
                                      style: TextStyle(
                                          fontFamily: "Sofia",
                                          color: Color(0xFF0979FF),
                                          fontWeight: FontWeight.w700)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: Container(
                                    height: 55.0,
                                    width: 55.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFECF2F9),
                                      border:
                                          Border.all(color: Color(0xFF0979FF)),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50.0)),
                                      boxShadow: [
                                        BoxShadow(
                                            color:
                                                Colors.black12.withOpacity(0.2),
                                            blurRadius: 10.0,
                                            offset: const Offset(8.0, 5.0),
                                            spreadRadius: 4.0)
                                      ],
                                    ),
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: Color(0xFF0979FF),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: Image.asset(
                                  "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/Box/boxEducation3.png"),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 60.0, left: 30.0),
                                  child: Icon(
                                    Icons.more_vert,
                                    size: 24.0,
                                    color: Color(0xFF0979FF),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 0.0),
                                  child: Text("B.S. Computer Sceince",
                                      style: TextStyle(
                                          fontFamily: "Sofia",
                                          color: Color(0xFF0979FF),
                                          fontWeight: FontWeight.w700)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: Container(
                                    height: 55.0,
                                    width: 55.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFECF2F9),
                                      border:
                                          Border.all(color: Color(0xFF0979FF)),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50.0)),
                                      boxShadow: [
                                        BoxShadow(
                                            color:
                                                Colors.black12.withOpacity(0.2),
                                            blurRadius: 10.0,
                                            offset: const Offset(8.0, 5.0),
                                            spreadRadius: 4.0)
                                      ],
                                    ),
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: Color(0xFF0979FF),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 20.5, right: 20.5, top: 15, bottom: 10.0),
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
                              // Navigator.of(context).push(PageRouteBuilder(
                              //     pageBuilder: (_, __, ___) =>
                              //         Connections()));
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
                            padding:
                                const EdgeInsets.only(top: 5.0, right: 30.0),
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
        ])));
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
