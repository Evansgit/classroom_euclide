import 'package:crypto_template/Screen/FullApps/NIuEducation/HomeScreen/HomePage.dart';
import 'package:flutter/material.dart';

class subscription extends StatefulWidget {
  @override
  _subscriptionState createState() => _subscriptionState();
}

class _subscriptionState extends State<subscription> {
  @override
  String _subsribeEducation = "Subscribe";
  String _subsribeEnglish = "Subscribe";
  String _subsribeMoney = "Subscribe";
  String _subsribeJobs = "Subscribe";
  String _educationTitle = "Education";
  String _educationDesc =
      "Subsribe here to get into related to Transcript, Career paths and other collage related trands";
  String _englishTitle = "English (Speaking and Writing)";
  String _englishDesc =
      "Subsribe Now get Notifications on English Videos and Tips to better your oratoruy and writing skills";
  String _freeMoneyTitle = "FREE Money oh - Scholarships";
  String _freeMoneyDesc =
      "Just choose it now oh, Who doesn't like FREE MONEY Tips to pay for school";
  String _jobsAndInternshipsTitle = "Jobs and Internships";
  String _jobsAndInternshipsDesc =
      "Subsribe by clicking to get info pertaining to new jobs interview, resume and internships you can apply to and how to apply for them";

  ///
  ///
  /// Bool to set true or false color button
  ///
  ///
  bool button1 = true;
  bool button2 = true;
  bool button3 = true;
  bool button4 = true;

  Gradient subsribe =
      LinearGradient(colors: [Color(0xFF6681EA), Color(0xFF712E98)]);

