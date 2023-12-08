import 'package:crypto_template/Screen/UI_Screen/Plane_Apps/Component/Toggle.dart';
import 'package:flutter/material.dart';

import 'Connections.dart';

class CredentialList extends StatefulWidget {
  CredentialList({Key? key}) : super(key: key);

  @override
  _CredentialListState createState() => _CredentialListState();
}

class _CredentialListState extends State<CredentialList> {
  @override
  bool _value = true;
  bool _language = true;
  bool _language2 = true;
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
              padding: const EdgeInsets.all(35.0),
              child: Container(
                height: 130.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  color: Color(0xFFECF2F9),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12.withOpacity(0.05),
                      blurRadius: 3.0,
                      spreadRadius: 4.0,
                    )
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10.0, left: 20.0, right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Credentials",
                            style: TextStyle(
                                fontFamily: "Sofia",
                                color: Color(0xFF0979FF),
                                fontSize: 17.0,
                                fontWeight: FontWeight.w800),
                          ),
                          CircleAvatar(
                            radius: 13.0,
                            backgroundColor: Color(0xFF0979FF),
                            child: Center(
                              child: Icon(
                                Icons.search,
                                size: 14.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        "8 Active",
                        style: TextStyle(
                            fontFamily: "Sofia",
                            color: Colors.black12,
                            fontSize: 15.0),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Center(
                      child: LiteRollingSwitchCustom(
                        //initial value
                        value: true,

                        textOn: 'List',
                        textOff: 'Grid',
                        colorOn: Color(0xFFECF2F9),
                        colorOff: Color(0xFFECF2F9),
                        iconOn: Icons.remove_red_eye,
                        iconOff: Icons.remove_red_eye_outlined,
                        textSize: 12.0,
                        onChanged: (state) {
                          setState(() {
                            _value = state!;
                          });
                          print('Current State of SWITCH IS: $state');
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            _value ? _grid() : _list(),
            Padding(
              padding: EdgeInsets.only(
                  left: 20.5, right: 20.5, top: 20, bottom: 10.0),
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

  Widget _grid() {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
      child: GridView.count(
        padding: EdgeInsets.all(0),
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        crossAxisCount: 3,
        childAspectRatio: 0.7,
        shrinkWrap: true,
        primary: false,
        children: [
          Container(
            height: 300.0,
            width: 20.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
                image: DecorationImage(
                    image: AssetImage(
                      "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/card/card1.png",
                    ),
                    fit: BoxFit.cover)),
            child: Center(
              child: Image.asset(
                "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/schoolConnection.png",
                height: 65.0,
                width: 65.0,
              ),
            ),
          ),
          Container(
            height: 300.0,
            width: 20.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
                image: DecorationImage(
                    image: AssetImage(
                      "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/card/card2.png",
                    ),
                    fit: BoxFit.cover)),
            child: Center(
              child: Image.asset(
                "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/communityConnection.png",
                height: 65.0,
                width: 65.0,
              ),
            ),
          ),
          Container(
            height: 300.0,
            width: 20.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
                image: DecorationImage(
                    image: AssetImage(
                      "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/card/card3.png",
                    ),
                    fit: BoxFit.cover)),
            child: Center(
              child: Image.asset(
                "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/passportConnection.png",
                height: 65.0,
                width: 65.0,
              ),
            ),
          ),
          Container(
            height: 300.0,
            width: 20.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
                image: DecorationImage(
                    image: AssetImage(
                      "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/card/card6.png",
                    ),
                    fit: BoxFit.cover)),
            child: Center(
              child: Image.asset(
                "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/dentalConnection.png",
                height: 65.0,
                width: 65.0,
              ),
            ),
          ),
          Container(
            height: 300.0,
            width: 20.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
                image: DecorationImage(
                    image: AssetImage(
                      "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/card/card5.png",
                    ),
                    fit: BoxFit.cover)),
            child: Center(
              child: Image.asset(
                "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/courtConnection.png",
                height: 65.0,
                width: 65.0,
              ),
            ),
          ),
          Container(
            height: 300.0,
            width: 20.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
                image: DecorationImage(
                    image: AssetImage(
                      "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/card/card7.png",
                    ),
                    fit: BoxFit.cover)),
            child: Center(
              child: Image.asset(
                "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/internetConnection.png",
                height: 65.0,
                width: 65.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              height: 300.0,
              width: 20.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  color: Color(0xFFECF2F9),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12.withOpacity(0.1),
                      blurRadius: 5.0,
                      spreadRadius: 2.0,
                    ),
                  ]),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 0.0),
                      child: Container(
                        height: 55.0,
                        width: 55.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFECF2F9),
                          border: Border.all(color: Color(0xFF0979FF)),
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12.withOpacity(0.2),
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
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "View More",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          color: Color(0xFF0979FF),
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          )
        ],
      ),
    );
  }

  Widget _list() {
    return Column(
      children: [
        Stack(alignment: Alignment.center, children: [
          // Image.asset(
          //   "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/BoxList.png",
          //   width: 900.0,
          // ),
          Padding(
            padding: const EdgeInsets.only(left: 9.0, right: 9.0),
            child: Image.asset(
              "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/cardBlue.png",
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30.0, bottom: 0.0),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (_language == true) {
                            _language = false;
                          } else {
                            _language = true;
                          }
                        });
                      },
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 10.0,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 8.0,
                              backgroundColor:
                                  _language ? Colors.white : Colors.blue,
                            ),
                          ),
                          Text("EN")
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 9.0,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (_language == false) {
                            _language = true;
                          } else {
                            _language = false;
                          }
                        });
                      },
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 10.0,
                            child: CircleAvatar(
                              radius: 8.0,
                              backgroundColor:
                                  _language ? Colors.blue : Colors.white,
                            ),
                          ),
                          Text("AR")
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(
                "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/labsConnection.png",
                height: 65.0,
                width: 65.0,
                color: Colors.white,
              ),
              SizedBox(
                height: 10.0,
              ),
              _language
                  ? Text(
                      "Estado de California",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          fontWeight: FontWeight.w800,
                          fontSize: 16.0),
                    )
                  : Text(
                      "State of California",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          fontWeight: FontWeight.w800,
                          fontSize: 16.0),
                    ),
              SizedBox(
                height: 4.0,
              ),
              _language
                  ? Text(
                      "Tarjeta de registro de vacunación COVID-19",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          fontWeight: FontWeight.w800,
                          fontSize: 14.0),
                    )
                  : Text(
                      "COVID-19 Vaccination Record Card",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          fontWeight: FontWeight.w800,
                          fontSize: 14.0),
                    ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                "12/12/2020",
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontWeight: FontWeight.w800,
                    fontSize: 14.0),
              ),
            ],
          )
        ]),
        Stack(alignment: Alignment.center, children: [
          // Image.asset(
          //   "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/BoxList.png",
          //   width: 900.0,
          // ),
          Padding(
            padding: const EdgeInsets.only(left: 9.0, right: 9.0),
            child: Image.asset(
              "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/cardGreen.png",
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30.0, bottom: 0.0),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (_language2 == true) {
                            _language2 = false;
                          } else {
                            _language2 = true;
                          }
                        });
                      },
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 10.0,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 8.0,
                              backgroundColor:
                                  _language2 ? Colors.white : Colors.blue,
                            ),
                          ),
                          Text("EN")
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 9.0,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (_language2 == false) {
                            _language2 = true;
                          } else {
                            _language2 = false;
                          }
                        });
                      },
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 10.0,
                            child: CircleAvatar(
                              radius: 8.0,
                              backgroundColor:
                                  _language2 ? Colors.blue : Colors.white,
                            ),
                          ),
                          Text("AR")
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(
                "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/labsConnection.png",
                height: 65.0,
                width: 65.0,
                color: Colors.white,
              ),
              SizedBox(
                height: 10.0,
              ),
              _language2
                  ? Text(
                      "جمهورية العراق",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          fontWeight: FontWeight.w800,
                          fontSize: 16.0),
                    )
                  : Text(
                      "Republic of Iraq",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          fontWeight: FontWeight.w800,
                          fontSize: 16.0),
                    ),
              SizedBox(
                height: 4.0,
              ),
              _language2
                  ? Text(
                      "وزارة الداخلية مديرية مرور بابل",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          fontWeight: FontWeight.w800,
                          fontSize: 14.0),
                    )
                  : Text(
                      "Ministry of interior Traffic Directorate - Babil",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          fontWeight: FontWeight.w800,
                          fontSize: 14.0),
                    ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                "12/12/2020",
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontWeight: FontWeight.w800,
                    fontSize: 14.0),
              ),
            ],
          )
        ]),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(alignment: Alignment.center, children: [
            // Image.asset(
            //   "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/BoxList.png",
            //   width: 900.0,
            // ),
            Image.asset(
              "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/card/card9.png",
              width: MediaQuery.of(context).size.width,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/communityConnection.png",
                  height: 65.0,
                  width: 65.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "SD Medical Center",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontWeight: FontWeight.w800,
                      fontSize: 16.0),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Text(
                  "Connected on",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontWeight: FontWeight.w800,
                      fontSize: 14.0),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Text(
                  "12/12/2020",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontWeight: FontWeight.w800,
                      fontSize: 14.0),
                ),
              ],
            )
          ]),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Stack(alignment: Alignment.center, children: [
            // Image.asset(
            //   "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/BoxList.png",
            //   width: 900.0,
            // ),
            Image.asset(
              "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/card/card11.png",
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/passportConnection.png",
                  height: 65.0,
                  color: Colors.white,
                  width: 65.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Vet Local",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 18.0),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Text(
                  "Connected on",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 15.0),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Text(
                  "12/12/2020",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Sofia",
                      fontWeight: FontWeight.w800,
                      fontSize: 14.0),
                ),
              ],
            )
          ]),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Stack(alignment: Alignment.center, children: [
            // Image.asset(
            //   "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/BoxList.png",
            //   width: 900.0,
            // ),
            Image.asset(
              "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/card/card4.png",
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/dentalConnection.png",
                  height: 65.0,
                  color: Colors.black,
                  width: 65.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Cards Tech",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontWeight: FontWeight.w800,
                      fontSize: 16.0),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Text(
                  "Connected on",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontWeight: FontWeight.w800,
                      fontSize: 14.0),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Text(
                  "12/12/2020",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontWeight: FontWeight.w800,
                      fontSize: 14.0),
                ),
              ],
            )
          ]),
        ),
        Padding(
          padding: const EdgeInsets.all(9.0),
          child: Stack(alignment: Alignment.center, children: [
            // Image.asset(
            //   "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/BoxList.png",
            //   width: 900.0,
            // ),
            Image.asset(
              "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/card/card10.png",
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/courtConnection.png",
                  height: 65.0,
                  width: 65.0,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Justice Court",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 16.0),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Text(
                  "Connected on",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 14.0),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Text(
                  "12/12/2020",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 14.0),
                ),
              ],
            )
          ]),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(alignment: Alignment.center, children: [
            // Image.asset(
            //   "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/BoxList.png",
            //   width: 900.0,
            // ),
            Image.asset(
              "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/card/card9.png",
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.money,
                  color: Colors.black,
                  size: 55.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Coverted Insurance",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontWeight: FontWeight.w800,
                      fontSize: 16.0),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Text(
                  "Connected on",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontWeight: FontWeight.w800,
                      fontSize: 14.0),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Text(
                  "12/12/2020",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontWeight: FontWeight.w800,
                      fontSize: 14.0),
                ),
              ],
            )
          ]),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(alignment: Alignment.center, children: [
            // Image.asset(
            //   "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/BoxList.png",
            //   width: 900.0,
            // ),
            Image.asset(
              "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/card/card8.png",
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/internetConnection.png",
                  height: 55.0,
                  width: 55.0,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "PayCom",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontWeight: FontWeight.w800,
                      fontSize: 16.0),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Text(
                  "Connected on",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontWeight: FontWeight.w800,
                      fontSize: 14.0),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Text(
                  "12/12/2020",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontWeight: FontWeight.w800,
                      fontSize: 14.0),
                ),
              ],
            )
          ]),
        ),
      ],
    );
  }
}
