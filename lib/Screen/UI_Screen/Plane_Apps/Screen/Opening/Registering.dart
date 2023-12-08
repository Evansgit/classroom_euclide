import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:intl/intl.dart';

import 'OTP.dart';

class CreateAccount extends StatefulWidget {
  CreateAccount({Key? key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  String? _setDate;
  String? dateTime;

  String? _setTime;

  DateTime selectedDate = DateTime.now();
  TextEditingController _dateController = TextEditingController();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        initialDatePickerMode: DatePickerMode.day,
        firstDate: DateTime(2015),
        lastDate: DateTime(2101));
    if (picked != null)
      setState(() {
        selectedDate = picked;
        _dateController.text = DateFormat.yMd().format(selectedDate);
      });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECF2F9),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100.0),
            Lottie.asset(
                "lib/Screen/UI_Screen/Plane_Apps/Assets/registration.json",
                height: 250.0,
                width: 400.0),
            SizedBox(height: 25.0),
            Center(
              child: Text(
                "SIGN UP",
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF0979FF),
                    fontSize: 16.0),
              ),
            ),
            SizedBox(height: 15.0),
            Padding(
              padding: const EdgeInsets.only(left: 80.0, right: 80.0),
              child: Text(
                "Fill your personal info below to register",
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF0979FF),
                    fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 12.0),
            Center(
              child: Container(
                height: 3.5,
                width: 25.0,
                color: Color(0xFF0979FF),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 80,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/boxWhite.png"),
                      fit: BoxFit.cover)),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: Theme(
                    data: new ThemeData(
                        primaryColor: Colors.transparent,
                         
                        hintColor: Colors.transparent),
                    child: TextFormField(
                      style: new TextStyle(color: Color(0xFF0979FF)),
                      textAlign: TextAlign.start,
                      keyboardType: TextInputType.emailAddress,
                      autocorrect: false,
                      autofocus: false,
                      decoration: InputDecoration(
                          border: new UnderlineInputBorder(
                              borderSide:
                                  new BorderSide(color: Colors.blueAccent)),
                          contentPadding: EdgeInsets.all(0.0),
                          filled: true,
                          fillColor: Colors.transparent,
                          hintText: 'Haydar Majeed',
                          hintStyle: TextStyle(
                              color: Color(0xFF0979FF).withOpacity(0.9),
                              fontWeight: FontWeight.w700),
                          labelStyle: TextStyle(
                              color: Color(0xFF0979FF).withOpacity(0.9),
                              fontWeight: FontWeight.w700)),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 0.0,
            ),
            Container(
              height: 80,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/boxWhite.png",
                      ),
                      fit: BoxFit.cover)),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: Theme(
                    data: new ThemeData(
                        primaryColor: Colors.transparent,
                         
                        hintColor: Colors.transparent),
                    child: TextFormField(
                      style: new TextStyle(color: Color(0xFF0979FF)),
                      textAlign: TextAlign.start,
                      keyboardType: TextInputType.emailAddress,
                      autocorrect: false,
                      autofocus: false,
                      decoration: InputDecoration(
                          border: new UnderlineInputBorder(
                              borderSide:
                                  new BorderSide(color: Colors.blueAccent)),
                          contentPadding: EdgeInsets.all(0.0),
                          filled: true,
                          fillColor: Colors.transparent,
                          hintText: 'H.M@email.com',
                          hintStyle: TextStyle(
                              color: Color(0xFF0979FF).withOpacity(0.9),
                              fontWeight: FontWeight.w700)),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 0.0,
            ),
            Container(
              height: 80,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/boxWhite.png",
                      ),
                      fit: BoxFit.cover)),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: Theme(
                    data: new ThemeData(
                        primaryColor: Colors.transparent,
                         
                        hintColor: Colors.transparent),
                    child: TextFormField(
                      style: new TextStyle(color: Color(0xFF0979FF)),
                      textAlign: TextAlign.start,
                      keyboardType: TextInputType.visiblePassword,
                      autocorrect: false,
                      obscureText: true,
                      autofocus: false,
                      decoration: InputDecoration(
                          border: new UnderlineInputBorder(
                              borderSide:
                                  new BorderSide(color: Colors.blueAccent)),
                          contentPadding: EdgeInsets.all(0.0),
                          filled: true,
                          fillColor: Colors.transparent,
                          hintText: '********',
                          hintStyle: TextStyle(
                              color: Color(0xFF0979FF),
                              fontWeight: FontWeight.w700),
                          labelStyle: TextStyle(
                              color: Color(0xFF0979FF).withOpacity(0.9),
                              fontWeight: FontWeight.w700)),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50.0, top: 10.0),
              child: Text(
                "Birthday",
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF0979FF),
                    fontSize: 16.0),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 25.0, right: 25.0, top: 10.0),
              child: InkWell(
                onTap: () {
                  _selectDate(context);
                },
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "lib/Screen/UI_Screen/Plane_Apps/Assets/Image/timePicker.png",
                          ),
                          fit: BoxFit.cover)),
                  // child: Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //   children: [
                  //     Text("1"),
                  //     Text("1"),
                  //     Text("1"),
                  //   ],
                  // )
                  child: Center(
                    child: Theme(
                      data: ThemeData(
                          primaryColor: Colors.transparent,
                           
                          hintColor: Colors.transparent),
                      child: InkWell(
                        onTap: () {
                          _selectDate(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            //  margin: EdgeInsets.only(top: 30),
                            width: double.infinity,
                            height: 55.0,
                            alignment: Alignment.center,
                            decoration:
                                BoxDecoration(color: Colors.transparent),
                            child: TextFormField(
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: "Sofia",
                                color: Color(0xFF0979FF),
                              ),
                              textAlign: TextAlign.left,
                              onSaved: (String? val) {
                                _setTime = val;
                              },
                              enabled: false,
                              keyboardType: TextInputType.text,
                              controller: _dateController,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(13.0),
                                hintText: "1/20/1988",
                                hintStyle: TextStyle(
                                  fontFamily: "Sofia",
                                  fontSize: 18.0,
                                  color: Color(0xFF0979FF),
                                ),

                                border: InputBorder.none,
                                // labelText: 'Time',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 32.0, right: 32.0, top: 40.0, bottom: 30.0),
              child: Align(
                alignment: Alignment.center,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(PageRouteBuilder(
                        pageBuilder: (_, __, ___) => new ConfirmOtpPage()));
                  },
                  child: Container(
                    height: 53.0,
                    width: 150.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40.0)),
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xFF16B1FF),
                              Color(0xFF0979FF),
                              Color(0xFF0979FF),
                            ]),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12.withOpacity(0.08),
                            blurRadius: 10.0,
                            spreadRadius: 3.0,
                          )
                        ]),
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Register",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Sofia",
                              letterSpacing: 0.9),
                        ),
                      ],
                    )),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
