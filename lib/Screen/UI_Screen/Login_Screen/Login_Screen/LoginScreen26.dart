import 'package:flutter/material.dart';

class LoginScreen26 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  child: Image.network(
                      'https://i.postimg.cc/52bVbwHB/pexels-photo-2793168.jpg'),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 100, left: 30),
                  child: Text(
                    "Hello.",
                    style: TextStyle(
                        fontFamily: "Sofia",
                        fontSize: 50,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 160, left: 30),
                  child: Text(
                    "Welcome Back",
                    style: TextStyle(
                        fontFamily: "Sofia",
                        fontSize: 37,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 300),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60),
                            topRight: Radius.circular(60))),
                    width: double.infinity,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Center(
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.black12.withOpacity(0.05),
                                border: UnderlineInputBorder(
                                    borderSide: BorderSide.none),
                                labelText: "Email",
                                labelStyle: TextStyle(
                                    fontFamily: "Sofia",
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.black12.withOpacity(0.05),
                                border: UnderlineInputBorder(
                                    borderSide: BorderSide.none),
                                labelText: "Password",
                                labelStyle: TextStyle(
                                    fontFamily: "Sofia",
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17),
                                suffixIcon: Icon(
                                  Icons.remove_red_eye,
                                  color: Colors.black12.withOpacity(0.4),
                                )),
                          ),
                          SizedBox(
                            height: 60,
                          ),
                          Center(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 0.0, backgroundColor: Colors.transparent,
                              ),
                              onPressed: null,
                              child: Material(
                                elevation: 10,
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  width: 180,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xff29d65a),
                                          Color(0xff54d94a)
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                    child: Text(
                                      "Sign In",
                                      style: TextStyle(
                                          fontFamily: "Sofia",
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 21),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  height: 20,
                                  thickness: 2,
                                  indent: 30,
                                  color: Colors.black38,
                                ),
                              ),
                              Text(
                                " Or sign in with ",
                                style: TextStyle(
                                    fontFamily: "Sofia", color: Colors.black),
                              ),
                              Expanded(
                                child: Divider(
                                  height: 20,
                                  thickness: 2,
                                  endIndent: 30,
                                  color: Colors.black38,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Material(
                                elevation: 10,
                                borderRadius: BorderRadius.circular(10),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Image.network(
                                    'https://i.postimg.cc/6qMTfNpM/google-symbol.jpg',
                                    height: 25,
                                    width: 25,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Material(
                                elevation: 10,
                                borderRadius: BorderRadius.circular(10),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Image.network(
                                    'https://i.postimg.cc/wT9GtYNS/twitter-4.jpg',
                                    height: 25,
                                    width: 25,
                                  ),
                                ),
                              ),
                            ],
                          )
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
    );
  }
}
