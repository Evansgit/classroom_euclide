import 'package:crypto_template/Screen/FullApps/Coinluv/Component/Style.dart';
import 'package:crypto_template/Screen/FullApps/Coinluv/UI/Home/coin_detail/tab_one.dart';
import 'package:crypto_template/Screen/FullApps/Coinluv/UI/Home/coin_detail/tab_two.dart';
import 'package:flutter/material.dart';

class coinDetail extends StatefulWidget {
  _coinDetailState createState() => _coinDetailState();
}

class _coinDetailState extends State<coinDetail> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: ColorStyle.colorBackgroundBlack,
        appBar: AppBar(
          title: Text(
            "Bitcoin (BTC)",
            style: txtStyle.titleAppbar,
          ),
          centerTitle: true,
          bottomOpacity: 1.0,
          backgroundColor: ColorStyle.colorBackgroundBlack,
          bottom: TabBar(
            indicatorColor: ColorStyle.colorOrangeBackground,
            tabs: [
              Column(children: <Widget>[
                Text(
                  "Tab 1",
                  style: txtStyle.txtRegular,
                ),
                SizedBox(
                  height: 10.0,
                )
              ]),
              Column(children: <Widget>[
                Text(
                  "Tab 2",
                  style: txtStyle.txtRegular,
                ),
                SizedBox(
                  height: 10.0,
                )
              ]),
              Column(children: <Widget>[
                Text(
                  "Tab 3",
                  style: txtStyle.txtRegular,
                ),
                SizedBox(
                  height: 10.0,
                )
              ]),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            tabOne(),
            tabTwo(),
            Center(child: Text("Page 3")),
          ],
        ),
      ),
    );
  }
}
