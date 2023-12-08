import 'package:crypto_template/Screen/UI_Screen/Expensa_Apps/Home/CarouselDetail.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'ComunicadosTwo.dart';
import 'EstadoCuenta.dart';
import 'Solicitudes.dart';
import 'detailDrawer/Articulos.dart';
import 'detailDrawer/Blog.dart';
import 'detailDrawer/Documentos.dart';
import 'detailDrawer/ayudaDetail.dart';
import 'detailDrawer/compraVenta.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  List<String> imageSlider = [
    "lib/Screen/UI_Screen/Expensa_Apps/assets/img/carousel_image_1.png",
    "lib/Screen/UI_Screen/Expensa_Apps/assets/img/carousel_image_2.png",
    "lib/Screen/UI_Screen/Expensa_Apps/assets/img/carousel_image_3.png",
  ];
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final MediaQueryData media = MediaQuery.of(context);
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          elevation: 10.0,
          title: Text(
            "XPENSA",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
          backgroundColor: Color(0xFF29303C),
          actions: <Widget>[
            Opacity(
                opacity: 0.5,
                child: Image.asset(
                  "lib/Screen/UI_Screen/Expensa_Apps/assets/img/logoAppbar.png",
                ))
          ],
        ),
        drawer: DrawerLayout(),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      "lib/Screen/UI_Screen/Expensa_Apps/assets/img/background.png"),
                  fit: BoxFit.cover)),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  height: 210.0,
                  child: CarouselSlider(
                    options: CarouselOptions(
                      viewportFraction: 0.87,
                      initialPage: 0,
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                    ),
                    items: [0, 1, 2].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return InkWell(
                            onTap: () {
                              Navigator.of(context).push(PageRouteBuilder(
                                  pageBuilder: (_, __, ___) =>
                                      new carouselDetail()));
                            },
                            child: new Container(
                              width: MediaQuery.of(context).size.width,
                              margin: new EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: new BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(imageSlider[i]),
                                      fit: BoxFit.contain)),
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),
//            PromoHorizontalList,
                SizedBox(
                  height: 0.0,
                ),
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (_, __, ___) => comunicadosTwo()));
                    },
                    child: card(
                        "lib/Screen/UI_Screen/Expensa_Apps/assets/icon/opt_comunicados.png",
                        "Comunicados")),
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (_, __, ___) => solicitudes()));
                    },
                    child: card(
                        "lib/Screen/UI_Screen/Expensa_Apps/assets/icon/opt_solicitudes.png",
                        "Solicitudes")),
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (_, __, ___) => estadoCuenta()));
                    },
                    child: card(
                        "lib/Screen/UI_Screen/Expensa_Apps/assets/icon/opt_mi_estado.png",
                        "Mi estado de cuenta")),
                InkWell(
//                onTap: (){
//                  Navigator.of(context).push(PageRouteBuilder(pageBuilder: (_,__,___)=> recibo()));
//                },
                    child: card(
                        "lib/Screen/UI_Screen/Expensa_Apps/assets/icon/opt_reportes.png",
                        "Reportes")),
                InkWell(
                    onTap: () {},
                    child: card(
                        "lib/Screen/UI_Screen/Expensa_Apps/assets/icon/opt_enviar.png",
                        "Enviar comprobante")),
                SizedBox(
                  height: 20.0,
                )
              ],
            ),
          ),
        ));
  }

  enviarComprobante() {}
}

Widget card(String icon, String txt) {
  return Padding(
    padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0),
    child: Container(
      height: 70.0,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Colors.black26,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Image.asset(
              icon,
              height: 43.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Text(
              txt,
              style: TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.w700,
                fontSize: 17.0,
              ),
            ),
          )
        ],
      ),
    ),
  );
}

