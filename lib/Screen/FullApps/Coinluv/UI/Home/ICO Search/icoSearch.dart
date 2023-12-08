import 'package:crypto_template/Screen/FullApps/Coinluv/Component/Style.dart';
import 'package:flutter/material.dart';

import 'Active.dart';

class icoSearch extends StatefulWidget {
  _icoSearchState createState() => _icoSearchState();
}

class _icoSearchState extends State<icoSearch> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: ColorStyle.colorBackgroundBlack,
        appBar: AppBar(
          title: Text(
            "ICO Search",
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
                  "ACTIVE",
                  style: txtStyle.txtRegular.copyWith(fontSize: 12.0),
                ),
                SizedBox(
                  height: 10.0,
                )
              ]),
              Column(children: <Widget>[
                Text(
                  "UPCOMING",
                  style: txtStyle.txtRegular.copyWith(fontSize: 11.0),
                ),
                SizedBox(
                  height: 10.0,
                )
              ]),
              Column(children: <Widget>[
                Text(
                  "ONGOING",
                  style: txtStyle.txtRegular.copyWith(fontSize: 11.5),
                ),
                SizedBox(
                  height: 10.0,
                )
              ]),
              Column(children: <Widget>[
                Text(
                  "ENDED",
                  style: txtStyle.txtRegular.copyWith(fontSize: 12.0),
                ),
                SizedBox(
                  height: 10.0,
                )
              ]),
            ],
          ),
        ),
        endDrawer: DrawerLayout(),
        body: TabBarView(
          children: [
            active(),
            Center(child: Text("Page 3")),
            Center(child: Text("Page 3")),
            Center(child: Text("Page 3")),
          ],
        ),
      ),
    );
  }
}

class DrawerLayout extends StatelessWidget {
  @override
  bool _switch1 = false;

  Widget build(BuildContext context) {
    void _something(bool e) {}

    return Drawer(
        child: Container(
      color: Color(0xFF29303C),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 250.0,
                width: 250.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "lib/Screen/FullApps/Coinluv/image/round.png"))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0, left: 20.0),
                child: Text(
                  "Search",
                  style: txtStyle.titleAppbar
                      .copyWith(color: Colors.white, fontSize: 25.0),
                ),
              ),
            ],
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: new ListView(
                children: <Widget>[
                  Text(
                    "Keywoard",
                    style: txtStyle.txtMedium,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0, top: 10.0),
                    child: Container(
                      height: 50.0,
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: ColorStyle.colorOrangeBackground),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: TextField(
                          style: txtStyle.txtMedium,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "",
                              hintStyle: txtStyle.txtMedium),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    "Sort By",
                    style: txtStyle.txtMedium,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0, top: 10.0),
                    child: Container(
                      height: 50.0,
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: ColorStyle.colorOrangeBackground),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: TextField(
                          style: txtStyle.txtMedium,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "",
                              hintStyle: txtStyle.txtMedium),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    "Features",
                    style: txtStyle.txtMedium,
                  ),
                  SizedBox(
                    height: 0.0,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "Has Bounty?",
                        style: txtStyle.txtRegular,
                      ),
                      Switch(
                        value: _switch1,
                        onChanged: (bool e) => _something(e),
                        activeColor: Colors.lightBlueAccent,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3.0,
                  )
                ],
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 45.0,
                  width: 130.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      gradient: LinearGradient(
                          colors: [Colors.red, Colors.redAccent])),
                  child: Center(
                      child: Text(
                    "Reset",
                    style: txtStyle.txtMedium,
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 45.0,
                  width: 130.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      gradient: LinearGradient(
                          colors: [Colors.blueAccent, Colors.lightBlueAccent])),
                  child: Center(
                      child: Text(
                    "Apply",
                    style: txtStyle.txtMedium,
                  )),
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}

Widget itemDrawer(IconData icon, String txt) {
  return Padding(
    padding: const EdgeInsets.only(top: 30.0, left: 20.0),
    child: Row(
      children: <Widget>[
        Icon(
          icon,
          size: 25.0,
          color: ColorStyle.colorOrangeBackground,
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
            ],
          ),
        )
      ],
    ),
  );
}
