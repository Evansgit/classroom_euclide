import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:async';
import 'dart:ui' as ui;
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

class recibo extends StatefulWidget {
  @override
  _reciboState createState() => _reciboState();
}

class _reciboState extends State<recibo> {
  @override
  static GlobalKey previewContainer = new GlobalKey();
  static const androidMethodChannel =
      const MethodChannel('team.native.io/screenshot');

  void main() {}

  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final MediaQueryData media = MediaQuery.of(context);
    String Recibo = "No.001234";
    String fecha = "20/02/2018";
    String propieded1 = "CAOBA 04";
    String propieded2 = "Maritza Villarroel";
    String expensaTime1 = "Marzo/2018";
    String expensaPrice1 = "800.00";
    String expensaTime2 = "Abril/2018";
    String expensaPrice2 = "800.00";
    String totalBs = "1.600,00";
    return RepaintBoundary(
      key: previewContainer,
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        "lib/Screen/UI_Screen/Expensa_Apps/assets/img/background.png"),
                    fit: BoxFit.cover),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 100.0),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0,
                                right: 10.0,
                                top: 20.0,
                                bottom: 40.0),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.0),
                                    topRight: Radius.circular(10.0),
                                    bottomLeft: Radius.circular(10.0),
                                    bottomRight: Radius.circular(10.0)),
                                color: Colors.white.withOpacity(0.9),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 0.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 15.0, left: 15.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Image.asset(
                                            "lib/Screen/UI_Screen/Expensa_Apps/assets/icon/receipt_logo.png",
                                            height: 80.0,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 25.0, right: 15.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  "RECIBO",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 19.0),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 4.0),
                                                  child: Text(Recibo),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30.0,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 15.0),
                                      child: Row(
                                        children: <Widget>[
                                          Text(
                                            "Fecha :",
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16.0),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 38.0),
                                            child: Text(
                                              fecha,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w800),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 15.0),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "Propieded :",
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16.0),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 6.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  propieded1,
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                                Container(
                                                    width: 200.0,
                                                    child: Text(
                                                      propieded2,
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w800),
                                                    ))
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20.0),
                                      child: Container(
                                        height: 35.0,
                                        width: double.infinity,
                                        color: Colors.blueAccent,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 15.0, right: 15.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Text(
                                                "Cuota(s)",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    color: Colors.white,
                                                    fontSize: 15.5),
                                              ),
                                              Text(
                                                "Importe",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    color: Colors.white,
                                                    fontSize: 15.5),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 15.0, left: 15.0, right: 15.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                              width: 220.0,
                                              child: Text(
                                                  "Expensa minicondominio",
                                                  style: TextStyle(
                                                      color: Colors.black54,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 16.0))),
                                          Text(expensaPrice1),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15.0, top: 3.0),
                                      child: Text(
                                        expensaTime1,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black45),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: line(double.infinity, 1.5),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 0.0, left: 15.0, right: 15.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                              width: 220.0,
                                              child: Text(
                                                  "Expensa minicondominio ",
                                                  style: TextStyle(
                                                      color: Colors.black54,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 16.0))),
                                          Text(expensaPrice2),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15.0, top: 3.0),
                                      child: Text(expensaTime2,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black45)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 15.0, bottom: 5.0),
                                      child: line(double.infinity, 2.5),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15.0, right: 15.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text("Total Bs",
                                              style: TextStyle(
                                                  color: Colors.black54,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 16.0)),
                                          Text(totalBs,
                                              style: TextStyle(
                                                  color: Colors.black54,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 15.0))
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5.0, bottom: 5.0),
                                      child: line(double.infinity, 2.5),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15.0, right: 5.0, top: 10.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "SON: ",
                                            style: TextStyle(
                                                color: Colors.black45,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                                width: 258.0,
                                                child: Text(
                                                    "UN MIL SEISCIENTOS 00/100 BOLIVIANOS",
                                                    style: TextStyle(
                                                        color: Colors.black45,
                                                        fontWeight:
                                                            FontWeight.w400))),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15.0, right: 5.0, top: 10.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Text("Deposito: ",
                                              style: TextStyle(
                                                  color: Colors.black45,
                                                  fontWeight: FontWeight.w400)),
                                          Container(
                                            width: 230.0,
                                            child: Text("Banco Ganedera S.A.",
                                                style: TextStyle(
                                                    color: Colors.black45,
                                                    fontWeight:
                                                        FontWeight.w400)),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 79.0, top: 5.0),
                                      child: Text("No. 1310 - 15885655",
                                          style: TextStyle(
                                              color: Colors.black45,
                                              fontWeight: FontWeight.w400)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 15.0, top: 20.0, bottom: 25.0),
                                      child: Container(
                                          alignment: Alignment.bottomRight,
                                          child: Image.asset(
                                            "lib/Screen/UI_Screen/Expensa_Apps/assets/icon/sail_pagado.png",
                                            height: 110.0,
                                          )),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
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
                          color: Colors.black,
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
                                Navigator.of(context).pop();
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
                          "Recibo",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w800),
                        )),
                        Stack(
                          children: <Widget>[
                            Opacity(
                                opacity: 0.5,
                                child: Image.asset(
                                  "lib/Screen/UI_Screen/Expensa_Apps/assets/img/logoAppbar.png",
                                )),
                            InkWell(
                              onTap: () {
                                _screenShot();
                                main();
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(left: 14.0),
                                child: Center(
                                    child: Icon(
                                  Icons.file_upload,
                                  color: Colors.white,
                                )),
                              ),
                            ),
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
      ),
    );
  }

  Future<Null> _screenShot() async {
    try {
      RenderRepaintBoundary boundary = previewContainer.currentContext!
          .findRenderObject() as RenderRepaintBoundary;
      ui.Image image = await boundary.toImage();
      final directory = (await getExternalStorageDirectory())?.path;
      ByteData byteData = await (image.toByteData(
          format: ui.ImageByteFormat.png) as FutureOr<ByteData>);
      Uint8List pngBytes = byteData.buffer.asUint8List();
      File imgFile = new File('$directory/screenshot.png');
      imgFile.writeAsBytes(pngBytes);
      Uri fileURI = new Uri.file('$directory/screenshot.png');
      print('Screenshot Path:' + imgFile.path);
    } on PlatformException catch (e) {
      print("Exception while taking screenshot:" + e.toString());
    }
  }
}

Widget line(double width, double height) {
  return Container(
    height: height,
    width: width,
    color: Colors.blueAccent.withOpacity(0.9),
  );
}
