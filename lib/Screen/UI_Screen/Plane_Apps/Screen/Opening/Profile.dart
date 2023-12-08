import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECF2F9),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 25.0, top: 60.0, bottom: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        size: 19,
                        color: Color(0xFF0979FF),
                      ),
                      SizedBox(
                        width: 1.0,
                      ),
                      Text(
                        "Profile",
                        style: TextStyle(
                            fontFamily: "Sofia",
                            fontSize: 18.0,
                            color: Color(0xFF0979FF),
                            fontWeight: FontWeight.w800),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 45.0, right: 20.0),
                  child: Container(
                    height: 50.0,
                    width: 50.0,
                    child: Center(
                        child: Icon(
                      Icons.home,
                      color: Color(0xFF0979FF),
                    )),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: Container(
                    height: 700.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60.0),
                            topRight: Radius.circular(60.0))),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 60.0,
                        ),
                        Text(
                          "Haydar Majeed",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF0979FF)),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 65.0),
                  child: Center(
                    child: Container(
                      height: 75.0,
                      width: 75.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12.withOpacity(0.2),
                              blurRadius: 10.0,
                              offset: const Offset(8.0, 5.0),
                              spreadRadius: 4.0)
                        ],
                      ),
                      child: Padding(
                          padding: EdgeInsets.all(3.0),
                          child: Container(
                            height: 75.0,
                            width: 75.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://images.pexels.com/photos/1680172/pexels-photo-1680172.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                                  fit: BoxFit.cover),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50.0)),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12.withOpacity(0.2),
                                    blurRadius: 10.0,
                                    offset: const Offset(8.0, 5.0),
                                    spreadRadius: 4.0)
                              ],
                            ),
                          )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 210.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                        child: Container(
                          height: 120.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(2.0, 3.3),
                                  blurRadius: 10.0,
                                  spreadRadius: 4.0,
                                  color: Colors.black12.withOpacity(0.1),
                                )
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25.0))),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 0.0, left: 25.0, right: 15.0),
                              child: Theme(
                                data: new ThemeData(
                                    primaryColor: Colors.transparent,
                                     
                                    hintColor: Colors.transparent),
                                child: TextFormField(
                                  style:
                                      new TextStyle(color: Color(0xFF0979FF)),
                                  textAlign: TextAlign.start,
                                  keyboardType: TextInputType.emailAddress,
                                  autocorrect: false,
                                  autofocus: false,
                                  decoration: InputDecoration(
                                      border: new UnderlineInputBorder(
                                          borderSide: new BorderSide(
                                              color: Colors.blueAccent)),
                                      contentPadding: EdgeInsets.all(0.0),
                                      filled: true,
                                      fillColor: Colors.transparent,
                                      hintText: 'Add Bio',
                                      hintStyle: TextStyle(
                                          color: Color(0xFF0979FF)
                                              .withOpacity(0.9),
                                          fontWeight: FontWeight.w700),
                                      labelStyle: TextStyle(
                                          color: Color(0xFF0979FF)
                                              .withOpacity(0.9),
                                          fontWeight: FontWeight.w700)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 15.0, top: 20.0),
                        child: Container(
                          height: 55.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(2.0, 3.3),
                                  blurRadius: 10.0,
                                  spreadRadius: 4.0,
                                  color: Colors.black12.withOpacity(0.1),
                                )
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25.0))),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 0.0, left: 25.0, right: 15.0),
                              child: Theme(
                                data: new ThemeData(
                                    primaryColor: Colors.transparent,
                                     
                                    hintColor: Colors.transparent),
                                child: TextFormField(
                                  style:
                                      new TextStyle(color: Color(0xFF0979FF)),
                                  textAlign: TextAlign.start,
                                  keyboardType: TextInputType.emailAddress,
                                  autocorrect: false,
                                  autofocus: false,
                                  decoration: InputDecoration(
                                      border: new UnderlineInputBorder(
                                          borderSide: new BorderSide(
                                              color: Colors.blueAccent)),
                                      contentPadding: EdgeInsets.all(0.0),
                                      filled: true,
                                      fillColor: Colors.transparent,
                                      hintText: 'HMmajid@gmail.com',
                                      hintStyle: TextStyle(
                                          color: Color(0xFF0979FF)
                                              .withOpacity(0.9),
                                          fontWeight: FontWeight.w700),
                                      labelStyle: TextStyle(
                                          color: Color(0xFF0979FF)
                                              .withOpacity(0.9),
                                          fontWeight: FontWeight.w700)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 15.0, top: 20.0),
                        child: Container(
                          height: 55.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(2.0, 3.3),
                                  blurRadius: 10.0,
                                  spreadRadius: 4.0,
                                  color: Colors.black12.withOpacity(0.1),
                                )
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25.0))),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 0.0, left: 25.0, right: 15.0),
                              child: Theme(
                                data: new ThemeData(
                                    primaryColor: Colors.transparent,
                                     
                                    hintColor: Colors.transparent),
                                child: TextFormField(
                                  style:
                                      new TextStyle(color: Color(0xFF0979FF)),
                                  textAlign: TextAlign.start,
                                  keyboardType: TextInputType.emailAddress,
                                  autocorrect: false,
                                  autofocus: false,
                                  decoration: InputDecoration(
                                      border: new UnderlineInputBorder(
                                          borderSide: new BorderSide(
                                              color: Colors.blueAccent)),
                                      contentPadding: EdgeInsets.all(0.0),
                                      filled: true,
                                      fillColor: Colors.transparent,
                                      hintText: 'Address',
                                      hintStyle: TextStyle(
                                          color: Color(0xFF0979FF)
                                              .withOpacity(0.9),
                                          fontWeight: FontWeight.w700),
                                      labelStyle: TextStyle(
                                          color: Color(0xFF0979FF)
                                              .withOpacity(0.9),
                                          fontWeight: FontWeight.w700)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 15.0, top: 20.0),
                        child: Container(
                          height: 55.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(2.0, 3.3),
                                  blurRadius: 10.0,
                                  spreadRadius: 4.0,
                                  color: Colors.black12.withOpacity(0.1),
                                )
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25.0))),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 0.0, left: 25.0, right: 15.0),
                              child: Theme(
                                data: new ThemeData(
                                    primaryColor: Colors.transparent,
                                     
                                    hintColor: Colors.transparent),
                                child: TextFormField(
                                  style:
                                      new TextStyle(color: Color(0xFF0979FF)),
                                  textAlign: TextAlign.start,
                                  keyboardType: TextInputType.emailAddress,
                                  autocorrect: false,
                                  autofocus: false,
                                  decoration: InputDecoration(
                                      border: new UnderlineInputBorder(
                                          borderSide: new BorderSide(
                                              color: Colors.blueAccent)),
                                      contentPadding: EdgeInsets.all(0.0),
                                      filled: true,
                                      fillColor: Colors.transparent,
                                      hintText: 'Education',
                                      hintStyle: TextStyle(
                                          color: Color(0xFF0979FF)
                                              .withOpacity(0.9),
                                          fontWeight: FontWeight.w700),
                                      labelStyle: TextStyle(
                                          color: Color(0xFF0979FF)
                                              .withOpacity(0.9),
                                          fontWeight: FontWeight.w700)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 15.0, top: 20.0),
                        child: Container(
                          height: 55.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(2.0, 3.3),
                                  blurRadius: 10.0,
                                  spreadRadius: 4.0,
                                  color: Colors.black12.withOpacity(0.1),
                                )
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25.0))),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 0.0, left: 25.0, right: 15.0),
                              child: Theme(
                                data: new ThemeData(
                                    primaryColor: Colors.transparent,
                                     
                                    hintColor: Colors.transparent),
                                child: TextFormField(
                                  style:
                                      new TextStyle(color: Color(0xFF0979FF)),
                                  textAlign: TextAlign.start,
                                  keyboardType: TextInputType.emailAddress,
                                  autocorrect: false,
                                  autofocus: false,
                                  decoration: InputDecoration(
                                      border: new UnderlineInputBorder(
                                          borderSide: new BorderSide(
                                              color: Colors.blueAccent)),
                                      contentPadding: EdgeInsets.all(0.0),
                                      filled: true,
                                      fillColor: Colors.transparent,
                                      hintText: 'Linkedin',
                                      hintStyle: TextStyle(
                                          color: Color(0xFF0979FF)
                                              .withOpacity(0.9),
                                          fontWeight: FontWeight.w700),
                                      labelStyle: TextStyle(
                                          color: Color(0xFF0979FF)
                                              .withOpacity(0.9),
                                          fontWeight: FontWeight.w700)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 15.0, top: 20.0),
                        child: Container(
                          height: 55.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(2.0, 3.3),
                                  blurRadius: 10.0,
                                  spreadRadius: 4.0,
                                  color: Colors.black12.withOpacity(0.1),
                                )
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25.0))),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 0.0, left: 25.0, right: 15.0),
                              child: Theme(
                                data: new ThemeData(
                                    primaryColor: Colors.transparent,
                                     
                                    hintColor: Colors.transparent),
                                child: TextFormField(
                                  style:
                                      new TextStyle(color: Color(0xFF0979FF)),
                                  textAlign: TextAlign.start,
                                  keyboardType: TextInputType.emailAddress,
                                  autocorrect: false,
                                  autofocus: false,
                                  decoration: InputDecoration(
                                      border: new UnderlineInputBorder(
                                          borderSide: new BorderSide(
                                              color: Colors.blueAccent)),
                                      contentPadding: EdgeInsets.all(0.0),
                                      filled: true,
                                      fillColor: Colors.transparent,
                                      hintText: 'More',
                                      hintStyle: TextStyle(
                                          color: Color(0xFF0979FF)
                                              .withOpacity(0.9),
                                          fontWeight: FontWeight.w700),
                                      labelStyle: TextStyle(
                                          color: Color(0xFF0979FF)
                                              .withOpacity(0.9),
                                          fontWeight: FontWeight.w700)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
