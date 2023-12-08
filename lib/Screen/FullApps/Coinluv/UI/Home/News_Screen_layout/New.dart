import 'package:crypto_template/Screen/FullApps/Coinluv/Component/Style.dart';
import 'package:flutter/material.dart';

import 'NewsLayout.dart';
import 'Signals.dart';

class newLayout extends StatefulWidget {
  @override
  _newLayoutState createState() => _newLayoutState();
}

class _newLayoutState extends State<newLayout> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: ColorStyle.colorBackgroundBlack,
        appBar: AppBar(
          title: Text(
            "NEWS",
            style: txtStyle.titleAppbar,
          ),
          centerTitle: true,
          bottomOpacity: 1.0,
          backgroundColor: ColorStyle.colorBackgroundBlack,
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
          bottom: TabBar(
            indicatorColor: ColorStyle.colorOrangeBackground,
            tabs: [
              Column(children: <Widget>[
                Text(
                  "NEWS",
                  style: txtStyle.txtRegular,
                ),
                SizedBox(
                  height: 10.0,
                )
              ]),
              Column(children: <Widget>[
                Text(
                  "SIGNALS",
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
          children: [newsLayout(), signals()],
        ),
      ),
    );
  }
}
