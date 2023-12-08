import 'package:flutter/material.dart';

class LoginScreen25 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF5E8B7E),
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    height: 200,
                    child: Image.network(
                        "https://i.postimg.cc/br70sf45/medium-1.jpg"),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Material(
                    elevation: 40,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 280,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(color: Colors.black12.withOpacity(0.3))
                          ]),
                      child: SingleChildScrollView(
                        clipBehavior: Clip.none,
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              color: Color(0xFF5E8B7E),
                              width: double.infinity,
                              child: Center(
                                child: Text(
                                  "LOGIN",
                                  style: TextStyle(
                                      fontFamily: "Sofia",
                                      color: Colors.white,
                                      fontSize: 27,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            input("Username", false),
                            input("Password", true),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Forgot Password?",
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Container(
                              height: 65,
                              width: 65,
                              decoration: BoxDecoration(
                                color: Colors.greenAccent,
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.arrow_forward_ios_sharp,
                                  color: Colors.white,
                                  size: 35,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 70,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget input(String label, bool pass) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 6),
    child: Container(
      child: TextFormField(
        decoration: InputDecoration(
            fillColor: Colors.white,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.greenAccent, width: 2.0)),
            suffixIcon: pass
                ? Icon(
                    Icons.lock_outline_rounded,
                    color: Colors.grey[400],
                  )
                : Icon(
                    Icons.person_outline,
                    color: Colors.grey[400],
                  ),
            labelText: label,
            labelStyle: TextStyle(
                fontFamily: "Sofia",
                color: Colors.grey,
                fontSize: 15,
                fontWeight: FontWeight.w400)),
      ),
    ),
  );
}
