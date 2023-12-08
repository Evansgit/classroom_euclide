import 'package:crypto_template/Screen/FullApps/Coinluv/Component/Style.dart';
import 'package:flutter/material.dart';

import 'exchange_wallet.dart';

class exchage_send extends StatefulWidget {
  _exchage_sendState createState() => _exchage_sendState();
}

class _exchage_sendState extends State<exchage_send> {
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ///
              /// Send text field
              ///
              Text(
                "You Send",
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
                        padding: const EdgeInsets.only(left: 0.0, right: 10.0),
                        child: Container(
                          height: 45.0,
                          width: 20.0,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            color: Colors.white12,
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
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
                      width: 100.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        color: ColorStyle.colorSenondaryBackground,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Row(
                          children: <Widget>[
                            Image.network(
                              "https://www.cryptocurrencer.com/wp-content/uploads/2018/01/CRYPTOCURRENCY-bitcoin-logo.jpg",
                              height: 25.0,
                              width: 25.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: Text(
                                "BTC",
                                style: txtStyle.txtRegular,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white,
                            ),
                          ],
                        ),
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
                "You Receive",
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
                        padding: const EdgeInsets.only(left: 0.0, right: 10.0),
                        child: Container(
                          height: 45.0,
                          width: 20.0,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            color: Colors.white12,
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
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
                      width: 100.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        color: ColorStyle.colorSenondaryBackground,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Row(
                          children: <Widget>[
                            Image.network(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Ethereum_logo_2014.svg/2000px-Ethereum_logo_2014.svg.jpg",
                              height: 25.0,
                              width: 25.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: Text(
                                "ETH",
                                style: txtStyle.txtRegular,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    )
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
                      pageBuilder: (_, __, ___) => exchangeWallet()));
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

              ///
              /// Note
              ///
              SizedBox(
                height: 30.0,
              ),
              Text(
                "IMPORTANT !",
                style: txtStyle.txtRegular,
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                width: double.infinity,
                color: ColorStyle.colorSenondaryBackground,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 25.0, left: 15.0, right: 15.0, bottom: 30.0),
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                    style: txtStyle.txtLightRoboto,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
