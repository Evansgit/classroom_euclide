import 'package:flutter/material.dart';

import 'NuevaSolicitudes.dart';
import 'NuevaSolicitudesTwo.dart';

class twoSolicitudes extends StatefulWidget {
  @override
  _twoSolicitudesState createState() => _twoSolicitudesState();
}

class _twoSolicitudesState extends State<twoSolicitudes> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final MediaQueryData media = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: 800.0,
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
                            height: 70.0,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0)),
                              color: Color(0xFF255B7F),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 25.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    "lib/Screen/UI_Screen/Expensa_Apps/assets/icon/opt_solicitudes_new_adm.png",
                                    height: 37.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      "Reserva de instalaciones",
                                      style: TextStyle(
                                          color: Colors.white70,
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                  PageRouteBuilder(
                                      pageBuilder: (_, __, ___) =>
                                          new nuevaSolicitudesTwo()));
                            },
                            child: card(
                                "Reserva dia del padre",
                                "Solicitada: 09/05/2018",
                                "Salon de eventos",
                                "PENDIENTE",
                                Colors.deepOrangeAccent,
                                "Requerida: 09/05/2018")),
                        SizedBox(
                          height: 10.0,
                        ),
                        card(
                            "Fiesta de bautizo de Juan Perez del Carpio",
                            "Solicitada: 09/05/2018",
                            "Salon de eventos",
                            "EN PROCESO",
                            Colors.blueAccent,
                            "Requerida: 09/05/2018"),
                        SizedBox(
                          height: 10.0,
                        ),
                        card(
                            "Reserva dia del padre",
                            "Solicitada: 09/05/2018",
                            "Salon de eventos ",
                            "COMPLETADA",
                            Colors.green,
                            "Requerida: 09/05/2018"),
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
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Center(
                            child: Text(
                          "Solicitudes",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.0,
                              fontFamily: "Popins",
                              fontWeight: FontWeight.w600),
                        )),
                      ),
                      Stack(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: Opacity(
                                opacity: 0.5,
                                child: Image.asset(
                                  "lib/Screen/UI_Screen/Expensa_Apps/assets/img/logoAppbar.png",
                                )),
                          ),
                          InkWell(
                            onTap: () {
//                              Navigator.of(context).push(PageRouteBuilder(pageBuilder: (_,__,___)=> comunicadosTwo() ));
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).pushReplacement(
                                      PageRouteBuilder(
                                          pageBuilder: (_, __, ___) =>
                                              nuevaSolicitudes()));
                                },
                                child: Center(
                                  child: Container(
                                    height: 28.0,
                                    width: 70.0,
                                    decoration: BoxDecoration(
                                        color: Colors.blueAccent,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(7.0))),
                                    child: Center(
                                      child: Text(
                                        "Nueva",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
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

Widget line(double width) {
  return Container(
    height: 0.5,
    width: width,
    color: Color(0xFF86CBF9).withOpacity(0.6),
  );
}

Widget card(String txt, String solicitada, String salon, String pendiente,
    Color color, String requerida) {
  return Padding(
    padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
    child: Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.black12.withOpacity(0.1),
                    spreadRadius: 1.0,
                    blurRadius: 2.0)
              ],
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12.0),
                  topLeft: Radius.circular(12.0)),
              color: Colors.black12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Row(
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
          height: 34.0,
          width: double.infinity,
          color: Colors.black26,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    width: 170.0,
                    child: Text(
                      salon,
                      style: TextStyle(color: Colors.white54, fontSize: 14.0),
                      overflow: TextOverflow.ellipsis,
                    )),
                Text(
                  pendiente,
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w700,
                      color: color),
                )
              ],
            ),
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
                Container(
                    width: 150.0,
                    child: Text(
                      solicitada,
                      style: TextStyle(
                        color: Colors.white54,
                        fontWeight: FontWeight.w400,
                        fontSize: 13.0,
                      ),
                    )),
                Container(
                    width: 140.0,
                    child: Text(
                      requerida,
                      style: TextStyle(
                        color: Colors.white54,
                        fontWeight: FontWeight.w400,
                        fontSize: 13.0,
                      ),
                    )),
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
