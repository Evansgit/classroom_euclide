import 'package:flutter/material.dart';

class comunicados extends StatefulWidget {
  @override
  _comunicadosState createState() => _comunicadosState();
}

class _comunicadosState extends State<comunicados> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final MediaQueryData media = MediaQuery.of(context);
    return Scaffold(
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
                    padding: const EdgeInsets.only(top: 110.0),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 10.0, right: 10.0),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0)),
                              color: Color(0xFF255B7F),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 25.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15.0),
                                    child: Text(
                                      "Convocatoria a Eleccion de Directores ",
                                      style: TextStyle(
                                          color: Colors.white70,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 17.0),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "2018 - 2019",
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 17.0),
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Text(
                                    "13/11/2017",
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 15.0),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, right: 10.0, top: 20.0),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0),
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0)),
                              color: Color(0xFFC7C8CC),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15.0),
                                    child: Container(
                                        width: 300.0,
                                        child: Text(
                                          "Estimados vecinos,  ",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 17.0),
                                          overflow: TextOverflow.ellipsis,
                                        )),
                                  ),
                                  SizedBox(
                                    height: 25.0,
                                  ),
                                  Container(
                                      width: 300.0,
                                      child: Text(
                                        "A traves de la v presente,",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 17.0),
                                        overflow: TextOverflow.ellipsis,
                                      )),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15.0),
                                    child: Text(
                                      "El Directorio velara por el cumplimiento de lasnormas municipales con relacion aconstucciones, mejoras y modificaciones que ios  propietarios pretendaan llevar adelante en el area de su propiedad asi comoen las areas comunes. Con este fin, todos iosproyectos de construccion previa a suaprobacion en la instancia municipal, deberan ser revisados por la Asociacion de Copropietarios a traves de la Comision de Infraestructura/Arquitectura. Esta Comision verificara el cumplimiento de las normas municipales del Gobierno Municipal de Prongo y las del la Urbanizacion, refiriendo su revision a aspectos normativos y esteticos y no asl al estilo propio del Proyecto",
                                      style: TextStyle(
                                        height: 1.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16.2,
                                      ),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40.0,
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
                        color: Colors.black, blurRadius: 5.0, spreadRadius: 1.0)
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
                        "Comunicados",
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
                          InkWell(
                            onTap: () {},
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
    );
  }
}
