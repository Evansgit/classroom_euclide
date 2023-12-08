import 'package:crypto_template/Screen/UI_Screen/Expensa_Apps/ComponentScreen/InstalationList.dart';
import 'package:crypto_template/Screen/UI_Screen/Expensa_Apps/ComponentScreen/Nota.dart';
import 'package:crypto_template/Screen/UI_Screen/Expensa_Apps/Home/twoSolicitudes.dart';
import 'package:flutter/material.dart';

class nuevaSolicitudes extends StatefulWidget {
  @override
  _nuevaSolicitudesState createState() => _nuevaSolicitudesState();
}

class _nuevaSolicitudesState extends State<nuevaSolicitudes> {
  DateTime dateTime = DateTime.now();
  DateTime dateTime2 = DateTime.now();
  String dateText = "";
  String dateText2 = "";
  String timeTxt = "";
  String noteTxt = "";
  String _format = 'yyyy-mmmm-dd';
  bool _showTitleActions = true;

  String _datetimeTop = '';
  String _datetime = '';
  int _year = 2018;
  int _month = 11;
  int _date = 11;
  List<String> _categoryDropDownList = [];
  String? _dropDownCategoryValue;
  TextEditingController _langCtrl = TextEditingController();
  TextEditingController _formatCtrl = TextEditingController();

  Future<Null> _setDate(BuildContext context) async {
    final picked = await showDatePicker(
        context: context,
        initialDate: dateTime,
        firstDate: DateTime(2018),
        lastDate: DateTime(2050));

    if (picked != null) {
      setState(() {
        dateTime = picked;
        dateText = "${picked.day}/${picked.month}/${picked.year}";
      });
    }
  }

  Future<Null> _setDateRequerida(BuildContext context) async {
    final picked = await showDatePicker(
        context: context,
        initialDate: dateTime2,
        firstDate: DateTime(2018),
        lastDate: DateTime(2050));

    if (picked != null) {
      setState(() {
        dateTime2 = picked;
        dateText2 = "${picked.day}/${picked.month}/${picked.year}";
      });
    }
  }

  @override
  void initState() {
    _langCtrl.text = 'zh';
    _formatCtrl.text = 'yyyy-mmmm-dd';

    DateTime now = DateTime.now();
    _year = now.year;
    _month = now.month;
    _date = now.day;
    // TODO: implement initState
    _categoryDropDownList
        .addAll(['Instalation 1', 'Instalation 2', 'Instalation 3']);
    dateText = "${dateTime.day}/${dateTime.month}/${dateTime.year}";
    dateText2 = "${dateTime.day}/${dateTime.month}/${dateTime.year}";
    super.initState();
  }

  String? notas = '';
  String? instalation = '';

  /// Display date picker.
  void _showDatePicker() {}

  /// Display date picker.
  void _showDatePickerTop() {}

  void _changeDatetimeTop(int year, int month, int date) {
    setState(() {
      _year = year;
      _month = month;
      _date = date;
      _datetimeTop = '$date/$month/$year';
    });
  }

