import 'package:flutter/material.dart';

import '../FullApps/FullAppsList.dart';
import '../Integration/IntegrationList.dart';
import '../UI_Screen/UIScreenList.dart';

class SubPage extends StatefulWidget {
  SubPage({Key? key}) : super(key: key);

  @override
  _SubPageState createState() => _SubPageState();
}

class _SubPageState extends State<SubPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Padding(
          padding: const EdgeInsets.only(top: 0.0, left: 2.0),
          child: Text(
            "Big UI Screen",
            style: TextStyle(
                fontFamily: "Sofia",
                fontWeight: FontWeight.w900,
                fontSize: 20.0,
                color: Colors.black),
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (_, __, ___) => new FullAppsList()));
              },
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 15.0, top: 0.0),
                child: Stack(
                  children: [
                    Container(
                      height: 150.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          image: DecorationImage(
                              image: AssetImage("assets/images/card1.png"),
                              fit: BoxFit.cover)),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 57.0, left: 20.0),
                        child: Text(
                          "Full Application",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: 26.0),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (_, __, ___) => new UIScreenList()));
              },
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 15.0, top: 0.0),
                child: Stack(
                  children: [
                    Container(
                      height: 150.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          image: DecorationImage(
                              image: AssetImage("assets/images/card2.png"),
                              fit: BoxFit.cover)),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 57.0, left: 20.0),
                        child: Text(
                          "UI Screen",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: 30.0),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (_, __, ___) => new IntegrationList()));
              },
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 15.0, top: 0.0),
                child: Stack(
                  children: [
                    Container(
                      height: 150.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          image: DecorationImage(
                              image: AssetImage("assets/images/card3.png"),
                              fit: BoxFit.cover)),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 57.0, left: 20.0),
                        child: Text(
                          "Integration",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: 29.0),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
