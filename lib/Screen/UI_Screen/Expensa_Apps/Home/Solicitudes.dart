import 'package:crypto_template/Screen/UI_Screen/Expensa_Apps/Home/twoSolicitudes.dart';
import 'package:flutter/material.dart';

class solicitudes extends StatefulWidget {
  @override
  _solicitudesState createState() => _solicitudesState();
}

class _solicitudesState extends State<solicitudes> {
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
                    padding: const EdgeInsets.only(top: 100.0),
                    child: Column(
                      children: <Widget>[
                        InkWell(
                            onTap: () {
                              Navigator.of(context).push(PageRouteBuilder(
                                  pageBuilder: (_, __, ___) =>
                                      twoSolicitudes()));
                            },
                            child: card(
                                "lib/Screen/UI_Screen/Expensa_Apps/assets/icon/opt_solicitudes_adm.png",
                                "Solicitud a Administracion",
                                "")),
                        InkWell(
                            onTap: () {},
                            child: card(
                                "lib/Screen/UI_Screen/Expensa_Apps/assets/icon/opt_solicitudes_new_reserva.png",
                                "Reserve de instalaciones",
                                "")),
                        InkWell(
                            onTap: () {},
                            child: card(
                                "lib/Screen/UI_Screen/Expensa_Apps/assets/icon/opt_solicitudes_new_sugerencias.png",
                                "Sugerencias",
                                "")),
                        InkWell(
                            onTap: () {},
                            child: card(
                                "lib/Screen/UI_Screen/Expensa_Apps/assets/icon/opt_solicitudes_new_reclamos.png",
                                "Reclamos",
                                "")),
                        InkWell(
                            onTap: () {},
                            child: card(
                                "lib/Screen/UI_Screen/Expensa_Apps/assets/icon/opt_solicitudes_mudanzas.png",
                                "Notificacion mudanzas y traslados",
                                "")),
                        InkWell(
                            onTap: () {},
                            child: card(
                                "lib/Screen/UI_Screen/Expensa_Apps/assets/icon/opt_solicitudes_mejoras.png",
                                "Notificacion mejoras y reformas",
                                "(Trabajos de construccion, obras)")),
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
                        "Solicitudes",
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

Widget card(String icon, String txt, String desc) {
  return Padding(
    padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
    child: Column(
      children: <Widget>[
        Container(
          height: 75.0,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12.0),
                  topLeft: Radius.circular(12.0)),
              color: Colors.black26),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Image.asset(
                  icon,
                  height: 42.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 12.0),
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
                            fontWeight: FontWeight.w700,
                            fontSize: 15.5,
                          ),
                          overflow: TextOverflow.fade,
                        ),
                        Text(
                          desc,
                          style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.w500,
                            fontSize: 12.0,
                          ),
                        )
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
