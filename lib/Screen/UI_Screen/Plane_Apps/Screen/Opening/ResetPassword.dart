import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:intl/intl.dart';

import 'PasswordResetSuccesMessage.dart';

class ResetPassword extends StatefulWidget {
  ResetPassword({Key? key}) : super(key: key);

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
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
            SizedBox(height: 20.0),
            Lottie.asset(
                "lib/Screen/UI_Screen/Plane_Apps/Assets/newPassword.json",
                height: 200.0,
                width: 500.0),
            SizedBox(height: 65.0),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Center(
                child: Text(
                  "Enter New Password",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF0979FF),
                      fontSize: 21.0),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 12.0),
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
                      obscureText: true,
                      decoration: InputDecoration(
                          border: new UnderlineInputBorder(
                              borderSide:
                                  new BorderSide(color: Colors.blueAccent)),
                          contentPadding: EdgeInsets.all(0.0),
                          filled: true,
                          fillColor: Colors.transparent,
                          labelText: 'New Password',
                          hintStyle: TextStyle(
                              color: Color(0xFF0979FF).withOpacity(0.1)),
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
                      obscureText: true,
                      decoration: InputDecoration(
                          border: new UnderlineInputBorder(
                              borderSide:
                                  new BorderSide(color: Colors.blueAccent)),
                          contentPadding: EdgeInsets.all(0.0),
                          filled: true,
                          fillColor: Colors.transparent,
                          labelText: 'Confirm New Password',
                          hintStyle: TextStyle(
                              color: Color(0xFF0979FF).withOpacity(0.1)),
                          labelStyle: TextStyle(
                              color: Color(0xFF0979FF).withOpacity(0.9),
                              fontWeight: FontWeight.w700)),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 55.0, right: 55.0, top: 40.0, bottom: 30.0),
              child: Align(
                alignment: Alignment.center,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(PageRouteBuilder(
                        pageBuilder: (_, __, ___) =>
                            new PasswordResetSucces()));
                  },
                  child: Container(
                    height: 53.0,
                    width: double.infinity,
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
                          "Reset Your Password",
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
