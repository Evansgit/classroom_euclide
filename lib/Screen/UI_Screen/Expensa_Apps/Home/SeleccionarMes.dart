import 'package:flutter/material.dart';

class seleccionarMes extends StatefulWidget {
  @override
  _seleccionarMesState createState() => _seleccionarMesState();
}

class _seleccionarMesState extends State<seleccionarMes> {
  @override
  String data = "";
  bool chose1 = false;
  bool chose2 = false;
  bool chose3 = false;
  bool chose4 = false;
  bool chose5 = false;
  bool chose6 = false;
  bool chose7 = false;
  bool chose8 = false;
  bool chose9 = false;
  bool chose10 = false;
  bool chose11 = false;
  bool chose12 = false;
  Widget build(BuildContext context) {
    void _sendDataBack(BuildContext context) {
      Navigator.pop(context, data);
    }

    MediaQueryData mediaQuery = MediaQuery.of(context);
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final MediaQueryData media = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 0.0),
            child: Container(
                height: 800.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "lib/Screen/UI_Screen/Expensa_Apps/assets/img/background.png"),
                      fit: BoxFit.cover),
                ),
                child: Padding(
                    padding: const EdgeInsets.only(top: 95.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (data == "") {
                                  data = "Enero";
                                } else {
                                  data = "";
                                }
                                if (chose1 == false) {
                                  chose1 = true;
                                } else {
                                  chose1 = false;
                                }
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10.0, top: 12.0),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    height: 65.0,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(12.0),
                                            topLeft: Radius.circular(12.0)),
                                        color: Colors.black26),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20.0, top: 0.0),
                                          child: Container(
                                              width: 245.0,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Text(
                                                    "Enero",
                                                    style: TextStyle(
                                                      color: Colors.white70,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 18.5,
                                                    ),
                                                    overflow: TextOverflow.fade,
                                                  ),
                                                ],
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 25.0),
                                          child: chose1
                                              ? Icon(
                                                  Icons.check,
                                                  color: Colors.white,
                                                )
                                              : Icon(
                                                  Icons.check,
                                                  color: Colors.transparent,
                                                ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 1.4,
                                    width: double.infinity,
                                    color: Color(0xFF29638B),
                                  )
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (data == "") {
                                  data = "Febrero";
                                } else {
                                  data = "";
                                }
                                if (chose2 == false) {
                                  chose2 = true;
                                } else {
                                  chose2 = false;
                                }
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10.0, top: 12.0),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    height: 65.0,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(12.0),
                                            topLeft: Radius.circular(12.0)),
                                        color: Colors.black26),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20.0, top: 0.0),
                                          child: Container(
                                              width: 245.0,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Text(
                                                    "Febrero",
                                                    style: TextStyle(
                                                      color: Colors.white70,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 18.5,
                                                    ),
                                                    overflow: TextOverflow.fade,
                                                  ),
                                                ],
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 25.0),
                                          child: chose2
                                              ? Icon(
                                                  Icons.check,
                                                  color: Colors.white,
                                                )
                                              : Icon(
                                                  Icons.check,
                                                  color: Colors.transparent,
                                                ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 1.4,
                                    width: double.infinity,
                                    color: Color(0xFF29638B),
                                  )
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (data == "") {
                                  data = "Marzo";
                                } else {
                                  data = "";
                                }
                                if (chose3 == false) {
                                  chose3 = true;
                                } else {
                                  chose3 = false;
                                }
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10.0, top: 12.0),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    height: 65.0,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(12.0),
                                            topLeft: Radius.circular(12.0)),
                                        color: Colors.black26),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20.0, top: 0.0),
                                          child: Container(
                                              width: 245.0,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Text(
                                                    "Marzo",
                                                    style: TextStyle(
                                                      color: Colors.white70,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 18.5,
                                                    ),
                                                    overflow: TextOverflow.fade,
                                                  ),
                                                ],
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 25.0),
                                          child: chose3
                                              ? Icon(
                                                  Icons.check,
                                                  color: Colors.white,
                                                )
                                              : Icon(
                                                  Icons.check,
                                                  color: Colors.transparent,
                                                ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 1.4,
                                    width: double.infinity,
                                    color: Color(0xFF29638B),
                                  )
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (data == "") {
                                  data = "Abril";
                                } else {
                                  data = "";
                                }
                                if (chose4 == false) {
                                  chose4 = true;
                                } else {
                                  chose4 = false;
                                }
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10.0, top: 12.0),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    height: 65.0,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(12.0),
                                            topLeft: Radius.circular(12.0)),
                                        color: Colors.black26),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20.0, top: 0.0),
                                          child: Container(
                                              width: 245.0,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Text(
                                                    "Abril",
                                                    style: TextStyle(
                                                      color: Colors.white70,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 18.5,
                                                    ),
                                                    overflow: TextOverflow.fade,
                                                  ),
                                                ],
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 25.0),
                                          child: chose4
                                              ? Icon(
                                                  Icons.check,
                                                  color: Colors.white,
                                                )
                                              : Icon(
                                                  Icons.check,
                                                  color: Colors.transparent,
                                                ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 1.4,
                                    width: double.infinity,
                                    color: Color(0xFF29638B),
                                  )
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (data == "") {
                                  data = "Mayo";
                                } else {
                                  data = "";
                                }
                                if (chose5 == false) {
                                  chose5 = true;
                                } else {
                                  chose5 = false;
                                }
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10.0, top: 12.0),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    height: 65.0,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(12.0),
                                            topLeft: Radius.circular(12.0)),
                                        color: Colors.black26),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20.0, top: 0.0),
                                          child: Container(
                                              width: 245.0,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Text(
                                                    "Mayo",
                                                    style: TextStyle(
                                                      color: Colors.white70,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 18.5,
                                                    ),
                                                    overflow: TextOverflow.fade,
                                                  ),
                                                ],
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 25.0),
                                          child: chose5
                                              ? Icon(
                                                  Icons.check,
                                                  color: Colors.white,
                                                )
                                              : Icon(
                                                  Icons.check,
                                                  color: Colors.transparent,
                                                ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 1.4,
                                    width: double.infinity,
                                    color: Color(0xFF29638B),
                                  )
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (data == "") {
                                  data = "Junio";
                                } else {
                                  data = "";
                                }
                                if (chose6 == false) {
                                  chose6 = true;
                                } else {
                                  chose6 = false;
                                }
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10.0, top: 12.0),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    height: 65.0,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(12.0),
                                            topLeft: Radius.circular(12.0)),
                                        color: Colors.black26),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20.0, top: 0.0),
                                          child: Container(
                                              width: 245.0,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Text(
                                                    "Junio",
                                                    style: TextStyle(
                                                      color: Colors.white70,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 18.5,
                                                    ),
                                                    overflow: TextOverflow.fade,
                                                  ),
                                                ],
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 25.0),
                                          child: chose6
                                              ? Icon(
                                                  Icons.check,
                                                  color: Colors.white,
                                                )
                                              : Icon(
                                                  Icons.check,
                                                  color: Colors.transparent,
                                                ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 1.4,
                                    width: double.infinity,
                                    color: Color(0xFF29638B),
                                  )
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (data == "") {
                                  data = "Julio";
                                } else {
                                  data = "";
                                }
                                if (chose7 == false) {
                                  chose7 = true;
                                } else {
                                  chose7 = false;
                                }
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10.0, top: 12.0),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    height: 65.0,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(12.0),
                                            topLeft: Radius.circular(12.0)),
                                        color: Colors.black26),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20.0, top: 0.0),
                                          child: Container(
                                              width: 245.0,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Text(
                                                    "Julio",
                                                    style: TextStyle(
                                                      color: Colors.white70,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 18.5,
                                                    ),
                                                    overflow: TextOverflow.fade,
                                                  ),
                                                ],
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 25.0),
                                          child: chose7
                                              ? Icon(
                                                  Icons.check,
                                                  color: Colors.white,
                                                )
                                              : Icon(
                                                  Icons.check,
                                                  color: Colors.transparent,
                                                ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 1.4,
                                    width: double.infinity,
                                    color: Color(0xFF29638B),
                                  )
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (data == "") {
                                  data = "Agosto";
                                } else {
                                  data = "";
                                }
                                if (chose8 == false) {
                                  chose8 = true;
                                } else {
                                  chose8 = false;
                                }
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10.0, top: 12.0),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    height: 65.0,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(12.0),
                                            topLeft: Radius.circular(12.0)),
                                        color: Colors.black26),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20.0, top: 0.0),
                                          child: Container(
                                              width: 245.0,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Text(
                                                    "Agosto",
                                                    style: TextStyle(
                                                      color: Colors.white70,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 18.5,
                                                    ),
                                                    overflow: TextOverflow.fade,
                                                  ),
                                                ],
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 25.0),
                                          child: chose8
                                              ? Icon(
                                                  Icons.check,
                                                  color: Colors.white,
                                                )
                                              : Icon(
                                                  Icons.check,
                                                  color: Colors.transparent,
                                                ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 1.4,
                                    width: double.infinity,
                                    color: Color(0xFF29638B),
                                  )
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (data == "") {
                                  data = "Septiembre";
                                } else {
                                  data = "";
                                }
                                if (chose9 == false) {
                                  chose9 = true;
                                } else {
                                  chose9 = false;
                                }
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10.0, top: 12.0),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    height: 65.0,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(12.0),
                                            topLeft: Radius.circular(12.0)),
                                        color: Colors.black26),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20.0, top: 0.0),
                                          child: Container(
                                              width: 245.0,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Text(
                                                    "Septiembre",
                                                    style: TextStyle(
                                                      color: Colors.white70,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 18.5,
                                                    ),
                                                    overflow: TextOverflow.fade,
                                                  ),
                                                ],
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 25.0),
                                          child: chose9
                                              ? Icon(
                                                  Icons.check,
                                                  color: Colors.white,
                                                )
                                              : Icon(
                                                  Icons.check,
                                                  color: Colors.transparent,
                                                ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 1.4,
                                    width: double.infinity,
                                    color: Color(0xFF29638B),
                                  )
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (data == "") {
                                  data = "Octubre";
                                } else {
                                  data = "";
                                }
                                if (chose10 == false) {
                                  chose10 = true;
                                } else {
                                  chose10 = false;
                                }
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10.0, top: 12.0),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    height: 65.0,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(12.0),
                                            topLeft: Radius.circular(12.0)),
                                        color: Colors.black26),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20.0, top: 0.0),
                                          child: Container(
                                              width: 245.0,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Text(
                                                    "Octubre",
                                                    style: TextStyle(
                                                      color: Colors.white70,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 18.5,
                                                    ),
                                                    overflow: TextOverflow.fade,
                                                  ),
                                                ],
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 25.0),
                                          child: chose10
                                              ? Icon(
                                                  Icons.check,
                                                  color: Colors.white,
                                                )
                                              : Icon(
                                                  Icons.check,
                                                  color: Colors.transparent,
                                                ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 1.4,
                                    width: double.infinity,
                                    color: Color(0xFF29638B),
                                  )
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (data == "") {
                                  data = "Noviembre";
                                } else {
                                  data = "";
                                }
                                if (chose11 == false) {
                                  chose11 = true;
                                } else {
                                  chose11 = false;
                                }
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10.0, top: 12.0),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    height: 65.0,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(12.0),
                                            topLeft: Radius.circular(12.0)),
                                        color: Colors.black26),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20.0, top: 0.0),
                                          child: Container(
                                              width: 245.0,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Text(
                                                    "Noviembre",
                                                    style: TextStyle(
                                                      color: Colors.white70,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 18.5,
                                                    ),
                                                    overflow: TextOverflow.fade,
                                                  ),
                                                ],
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 25.0),
                                          child: chose11
                                              ? Icon(
                                                  Icons.check,
                                                  color: Colors.white,
                                                )
                                              : Icon(
                                                  Icons.check,
                                                  color: Colors.transparent,
                                                ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 1.4,
                                    width: double.infinity,
                                    color: Color(0xFF29638B),
                                  )
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (data == "") {
                                  data = "Diciembre";
                                } else {
                                  data = "";
                                }
                                if (chose12 == false) {
                                  chose12 = true;
                                } else {
                                  chose12 = false;
                                }
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10.0, top: 12.0),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    height: 65.0,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(12.0),
                                            topLeft: Radius.circular(12.0)),
                                        color: Colors.black26),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20.0, top: 0.0),
                                          child: Container(
                                              width: 245.0,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Text(
                                                    "Diciembre",
                                                    style: TextStyle(
                                                      color: Colors.white70,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 18.5,
                                                    ),
                                                    overflow: TextOverflow.fade,
                                                  ),
                                                ],
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 25.0),
                                          child: chose12
                                              ? Icon(
                                                  Icons.check,
                                                  color: Colors.white,
                                                )
                                              : Icon(
                                                  Icons.check,
                                                  color: Colors.transparent,
                                                ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 1.4,
                                    width: double.infinity,
                                    color: Color(0xFF29638B),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          )
                        ],
                      ),
                    ))),
          ),

          /// Get a class AppbarGradient
          /// This is a Appbar in home activity
          Container(
            height: 200.0,
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: statusBarHeight),
                  height: 58.0 + statusBarHeight,
                  width: double.infinity,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.black45,
                        blurRadius: 5.0,
                        spreadRadius: 1.0)
                  ], color: Color(0xFF29303C)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: InkWell(
                            onTap: () {
                              _sendDataBack(context);
                            },
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Atras",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16.0),
                                )
                              ],
                            )),
                      ),
                      Center(
                          child: Text(
                        "Seleccionar ano",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontFamily: "Popins",
                            fontWeight: FontWeight.w600),
                      )),
                      Stack(
                        children: <Widget>[
                          Opacity(
                              opacity: 0.5,
                              child: Image.asset(
                                "lib/Screen/UI_Screen/Expensa_Apps/assets/img/logoAppbar.png",
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget card(String txt) {
  return Padding(
    padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 12.0),
    child: Column(
      children: <Widget>[
        Container(
          height: 61.0,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12.0),
                  topLeft: Radius.circular(12.0)),
              color: Colors.black38),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 0.0),
                child: Container(
                    width: 245.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          txt,
                          style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.w400,
                            fontSize: 18.5,
                          ),
                          overflow: TextOverflow.fade,
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
        Container(
          height: 1.4,
          width: double.infinity,
          color: Color(0xFF29638B),
        )
      ],
    ),
  );
}
