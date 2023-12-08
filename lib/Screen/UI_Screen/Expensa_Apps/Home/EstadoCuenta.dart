import 'package:flutter/material.dart';

import 'Recibo.dart';

class estadoCuenta extends StatefulWidget {
  @override
  _estadoCuentaState createState() => _estadoCuentaState();
}

class _estadoCuentaState extends State<estadoCuenta> {
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
            child: Padding(
              padding: const EdgeInsets.only(top: 85.0),
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: DefaultTabController(
                      length: 2,
                      child: new Scaffold(
                        backgroundColor: Colors.transparent,
                        appBar: PreferredSize(
                          preferredSize:
                              Size.fromHeight(42.0), // here the desired height
                          child: new AppBar(
                            backgroundColor: Colors.transparent,
                            elevation: 0.0,
                            centerTitle: true,
                            automaticallyImplyLeading: false,
//                  leading: Icon(Icons.vpn_key,color: Colors.transparent,size: 0.0,),
//                  actions: <Widget>[
//                    Icon(Icons.vpn_key,color: Colors.transparent,size: 80.0,),
//                  ],
                            title: Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0)),
                                  border: Border.all(color: Colors.black54),
                                  color: Colors.black26),
                              child: new TabBar(
                                unselectedLabelColor: Colors.white54,

//                                indicator:ShapeDecoration(shape:Border.all(width: 100.0,color: Color(0xFF255B7F),)),
                                indicator: ShapeDecoration.fromBoxDecoration(
                                    BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.0)),
                                        color: Color(0xFF255B7F))),
//                                labelStyle: TextStyle(decorationColor: Colors.blue),
                                tabs: [
                                  new Tab(
                                    child: Text(
                                      "Pendientes",
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    ),
                                  ),
                                  new Tab(
                                    child: Text(
                                      "Pegadas",
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  )
                                ],
                                indicatorColor: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        body: new TabBarView(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20.0, top: 20.0),
                              child: Pendientes(),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20.0, top: 20.0),
                              child: Pegadas(),
                            ),
                          ],
                        ),
                      ),
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
                        "Estado de cuenta",
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
                            onTap: () {
//                              Navigator.of(context).push(PageRouteBuilder(pageBuilder: (_,__,___)=> comunicadosTwo() ));
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 14.0),
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

class Pendientes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: .0, right: 0.0),
            child: Container(
              height: 40.0,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                  color: Colors.white54),
              child: GestureDetector(
                onTap: () {
                  /// your function here
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Text(
                        "Total por pagar a la fecha",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 15.5),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: Text("1,889,00",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w800,
                              fontSize: 15.5)),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.black54.withOpacity(0.3),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Column(
                  children: <Widget>[
                    itemCard(
                      title: "Servicio consumo de agua potable",
                      date: "Abril/2018",
                      price: "121.00",
                    ),
                    itemCard(
                      title: "Expensa minicondominio",
                      date: "Abril/2018",
                      price: "800.00",
                    ),
                    itemCard(
                      title: "Servicio consumo de agua potable",
                      date: "Mayo/2018",
                      price: "167.00",
                    ),
                    itemCard(
                      title: "Expensa minicodominio ",
                      date: "Mayo/2018",
                      price: "800.00",
                    ),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: .0, right: 0.0, top: 20.0, bottom: 20.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                  color: Colors.white54),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Forma de pago: ",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 15.5),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text("Deposito o transferenci: Banco BISA S.A.",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: 15.0)),
                    Text("Cuenta Corriente en Bolivianos",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: 15.0)),
                    Text("No. 567600-001-3",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: 15.0)),
                    Text("A nombre de:.",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: 15.0)),
                    Text("- Luis Guillermo Tavera Neira, CI 6229704 SC",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: 15.0)),
                    SizedBox(
                      height: 10.0,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class itemCard extends StatelessWidget {
  String? title, date, price;
  itemCard({this.title, this.date, this.price});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 15.0, right: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 220.0,
                    child: Text(
                      title!,
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 2.0),
                    child: Container(
                        width: 64.0,
                        child: Text(
                          price!,
                          style:
                              TextStyle(color: Colors.white70, fontSize: 16.0),
                        )),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 7.0),
              child: Text(
                date!,
                style: TextStyle(color: Colors.white70),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
          child: line(double.infinity),
        ),
      ],
    );
  }
}

Widget line(double width) {
  return Container(
    height: 0.5,
    width: width,
    color: Colors.blueAccent.withOpacity(0.5),
  );
}

class Pegadas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        InkWell(
            onTap: () {
              Navigator.of(context).push(
                  PageRouteBuilder(pageBuilder: (_, __, ___) => new recibo()));
            },
            child: itemCardPegadas(
                "Expensa minicondominio ",
                "Recibo No 001234",
                "1.600.00",
                "Marzo/2018",
                "Pagada: 20/02/2018")),
        SizedBox(
          height: 20.0,
        ),
        itemCardPegadas("Expensa minicondominio", "Recibo No 001015", "800.00",
            "Febrero/2018", "Pagada: 15/01/2018")
      ],
    );
  }
}

Widget itemCardPegadas(
    String txt, String desc, String price, String date, String dateBottom) {
  return Column(
    children: <Widget>[
      Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(12.0),
                topLeft: Radius.circular(12.0)),
            color: Color(0xFF252B37)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: 200.0,
                        child: Text(
                          txt,
                          style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.w600,
                            fontSize: 15.5,
                          ),
                          overflow: TextOverflow.fade,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 3.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              alignment: Alignment.centerRight,
                              width: 70.0,
                              color: Colors.transparent,
                              child: Text(
                                price,
                                style: TextStyle(
                                  color: Colors.white30,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.5,
                                ),
                                overflow: TextOverflow.fade,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 0.0),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white30,
                                size: 16.0,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        date,
                        style: TextStyle(color: Colors.white70),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                    ],
                  ),
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
          padding: const EdgeInsets.only(left: 20.0, right: 10.0),
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
              Text(
                dateBottom,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.green.withOpacity(0.5)),
              )
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
  );
}
