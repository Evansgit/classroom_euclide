import 'package:crypto_template/Screen/FullApps/Workout/core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThirdColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.55,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1554284126-aa88f22d8b74?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDd8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        kThirdColor,
                        Colors.transparent,
                      ],
                    ),
                  ),
                  height: MediaQuery.of(context).size.height * 0.55,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      children: [
                        SizedBox(height: 30),
                        RichText(
                          text: TextSpan(
                            text: 'HARD\t',
                            style: TextStyle(
                                fontFamily: "Bebas",
                                fontSize: 30,
                                letterSpacing: 5),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'ELEMENT',
                                style: TextStyle(color: kFirstColor),
                              )
                            ],
                          ),
                        ),
                        Spacer(),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Sign Up",
                                style: TextStyle(
                                  fontSize: 40,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Train and live the new experience of \nexercising"
                                " at home",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name",
                    style: TextStyle(color: Color(0xFF707070), fontSize: 18),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Faisal Ramdan",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF707070)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF707070)),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Email",
                    style: TextStyle(color: Color(0xFF707070), fontSize: 18),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "faisalramdan.id@gmail.com",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF707070)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF707070)),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Phone",
                    style: TextStyle(color: Color(0xFF707070), fontSize: 18),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "+62 857-1100-017",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF707070)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF707070)),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Password",
                    style: TextStyle(color: Color(0xFF707070), fontSize: 18),
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "********",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF707070)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF707070)),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Confirm Password",
                    style: TextStyle(color: Color(0xFF707070), fontSize: 18),
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "********",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF707070)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF707070)),
                      ),
                    ),
                  ),
                  SizedBox(height: 23),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "By signing up, I agree to the Gold Gym User Agreement and Privacy Policy.",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        SizedBox(height: 27),
                        TextButton(
                          onPressed: () => Get.back(),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: kFirstColor,
                            ),
                            height: 50,
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: Center(
                              child: Text(
                                "Register",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextButton(
                          onPressed: () => Get.back(),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: kThirdColor,
                              border: Border.all(width: 1, color: kFirstColor),
                            ),
                            height: 50,
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: Center(
                              child: Text(
                                "Cancel",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
