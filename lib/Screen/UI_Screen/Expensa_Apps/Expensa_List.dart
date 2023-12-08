import 'package:crypto_template/Screen/UI_Screen/Expensa_Apps/Login/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'Home/CarouselDetail.dart';
import 'Home/Comunicados.dart';
import 'Home/ComunicadosTwo.dart';
import 'Home/EstadoCuenta.dart';
import 'Home/Home.dart';
import 'Home/NuevaSolicitudes.dart';
import 'Home/NuevaSolicitudesTwo.dart';
import 'Home/Recibo.dart';
import 'Home/SeleccionarAno.dart';
import 'Home/SeleccionarMes.dart';
import 'Home/Solicitudes.dart';
import 'Home/twoSolicitudes.dart';
import 'Login/login.dart';

class ExpensaList extends StatefulWidget {
  ExpensaList({Key? key}) : super(key: key);

  @override
  _ExpensaListState createState() => _ExpensaListState();
}

class _ExpensaListState extends State<ExpensaList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text(
          "Expensa List",
          style: TextStyle(
              fontFamily: "Sofia",
              fontWeight: FontWeight.w700,
              color: Colors.black),
        ),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SplashScreenExpensa()));
                },
                child: card("Expensa Screen 1", Color(0xFFFBC6A4))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => loginExpensa()));
                },
                child: card("Expensa Screen 2", Color(0xFFFBC6A4))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      PageRouteBuilder(pageBuilder: (_, __, ___) => home()));
                },
                child: card("Expensa Screen 3", Color(0xFFFBC6A4))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => twoSolicitudes()));
                },
                child: card("Expensa Screen 4", Color(0xFFFBC6A4))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => comunicados()));
                },
                child: card("Expensa Screen 5", Color(0xFFFBC6A4))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => comunicadosTwo()));
                },
                child: card("Expensa Screen 6", Color(0xFFFBC6A4))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => estadoCuenta()));
                },
                child: card("Expensa Screen 7", Color(0xFFFBC6A4))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => nuevaSolicitudes()));
                },
                child: card("Expensa Screen 8", Color(0xFFFBC6A4))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => nuevaSolicitudesTwo()));
                },
                child: card("Expensa Screen 9", Color(0xFFFBC6A4))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => carouselDetail()));
                },
                child: card("Expensa Screen 10", Color(0xFFFBC6A4))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => seleccionarAno()));
                },
                child: card("Expensa Screen 11", Color(0xFFFBC6A4))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => seleccionarMes()));
                },
                child: card("Expensa Screen 12", Color(0xFFFBC6A4))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => solicitudes()));
                },
                child: card("Expensa Screen 13", Color(0xFFFBC6A4))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      PageRouteBuilder(pageBuilder: (_, __, ___) => recibo()));
                },
                child: card("Expensa Screen 14", Color(0xFFFBC6A4))),
          ],
        ),
      ),
    );
  }

  Widget card(String title, Color _colors) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
                color: _colors,
                borderRadius: BorderRadius.all(Radius.circular(5.0))),
            child: Center(
              child: Image.asset(
                "assets/images/logo.png",
                height: 45.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Stack(
              children: [
                Container(
                  height: 90.0,
                  width: MediaQuery.of(context).size.width - 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12.withOpacity(0.03),
                            blurRadius: 10.0,
                            spreadRadius: 5.0)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 32.0, left: 19.0),
                    child: Text(
                      title,
                      style: TextStyle(
                          fontFamily: "Sofia",
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width - 145, top: 30.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: CircleAvatar(
                      child: Center(
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 14.0,
                        ),
                      ),
                      backgroundColor: _colors,
                      radius: 14.0,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
