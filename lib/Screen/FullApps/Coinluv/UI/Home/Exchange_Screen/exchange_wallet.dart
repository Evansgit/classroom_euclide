import 'package:crypto_template/Screen/FullApps/Coinluv/Component/Style.dart';
import 'package:flutter/material.dart';

import 'exchange_detail.dart';

class exchangeWallet extends StatefulWidget {
  @override
  _exchangeWalletState createState() => _exchangeWalletState();
}

class _exchangeWalletState extends State<exchangeWallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyle.colorBackgroundBlack,
      appBar: AppBar(
        title: Text("EXCHANGE", style: txtStyle.titleAppbar),
        centerTitle: true,
        backgroundColor: ColorStyle.colorBackgroundBlack,
        elevation: 0.0,
        actions: <Widget>[
          Icon(
            Icons.keyboard_arrow_up,
            color: Colors.white,
          ),
          Icon(
            Icons.keyboard_arrow_down,
            color: Colors.white,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
        child: Column(
          children: <Widget>[
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ///
                  /// Send text field
                  ///
                  Text(
                    "Enter your ETH wallet",
                    style: txtStyle.txtLightRoboto
                        .copyWith(fontSize: 15.5, color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0.0, right: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 0.0, right: 10.0),
                            child: Container(
                              height: 45.0,
                              width: 20.0,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                                color: Colors.white12,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: TextField(
                                  style: TextStyle(
                                      color: Colors.white70, fontSize: 15.5),
                                  keyboardType: TextInputType.number,
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 45.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            color: ColorStyle.colorSenondaryBackground,
                          ),
                          child: Icon(
                            Icons.subdirectory_arrow_right,
                            size: 22.0,
                            color: ColorStyle.colorOrangeBackground,
                          ),
                        )
                      ],
                    ),
                  ),

                  ///
                  ///Receive Text Field
                  ///
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    "Enter tag (If any)",
                    style: txtStyle.txtLightRoboto
                        .copyWith(fontSize: 15.5, color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0.0, right: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 0.0, right: 10.0),
                            child: Container(
                              height: 45.0,
                              width: 20.0,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                                color: Colors.white12,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: TextField(
                                  style: TextStyle(
                                      color: Colors.white70, fontSize: 15.5),
                                  keyboardType: TextInputType.number,
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  ///
                  /// Button
                  ///
                  SizedBox(
                    height: 40.0,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (_, __, ___) => exchangeDetail()));
                    },
                    child: Container(
                      height: 50.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            ColorStyle.colorOrangeBackground,
                            Colors.orange
                          ]),
                          borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      child: Center(
                        child: Text(
                          "EXCHANGE NOW",
                          style: txtStyle.txtMedium,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Text(
                "Don't have a wallet?",
                style: txtStyle.txtLight,
              ),
            )
          ],
        ),
      ),
    );
  }
}
