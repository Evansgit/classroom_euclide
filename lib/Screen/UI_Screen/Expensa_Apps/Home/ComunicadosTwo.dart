import 'package:flutter/material.dart';

import 'Comunicados.dart';

class comunicadosTwo extends StatefulWidget {
  @override
  _comunicadosTwoState createState() => _comunicadosTwoState();
}

class _comunicadosTwoState extends State<comunicadosTwo> {
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
                    padding: const EdgeInsets.only(top: 100.0),
                    child: Column(
                      children: <Widget>[
                        InkWell(
                            onTap: () {
                              Navigator.of(context).push(PageRouteBuilder(
                                  pageBuilder: (_, __, ___) => comunicados()));
                            },
                            child: card(
                                "Convocatoria a Eleccion de Directores 2018 - 2019 n de Directores 2018 - 2019",
                                "13/11/2017 ",
                                Icons.attach_file)),
                        InkWell(
                            onTap: () {
//                              Navigator.of(context).push(PageRouteBuilder(pageBuilder: (_,__,___)=>null));
                            },
                            child: card("Citacion: Gran Asamblea General",
                                "02/11/2017", Icons.attach_file)),
                        InkWell(
                            onTap: () {
//                              Navigator.of(context).push(PageRouteBuilder(pageBuilder: (_,__,___)=>null));
                            },
                            child: card(
                                "Informe y requerimiento policial \"IV Cumbre del Foro de Paises ",
                                "20/10/2017",
                                Icons.attach_file)),
                        InkWell(
                            onTap: () {
//                              Navigator.of(context).push(PageRouteBuilder(pageBuilder: (_,__,___)=>null));
                            },
                            child: card(
                                "Normas vigentes para construcciones, mejoras y modificacione dentro de la",
                                "04/09/2017",
                                Icons.attach_file)),
                        InkWell(
                            onTap: () {
//                              Navigator.of(context).push(PageRouteBuilder(pageBuilder: (_,__,___)=>null));
                            },
                            child: card(
                                "Arreglos Puente Mario Foianini - Comunicado oficial Gobierno",
                                "21/07/2017",
                                Icons.attach_file)),
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

Widget card(String txt, String desc, IconData icon) {
  return Padding(
    padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
    child: Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12.0),
                  topLeft: Radius.circular(12.0)),
              color: Colors.black54.withOpacity(0.3)
//              color: Color(0xFF252B37).withOpacity(0.2)
              ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: 275.0,
                          child: Text(
                            txt,
                            style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.w400,
                              fontSize: 15.5,
                            ),
                            overflow: TextOverflow.fade,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white70,
                            size: 21.0,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 32.0,
          width: double.infinity,
          color: Colors.black38,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  desc,
                  style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.w400,
                    fontSize: 13.0,
                  ),
                ),
                Icon(
                  icon,
                  color: Colors.white70,
                  size: 17.0,
                ),
              ],
            ),
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