  Gradient subsribed = LinearGradient(colors: [Colors.red, Colors.redAccent]);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.5,
        title: Text(
          "Dream Guide",
          style: TextStyle(
            color: Colors.black54,
            fontSize: 17.5,
            fontWeight: FontWeight.w700,
            fontFamily: "Sofia",
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: Column(
            children: <Widget>[
              ///
              ///
              /// Card Education
              ///
              ///
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13.0),
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 160.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 1.0,
                                spreadRadius: 1.0)
                          ]),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: 160.0,
                            width: 13.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  bottomLeft: Radius.circular(10.0)),
                              gradient: LinearGradient(
                                colors: [Color(0xFF6681EA), Color(0xFF712E98)],
                              ),
                            ),
                          ),
                          Container(
                            height: 160.0,
                            width: 300.0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, top: 20.0),
                                  child: Text(
                                    _educationTitle,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Sofia",
                                        fontSize: 16.0,
                                        color: Colors.black54),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, top: 10.0),
                                  child: Text(
                                    _educationDesc,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Sofia",
                                        fontSize: 13.0,
                                        color: Colors.black38),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 225.0, top: 130.0),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (button1 == true) {
                              button1 = false;
                            } else {
                              button1 = true;
                            }
                            if (_subsribeEducation == "Subscribe") {
                              _subsribeEducation = "Subscribed";
                            } else {
                              _subsribeEducation = "Subscribe";
                            }
                          });
                        },
                        child: Container(
                          height: 30.0,
                          width: 140.0,
                          decoration: BoxDecoration(
                              gradient: button1 ? subsribe : subsribed,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
                                  bottomRight: Radius.circular(10.0))),
                          child: Center(
                            child: Text(
                              _subsribeEducation,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Sofia",
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              ///
              ///
              /// Card English
              ///
              ///
              Padding(
                padding:
                    const EdgeInsets.only(left: 13.0, right: 13.0, top: 25.0),
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 170.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 1.0,
                                spreadRadius: 1.0)
                          ]),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: 170.0,
                            width: 13.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  bottomLeft: Radius.circular(10.0)),
                              gradient: LinearGradient(
                                colors: [Color(0xFF6681EA), Color(0xFF712E98)],
                              ),
                            ),
                          ),
                          Container(
                            height: 170.0,
                            width: 300.0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, top: 20.0),
                                  child: Text(
                                    _englishTitle,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Sofia",
                                        fontSize: 16.0,
                                        color: Colors.black54),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, top: 15.0),
                                  child: Text(
                                    _englishDesc,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Sofia",
                                        fontSize: 13.0,
                                        color: Colors.black38),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 225.0, top: 140.0),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (button2 == true) {
                              button2 = false;
                            } else {
                              button2 = true;
                            }

                            if (_subsribeEnglish == "Subscribe") {
                              _subsribeEnglish = "Subscribed";
                            } else {
                              _subsribeEnglish = "Subscribe";
                            }
                          });
                        },
                        child: Container(
                          height: 30.0,
                          width: 140.0,
                          decoration: BoxDecoration(
                              gradient: button2 ? subsribe : subsribed,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
                                  bottomRight: Radius.circular(10.0))),
                          child: Center(
                            child: Text(
                              _subsribeEnglish,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Sofia",
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              ///
              ///
              /// Card Free Money
              ///
              ///
              Padding(
                padding:
                    const EdgeInsets.only(left: 13.0, right: 13.0, top: 25.0),
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 160.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 1.0,
                                spreadRadius: 1.0)
                          ]),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: 160.0,
                            width: 13.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  bottomLeft: Radius.circular(10.0)),
                              gradient: LinearGradient(
                                colors: [Color(0xFF6681EA), Color(0xFF712E98)],
                              ),
                            ),
                          ),
                          Container(
                            height: 160.0,
                            width: 300.0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, top: 20.0),
                                  child: Text(
                                    _freeMoneyTitle,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Sofia",
                                        fontSize: 16.0,
                                        color: Colors.black54),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, top: 10.0),
                                  child: Text(
                                    _freeMoneyDesc,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Sofia",
                                        fontSize: 13.0,
                                        color: Colors.black38),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 225.0, top: 130.0),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (button3 == true) {
                              button3 = false;
                            } else {
                              button3 = true;
                            }

                            if (_subsribeMoney == "Subscribe") {
                              _subsribeMoney = "Subscribed";
                            } else {
                              _subsribeMoney = "Subscribe";
                            }
                          });
                        },
                        child: Container(
                          height: 30.0,
                          width: 140.0,
                          decoration: BoxDecoration(
                              gradient: button3 ? subsribe : subsribed,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
                                  bottomRight: Radius.circular(10.0))),
                          child: Center(
                            child: Text(
                              _subsribeMoney,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Sofia",
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              ///
              ///
              /// Card Jobs
              ///
              ///
              ///
              Padding(
                padding:
                    const EdgeInsets.only(left: 13.0, right: 13.0, top: 25.0),
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 175.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 1.0,
                                spreadRadius: 1.0)
                          ]),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: 175.0,
                            width: 13.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  bottomLeft: Radius.circular(10.0)),
                              gradient: LinearGradient(
                                colors: [Color(0xFF6681EA), Color(0xFF712E98)],
                              ),
                            ),
                          ),
                          Container(
                            height: 175.0,
                            width: 300.0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, top: 20.0),
                                  child: Text(
                                    _jobsAndInternshipsTitle,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Sofia",
                                        fontSize: 16.0,
                                        color: Colors.black54),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, top: 10.0),
                                  child: Text(
                                    _jobsAndInternshipsDesc,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Sofia",
                                        fontSize: 13.0,
                                        color: Colors.black38),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 225.0, top: 145.0),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (button4 == true) {
                              button4 = false;
                            } else {
                              button4 = true;
                            }

                            if (_subsribeJobs == "Subscribe") {
                              _subsribeJobs = "Subscribed";
                            } else {
                              _subsribeJobs = "Subscribe";
                            }
                          });
                        },
                        child: Container(
                          height: 30.0,
                          width: 140.0,
                          decoration: BoxDecoration(
                              gradient: button4 ? subsribe : subsribed,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
                                  bottomRight: Radius.circular(10.0))),
                          child: Center(
                            child: Text(
                              _subsribeJobs,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Sofia",
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              ///
              ///
              /// Button Continue
              ///
              ///

              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 40.0, bottom: 20.0),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => homePage(),
                      transitionsBuilder:
                          (_, Animation<double> animate, __, Widget child) {
                        return Opacity(
                          opacity: animate.value,
                          child: child,
                        );
                      },
                      transitionDuration: Duration(milliseconds: 1700),
                    ));
                  },
                  child: Container(
                    height: 52.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40.0)),
                        gradient: LinearGradient(
                            colors: [Color(0xFF6681EA), Color(0xFF712E98)])),
                    child: Center(
                      child: Text(
                        "Continue",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Sofia",
                            fontSize: 16.0,
                            fontWeight: FontWeight.w700),
                      ),
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
