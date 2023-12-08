import 'package:flutter/material.dart';

class LoginScreen20 extends StatefulWidget {
  @override
  _LoginScreen20State createState() => _LoginScreen20State();
}

class _LoginScreen20State extends State<LoginScreen20> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double fontScale = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height,
          padding: EdgeInsets.only(
              left: 20,
              right: 20,
              top: size.height * 0.14,
              bottom: size.height * 0.06),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Hello, \nWelcome Back",
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        fontSize: 41,
                      )),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColorLight,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Email or Phone number"),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColorLight,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: "Password"),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Forgot Password?",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontFamily: "Sofia"),
                  )
                ],
              ),
              Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0.0, backgroundColor: Colors.black,
                      padding: EdgeInsets.all(13),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    onPressed: () => {},
                    child: Center(
                        child: Text(
                      "Login",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "Sofia",
                          color: Colors.white,
                          fontSize: 18.0),
                    )),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text("Create account",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontFamily: "Sofia"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
