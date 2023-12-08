import 'package:flutter/material.dart';
import '../../../../Library/Carousel/CarouselPro.dart';
import '../widget/custom_button.dart';
import './login_signup/sign_up.dart';
import '../widget/app_/social_icons.dart';
import '../widget/app_/marketplace.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  bool loading = false;
  bool isEnable = false;

  TextEditingController _emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            child: new Carousel(
              onImageChange: (int, inta) {},
              onImageTap: (int) {},
              overlayShadowColors: Colors.white,
              radius: Radius.circular(8.0),
              boxFit: BoxFit.cover,
              autoplay: true,
              animationDuration: Duration(milliseconds: 300),
              dotSize: 0.0,
              dotSpacing: 16.0,
              dotBgColor: Colors.transparent,
              showIndicator: false,
              overlayShadow: false,
              images: [
                AssetImage(
                    'lib/Screen/FullApps/Marketplace/assets/img/loginImage1.jpg'),
                AssetImage(
                    'lib/Screen/FullApps/Marketplace/assets/img/loginImage3.jpg'),
                AssetImage(
                    "lib/Screen/FullApps/Marketplace/assets/img/loginImage2.jpg"),
              ],
            ),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                  Color.fromRGBO(0, 0, 0, 0.3),
                  Color.fromRGBO(0, 0, 0, 0.27),
                  Color.fromRGBO(0, 0, 0, 0.27),
                  Color.fromRGBO(0, 0, 0, 0.27),
                  Color.fromRGBO(0, 0, 0, 0.0),
                  Color.fromRGBO(0, 0, 0, 0.37),
                  Color.fromRGBO(0, 0, 0, 0.47)
                ],
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter)),
          ),
          loading
              ? Center(child: CircularProgressIndicator())
              : Container(
                  padding: EdgeInsets.all(10.0),
                  child: ListView(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 250.0, top: 10.0, right: 10.0),
                        child: Container(
                          height: 35.0,
                          width: 60.0,
                          alignment: Alignment.centerRight,
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.4)),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0.0, backgroundColor: Colors.transparent,
                            ),
                            child: Text(
                              'Login',
                              textAlign: TextAlign.end,
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {
                              setState(() {
                                loading = false;
                              });
                              Navigator.pushNamed(context, '/login');
                            },
                          ),
                        ),
                      ),
                      Container(
                        child: MarketPlaceText(),
                        margin: EdgeInsets.only(bottom: 190.0, top: 50.0),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Container(
                          height: 58.0,
                          color: Colors.white70,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 12.0, right: 12.0, top: 10.0),
                            child: TextField(
                              textAlign: TextAlign.justify,
                              obscureText: false,
                              controller: _emailController,
                              keyboardType: TextInputType.emailAddress,
                              autocorrect: false,
                              autofocus: false,
                              onChanged: (String value) {
                                isEmpty();
                              },
                              decoration: InputDecoration(
                                icon: Icon(Icons.email),
                                contentPadding: EdgeInsets.all(8.0),
                                filled: true,
                                fillColor: Colors.transparent,
                                hintText: 'Email',
//                        border: OutlineInputBorder(
//                          borderSide: BorderSide(color: Colors.black),
//                          borderRadius: BorderRadius.circular(0.0),
//                        ),
//                        focusedBorder: OutlineInputBorder(
//                          borderSide: BorderSide(color: Colors.black),
//                          borderRadius: BorderRadius.circular(0.0),
//                        ),
//                        enabledBorder: OutlineInputBorder(
//                          borderSide: BorderSide(color: Colors.black),
//                          borderRadius: BorderRadius.circular(0.0),
//                        ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      CustomButton(
                        'Create Account',
                        isEnable
                            ? () {
                                setState(() {
                                  loading = true;
                                });
                                if (_emailController.text.isEmpty ||
                                    !RegExp(r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                                        .hasMatch(_emailController.text)) {
                                  print('valid email req');
                                  _buidShowDialog(
                                      error: 'Incorrect  Email',
                                      errorDetails:
                                          'The email that you\'ve entered is not a valid email address. Please try again.');
                                } else {
                                  setState(() {
                                    loading = false;
                                  });
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SignUp(
                                        email: _emailController,
                                      ),
                                    ),
                                  );
                                }
                              }
                            : null,
                      ),
                      SizedBox(height: 30.0),
                      SocialIcons(),
                    ],
                  ),
                ),
        ],
      ),
    );
  }

  bool isEmpty() {
    setState(() {
      if (_emailController.text.trim() != '') {
        isEnable = true;
      } else {
        isEnable = false;
      }
    });
    return isEnable;
  }

  void _buidShowDialog({String? error, String? errorDetails}) {
    setState(() {
      loading = false;
    });
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Text('$errorDetails'),
            title: Text('$error'),
            actions: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0, backgroundColor: Colors.transparent,
                ),
                child: Text('OK'),
                onPressed: () {
                  setState(() {
                    loading = false;
                  });
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }
}
