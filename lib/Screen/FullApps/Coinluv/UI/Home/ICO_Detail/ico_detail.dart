import 'package:crypto_template/Screen/FullApps/Coinluv/Component/Style.dart';
import 'package:crypto_template/Screen/FullApps/Coinluv/UI/Home/ICO_Detail/team.dart';
import 'package:flutter/material.dart';

import '../search.dart';
import 'about.dart';
import 'financials.dart';

class icoDetail extends StatefulWidget {
  @override
  _icoDetailState createState() => _icoDetailState();
}

class _icoDetailState extends State<icoDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyle.colorBackgroundBlack,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: ColorStyle.colorBackgroundBlack,
        title: Text(
          "ICO Title",
          style: TextStyle(fontFamily: "Sofia"),
        ),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => new search()));
                },
                child: Icon(Icons.search)),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Image.network(
                      "https://www.cryptocurrencer.com/wp-content/uploads/2018/01/CRYPTOCURRENCY-bitcoin-logo.jpg",
                      height: 65.0,
                      width: 65.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "ICO TITLE",
                            style: txtStyle.txtHeader,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                              width: 200.0,
                              child: Text(
                                "Lorem ipsum damet, conadada. Loremipsum.",
                                style: txtStyle.txtLightRoboto,
                              )),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Container(
                        height: 27.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(3.0)),
                            color: ColorStyle.colorOrangeBackground),
                        child: Center(
                            child: Text("4.2", style: txtStyle.txtRegular)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                height: 900.0,
                width: double.infinity,
                child: DefaultTabController(
                  length: 3,
                  child: new Scaffold(
                    backgroundColor: ColorStyle.colorBackgroundBlack,
                    appBar: PreferredSize(
                      preferredSize:
                          Size.fromHeight(40.0), // here the desired height
                      child: new AppBar(
                        backgroundColor: ColorStyle.colorBackgroundBlack,
                        elevation: 0.0,
                        centerTitle: true,
                        automaticallyImplyLeading: false,
//                  ],
                        title: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: ColorStyle.colorOrangeBackground),
                              color: ColorStyle.colorSenondaryBackground),
                          child: new TabBar(
                            labelColor: Colors.white,
                            unselectedLabelColor: Colors.white70,
                            indicator: ShapeDecoration(
                                shape: Border.all(
                              width: 20.0,
                              color: ColorStyle.colorOrangeBackground,
                            )),
                            tabs: [
                              new Tab(
                                text: "ABOUT",
                              ),
                              new Tab(
                                text: "FINANCIAL",
                              ),
                              new Tab(
                                text: "TEAM",
                              )
                            ],
                            indicatorColor: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    body: new TabBarView(
                      children: [about(), financials(), team()],
                    ),
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