  void _changeDatetime(int year, int month, int date) {
    setState(() {
      _year = year;
      _month = month;
      _date = date;
      _datetime = '$date/$month/$year';
    });
  }

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
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 18.0, left: 10.0, right: 10.0),
                          child: Container(
                            height: 400.0,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                                color: Colors.black54.withOpacity(0.3)),
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 25.0, left: 15.0, right: 15.0),
                                  child: InkWell(
                                    onTap: () {
                                      _showDatePickerTop();
//                                                  _setDate(context);
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          "Fecha solicitud:",
                                          style: TextStyle(
                                              color: Colors.white70,
                                              fontSize: 16.0),
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 4.0),
                                              child: Text(
                                                _datetimeTop,
                                                style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 16.0),
                                              ),
                                            ),
                                            Icon(
                                              Icons.arrow_forward_ios,
                                              color: Colors.white70,
                                              size: 16.0,
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15.0, left: 15.0, right: 15.0),
                                  child: line(double.infinity),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10.0, left: 15.0, right: 15.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        "Asunto:",
                                        style: TextStyle(
                                            color: Colors.white70,
                                            fontSize: 16.0),
                                      ),
                                      Container(
                                        child: Flexible(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 108.0),
                                            child: TextField(
                                              style: TextStyle(
                                                  color: Colors.white70),
                                              decoration: InputDecoration(
                                                hintText:
                                                    "Titilo de la solicitud",
                                                hintStyle: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 16.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10.0, left: 15.0, right: 15.0),
                                  child: line(double.infinity),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 25.0, left: 15.0, right: 15.0),
                                  child: InkWell(
                                    onTap: () {
                                      _awaitReturnValueFromNotas(context);
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          "Notas:",
                                          style: TextStyle(
                                              color: Colors.white70,
                                              fontSize: 16.0),
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 0.0),
                                              child: Container(
                                                  width: 120.0,
                                                  height: 20.0,
                                                  child: Text(
                                                    notas!,
                                                    style: TextStyle(
                                                        color: Colors.white70),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  )),
                                            ),
                                            Icon(
                                              Icons.arrow_forward_ios,
                                              color: Colors.white70,
                                              size: 16.0,
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15.0, left: 15.0, right: 15.0),
                                  child: line(double.infinity),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5.0, left: 15.0, right: 15.0),
                                  child: InkWell(
                                    onTap: () {
                                      _awaitReturnValueFromInstalation(context);
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 15.0, bottom: 15.0),
                                          child: Container(
                                              child: Text(
                                            "Instalation :",
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 16.0),
                                          )),
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Text(
                                              instalation!,
                                              style: TextStyle(
                                                color: Colors.white70,
                                              ),
                                            ),
                                            Icon(
                                              Icons.arrow_forward_ios,
                                              color: Colors.white70,
                                              size: 16.0,
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5.0, left: 15.0, right: 15.0),
                                  child: line(double.infinity),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 25.0, left: 15.0, right: 15.0),
                                  child: InkWell(
                                    onTap: () {
                                      _showDatePicker();
//                                                  _setDateRequerida(context);
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          "Fecha Requerida:",
                                          style: TextStyle(
                                              color: Colors.white70,
                                              fontSize: 16.0),
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 4.0),
                                              child: Text(
                                                '$_datetime',
                                                style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 16.0),
                                              ),
                                            ),
                                            Icon(
                                              Icons.arrow_forward_ios,
                                              color: Colors.white70,
                                              size: 16.0,
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15.0, left: 15.0, right: 15.0),
                                  child: line(double.infinity),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5.0, left: 15.0, right: 15.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        "Costo:",
                                        style: TextStyle(
                                            color: Colors.white70,
                                            fontSize: 16.0),
                                      ),
                                      Container(
                                        child: Flexible(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 218.0),
                                            child: TextField(
                                              keyboardType:
                                                  TextInputType.number,
                                              style: TextStyle(
                                                  color: Colors.white70),
                                              decoration: InputDecoration(
                                                hintText: "0,00",
                                                hintStyle: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 16.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10.0, left: 15.0, right: 15.0),
                                  child: line(double.infinity),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, right: 10.0, top: 20.0),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7.0)),
                              color: Color(0xFFC7C8CC),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 15.0, top: 15.0),
                                    child: Text(
                                      "Sobre la reserva de instalaciones Alqui un texto para explicar todo el proceso y algunas reglas/ normas a tomar encuenta. Explicacion que puede estar en un campo en el sistema para cada condominio",
                                      style: TextStyle(
                                        height: 1.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 16.2,
                                      ),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30.0,
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
                              Navigator.of(context).pushReplacement(
                                  PageRouteBuilder(
                                      pageBuilder: (_, __, ___) =>
                                          twoSolicitudes()));
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
                          "Nueva Solicitudes",
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
                                              twoSolicitudes()));
                                },
                                child: Center(
                                  child: Container(
                                    height: 28.0,
                                    width: 70.0,
                                    decoration: BoxDecoration(
                                        color: Colors.deepOrangeAccent,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(7.0))),
                                    child: Center(
                                      child: Text(
                                        "Enviar",
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

  void _awaitReturnValueFromNotas(BuildContext context) async {
    // start the SecondScreen and wait for it to finish with a result
    final resultNotas = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => nota(),
        ));

    // after the SecondScreen result comes back update the Text widget with it
    setState(() {
      notas = resultNotas;
    });
  }

  void _awaitReturnValueFromInstalation(BuildContext context) async {
    // start the SecondScreen and wait for it to finish with a result
    final resultInstalation = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => instalationList(),
        ));

    // after the SecondScreen result comes back update the Text widget with it
    setState(() {
      instalation = resultInstalation;
    });
  }
}

Widget line(double width) {
  return Container(
    height: 0.5,
    width: width,
    color: Color(0xFF86CBF9).withOpacity(0.6),
  );
}
