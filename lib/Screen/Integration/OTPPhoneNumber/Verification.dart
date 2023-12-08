import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';


import '../GoogleSignIn/GoogleSignIn.dart';
import '../Helper/Constant.dart';

class VerificatoinOTP extends StatefulWidget {
  const VerificatoinOTP({Key? key}) : super(key: key);

  @override
  _VerificatoinOTPState createState() => _VerificatoinOTPState();
}

class _VerificatoinOTPState extends State<VerificatoinOTP> {
  bool _isResendAgain = false;
  bool _isVerified = false;
  bool _isLoading = false;
  bool isloading = false;
  final _phoneController = TextEditingController();
  final countrycode = TextEditingController();
  final _codeController = TextEditingController();
  bool isphoneexpand = false;
  User? currentuser = null;

  String _code = '';

  late Timer _timer;
  int _start = 60;
  int _currentIndex = 0;

  void resend() {
    setState(() {
      _isResendAgain = true;
    });

    const oneSec = Duration(seconds: 1);
    _timer = new Timer.periodic(oneSec, (timer) {
      setState(() {
        if (_start == 0) {
          _start = 60;
          _isResendAgain = false;
          timer.cancel();
        } else {
          _start--;
        }
      });
    });
  }

  verify() {
    setState(() {
      _isLoading = true;
    });

    const oneSec = Duration(milliseconds: 2000);
    _timer = new Timer.periodic(oneSec, (timer) {
      setState(() {
        _isLoading = false;
        _isVerified = true;
      });
    });
  }