var PromoHorizontalList = Container(
  color: Colors.transparent,
  height: 240.0,
  padding: EdgeInsets.only(bottom: 15.0, top: 10.0),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(left: 20.0, top: 0.0, bottom: 0.0),
      ),
      Expanded(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(top: 10.0),
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(left: 20.0)),
            InkWell(
                onTap: () {},
                child: Image.asset(
                  "lib/Screen/UI_Screen/Expensa_Apps/assets/img/carousel_image_1.png",
                  fit: BoxFit.cover,
                )),
            Padding(padding: EdgeInsets.only(left: 10.0)),
            InkWell(
                onTap: () {},
                child: Image.asset(
                    "lib/Screen/UI_Screen/Expensa_Apps/assets/img/carousel_image_2.png",
                    fit: BoxFit.cover)),
            Padding(padding: EdgeInsets.only(left: 10.0)),
            InkWell(
                onTap: () {},
                child: Image.asset(
                    "lib/Screen/UI_Screen/Expensa_Apps/assets/img/carousel_image_3.png",
                    fit: BoxFit.cover)),
            Padding(padding: EdgeInsets.only(left: 10.0)),
          ],
        ),
      ),
    ],
  ),
);

class DrawerLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      color: Color(0xFF29303C),
      child: Column(
        children: <Widget>[
          Flexible(
            child: new ListView(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 220.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "lib/Screen/UI_Screen/Expensa_Apps/assets/img/background_side_menu.png"),
                          fit: BoxFit.cover)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 110.0, left: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("JARDINES DEL URUBO II",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17.0,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Helvetica")),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: Text("CUPESI II",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.0)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Text(
                            "Juan Jose Morales Terceros",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.3,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                line(double.infinity),
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (_, __, ___) => blogDetail()));
                    },
                    child: itemDrawer(
                        "lib/Screen/UI_Screen/Expensa_Apps/assets/icon/opt_side_menu_blog.png",
                        "Blog")),
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (_, __, ___) => documentosDetail()));
                    },
                    child: itemDrawer(
                        "lib/Screen/UI_Screen/Expensa_Apps/assets/icon/opt_side_menu_documentos.png",
                        "Documentos de interes")),
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (_, __, ___) => articulosDetail()));
                    },
                    child: itemDrawer(
                        "lib/Screen/UI_Screen/Expensa_Apps/assets/icon/opt_side_menu_articulos.png",
                        "Articulos perdidos")),
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (_, __, ___) => compraDetail()));
                    },
                    child: itemDrawer(
                        "lib/Screen/UI_Screen/Expensa_Apps/assets/icon/opt_side_menu_compra.png",
                        "Compra y venta de articulos")),
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (_, __, ___) => ayudaDetail()));
                    },
                    child: itemDrawer(
                        "lib/Screen/UI_Screen/Expensa_Apps/assets/icon/opt_side_menu_ayuda.png",
                        "Ayuda y soporte")),
                SizedBox(
                  height: 3.0,
                )
              ],
            ),
          ),
          line(double.infinity),
          Container(
            height: 50.0,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFF0A131F),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        "lib/Screen/UI_Screen/Expensa_Apps/assets/icon/opt_side_menu_mi_perfil.png",
                        height: 25.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          "Mi perfil",
                          style: TextStyle(color: Colors.white70),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40.0),
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        "lib/Screen/UI_Screen/Expensa_Apps/assets/icon/opt_side_menu_salir.png",
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          "Salir",
                          style: TextStyle(color: Colors.white70),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}

Widget line(double width) {
  return Container(
    height: 0.5,
    width: width,
    color: Color(0xFF86CBF9).withOpacity(0.6),
  );
}

Widget itemDrawer(String img, String txt) {
  return Padding(
    padding: const EdgeInsets.only(top: 30.0, left: 20.0),
    child: Row(
      children: <Widget>[
        Image.asset(
          img,
          height: 40.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                txt,
                style: TextStyle(color: Colors.white70, fontSize: 15.5),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: line(200.0),
              )
            ],
          ),
        )
      ],
    ),
  );
}
