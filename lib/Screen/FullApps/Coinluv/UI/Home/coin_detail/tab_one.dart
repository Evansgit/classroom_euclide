import 'package:crypto_template/Screen/FullApps/Coinluv/Component/Style.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class tabOne extends StatefulWidget {
  _tabOneState createState() => _tabOneState();
}

class _tabOneState extends State<tabOne> {
  @override
  math.Random random = new math.Random();

  List<double> _generateRandomData(int count) {
    List<double> result = <double>[];
    for (int i = 0; i < count; i++) {
      result.add(random.nextDouble() * 100);
    }
    return result;
  }

  Widget build(BuildContext context) {
    //  var data = _generateRandomData(100);
    var data = [0.0, 1.0, 1.5, 2.0, 0.0, 0.0, -0.5, -1.0, -0.5, 0.0, 0.0];
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200.0,
              width: double.infinity,
              decoration:
                  BoxDecoration(color: ColorStyle.colorSenondaryBackground),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 25.0,
              left: 20.0,
              bottom: 5.0,
            ),
            child: Text(
              "BTC Market",
              style: txtStyle.txtHeader,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 148.0,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 1.0,
                      blurRadius: 1.0,
                      color: ColorStyle.colorOrangeBackground,
                    )
                  ],
                  color: ColorStyle.colorSenondaryBackground
//                border: Border.all(width: 1.5,color: ColorStyle.colorOrangeBackground)
                  ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 15.0, left: 20.0, right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Price",
                              style: txtStyle.txtMedium,
                            ),
                            Text(
                              "\$34,00.04",
                              style: txtStyle.txtLight,
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "24h Volume",
                              style: txtStyle.txtMedium,
                            ),
                            Text(
                              "23054,01 BTC",
                              style: txtStyle.txtLight,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 15.0, left: 20.0, right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "24h Change",
                              style: txtStyle.txtMedium,
                            ),
                            Text(
                              "\$230,01 (+2.34%)",
                              style: txtStyle.txtLight,
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              "Circulating Supply",
                              style:
                                  txtStyle.txtMedium.copyWith(fontSize: 13.0),
                            ),
                            Text(
                              "23054.01 BTC",
                              style: txtStyle.txtLight,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: 50.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.lightBlue, Colors.blue]),
                      borderRadius: BorderRadius.all(Radius.circular(5.0))),
                  child: Center(
                      child: Text("BUY NOW",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 15.0))),
                ),
                Container(
                  height: 50.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.red, Colors.redAccent]),
                      borderRadius: BorderRadius.all(Radius.circular(5.0))),
                  child: Center(
                      child: Text("EXCHANGE",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 15.0))),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