  @override
  void initState() {
    Timer.periodic(Duration(seconds: 5), (timer) {
      setState(() {
        _currentIndex++;

        if (_currentIndex == 3) _currentIndex = 0;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 250,
                    child: Stack(children: [
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: AnimatedOpacity(
                          opacity: _currentIndex == 0 ? 1 : 0,
                          duration: Duration(
                            seconds: 1,
                          ),
                          curve: Curves.linear,
                          child: Image.network(
                            'https://images2.imgbox.com/7b/9b/s5JBARFN_o.jpeg',
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: AnimatedOpacity(
                          opacity: _currentIndex == 1 ? 1 : 0,
                          duration: Duration(seconds: 1),
                          curve: Curves.linear,
                          child: Image.network(
                            'https://images2.imgbox.com/95/c6/op0XQDS0_o.png',
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: AnimatedOpacity(
                          opacity: _currentIndex == 2 ? 1 : 0,
                          duration: Duration(seconds: 1),
                          curve: Curves.linear,
                          child: Image.network(
                            'https://images2.imgbox.com/57/ff/af0aeOcF_o.png',
                          ),
                        ),
                      )
                    ]),
                  ),

                  SizedBox(
                    height: 30,
                  ),
                  FadeInDown(
                      duration: Duration(milliseconds: 500),
                      child: Text(
                        "Verification OTP Phone Number",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    height: 30,
                  ),
                  FadeInDown(
                    delay: Duration(milliseconds: 500),
                    duration: Duration(milliseconds: 500),
                    child: Text(
                      "Please enter the 4 digit code sent to \n your phone number",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade500,
                          height: 1.5),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),

                  FadeInDown(
                    delay: Duration(milliseconds: 600),
                    duration: Duration(milliseconds: 500),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(8)),
                                              borderSide: BorderSide(
                                                  color: Colors.grey[200]!)),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(8)),
                                              borderSide: BorderSide(
                                                  color: Colors.grey[300]!)),
                                          filled: true,
                                          fillColor: Colors.blueAccent
                                              .withOpacity(0.1),
                                          hintText: "+1"),
                                      keyboardType: TextInputType.phone,
                                      controller: countrycode,
                                    )),
                                SizedBox(width: 8),
                                Expanded(
                                    flex: 4,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(8)),
                                              borderSide: BorderSide(
                                                  color: Colors.grey[200]!)),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(8)),
                                              borderSide: BorderSide(
                                                  color: Colors.grey[300]!)),
                                          filled: true,
                                          fillColor: Colors.blueAccent
                                              .withOpacity(0.1),
                                          hintText: "Enter Mobile Number"),
                                      controller: _phoneController,
                                      keyboardType: TextInputType.number,
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            // Container(
                            //   padding:
                            //       const EdgeInsets.symmetric(horizontal: 20),
                            //   decoration:
                            //       DesignConfig.boxDecorationContainerColor(
                            //           Colors.blueAccent, 10),
                            //   child: TextButton(
                            //     child: Text(
                            //       "LOGIN",
                            //       style: TextStyle(
                            //           color: ColorsRes.white,
                            //           fontWeight: FontWeight.bold),
                            //     ),
                            //     onPressed: () async {
                            //       String phone = _phoneController.text.trim();

                            //       if (countrycode.text.trim().isEmpty ||
                            //           !countrycode.text.contains("+")) {
                            //         ScaffoldMessenger.of(context).showSnackBar(
                            //             SnackBar(
                            //                 content: Text(
                            //                     'Enter Valid Country Code with \' + \'')));
                            //       } else if (Constant.validateMobile(phone) !=
                            //           null) {
                            //         ScaffoldMessenger.of(context).showSnackBar(
                            //             SnackBar(
                            //                 content: Text(
                            //                     'Enter Valid Mobile Number')));
                            //       } else {
                            //         setState(() {
                            //           isloading = true;
                            //         });
                            //         await phoneLoginUser();
                            //         setState(() {
                            //           isloading = false;
                            //         });
                            //       }
                            //     },
                            //   ),
                            // )
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Verification Code Input
                  // FadeInDown(
                  //   delay: Duration(milliseconds: 600),
                  //   duration: Duration(milliseconds: 500),
                  //   child: VerificationCode(
                  //     length: 4,
                  //     textStyle: TextStyle(fontSize: 20, color: Colors.black),
                  //     underlineColor: Colors.black,
                  //     keyboardType: TextInputType.number,
                  //     underlineUnfocusedColor: Colors.black,
                  //     onCompleted: (value) {
                  //       setState(() {
                  //         _code = value;
                  //       });
                  //     },
                  //     onEditing: (value) {},
                  //   ),
                  // ),

                  FadeInDown(
                    delay: Duration(milliseconds: 700),
                    duration: Duration(milliseconds: 500),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't resive the OTP?",
                          style: TextStyle(
                              fontSize: 14, color: Colors.grey.shade500),
                        ),
                        TextButton(
                            onPressed: () {
                              if (_isResendAgain) return;
                              resend();
                            },
                            child: Text(
                              _isResendAgain
                                  ? "Try again in " + _start.toString()
                                  : "Resend",
                              style: TextStyle(color: Colors.blueAccent),
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  FadeInDown(
                    delay: Duration(milliseconds: 800),
                    duration: Duration(milliseconds: 500),
                    child: MaterialButton(
                      elevation: 0,
                      onPressed: () async {
                        String phone = _phoneController.text.trim();
                        setState(() {
                          isloading = true;
                        });
                        if (countrycode.text.trim().isEmpty ||
                            !countrycode.text.contains("+")) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text(
                                  'Enter Valid Country Code with \' + \'')));
                        } else if (Constant.validateMobile(phone) != null) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text('Enter Valid Mobile Number')));
                        } else {
                          setState(() {
                            isloading = true;
                          });
                          await phoneLoginUser();
                          setState(() {
                            isloading = false;
                          });
                        }
                      },
                      color: Colors.blueAccent,
                      minWidth: MediaQuery.of(context).size.width * 0.8,
                      height: 50,
                      child: isloading
                          ? Container(
                              width: 20,
                              height: 20,
                              child: CircularProgressIndicator(
                                backgroundColor: Colors.white,
                                strokeWidth: 3,
                                color: Colors.black,
                              ),
                            )
                          : Text(
                              "Verificatoin OTP",
                              style: TextStyle(color: Colors.white),
                            ),
                    ),
                  )
                ],
              )),
        ));
  }

  phoneLoginUser() async {
    FirebaseAuth _auth = FirebaseAuth.instance;

    _auth.verifyPhoneNumber(
      phoneNumber: "${countrycode.text}${_phoneController.text}",
      timeout: Duration(seconds: 60),
      verificationCompleted: (AuthCredential credential) async {
        Navigator.of(context).pop();

        UserCredential result = await _auth.signInWithCredential(credential);

        User? user = result.user;

        if (user != null) {
          setState(() {
            currentuser = user;
          });
        } else {
          print("Error");
        }
      },
      verificationFailed: (FirebaseAuthException exception) {
        print(exception);

        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(exception.message!)));
      },
      codeSent: (String verificationId, [int? forceResendingToken]) {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("Enter the code"),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    TextField(
                      controller: _codeController,
                    ),
                  ],
                ),
                actions: <Widget>[
                  TextButton(
                    child: Text(
                      "Confirm",
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                    onPressed: () async {
                      if (_codeController.text.trim().isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Enter Code')));
                      } else {
                        final code = _codeController.text.trim();
                        AuthCredential credential =
                            PhoneAuthProvider.credential(
                                verificationId: verificationId, smsCode: code);

                        UserCredential result =
                            await _auth.signInWithCredential(credential);

                        User? user = result.user;

                        if (user != null) {
                          print("--user--${user.phoneNumber}");
                          setState(() {
                            currentuser = user;
                          });
                          Navigator.of(context).pop();
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => HomeExampleScreen()));
                        } else {
                          print("Error");
                        }
                      }
                    },
                  )
                ],
              );
            });
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }
}
