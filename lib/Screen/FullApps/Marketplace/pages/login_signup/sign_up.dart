import 'package:flutter/material.dart';

import '../../../../../Library/Carousel/CarouselPro.dart';
import '../../BottomNavigationBar.dart';
import '../../widget/app_/marketplace.dart';
import '../landing_page.dart';

class SignUp extends StatefulWidget {
  final TextEditingController? email;

  SignUp({this.email});

  @override
  _SignUpState createState() => _SignUpState(email: email);
}

class _SignUpState extends State<SignUp> {
  TextEditingController? email;

  _SignUpState({this.email});

  bool isEnable = false;
  bool loading = false;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _fullNameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // _emailController.dispose();
    // _passwordController.dispose();
    // _fullNameController.dispose();
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
              boxFit: BoxFit.cover,
              autoplay: true,
              animationDuration: Duration(milliseconds: 300),
              dotSize: 0.0,
              dotSpacing: 16.0,
              dotBgColor: Colors.transparent,
              showIndicator: false,
              overlayShadow: false,
              onImageChange: (int, inta) {},
              onImageTap: (int) {},
              overlayShadowColors: Colors.white,
              radius: Radius.circular(8.0),
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
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Container(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                              icon: Icon(
                                Icons.arrow_back_ios,
                              ),
                              color: Colors.white,
                              onPressed: () {
                                setState(() {
                                  loading = false;
                                });
                                Navigator.of(context).push(PageRouteBuilder(
                                    pageBuilder: (_, __, ___) =>
                                        new LandingPage()));
                              }),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding:
                              const EdgeInsets.only(top: 20.0, bottom: 50.0),
                          child: MarketPlaceText(),
                        ),
                        margin: EdgeInsets.only(bottom: 50.0, top: 20.0),
                      ),
                      _buildTextFeild(
                          icon: Icon(Icons.email),
                          controller:
                              email!.text != '' ? email : _emailController,
                          hint: 'Email',
                          obscure: false,
                          textAlign: TextAlign.start,
                          keyboardType: TextInputType.emailAddress),
                      SizedBox(height: 10.0),
                      _buildTextFeild(
                        icon: Icon(Icons.person),
                        controller: _fullNameController,
                        hint: 'Full Name',
                        obscure: false,
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(height: 10.0),
                      _buildTextFeild(
                        icon: Icon(Icons.vpn_key),
                        controller: _passwordController,
                        hint: 'Password',
                        obscure: true,
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(height: 10.0),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                                PageRouteBuilder(
                                    pageBuilder: (_, __, ___) =>
                                        bottomNavigationBar()));
                          },
                          child: Container(
                            height: 50.0,
                            width: double.infinity,
                            color: Colors.blue,
                            child: Center(
                              child: Text(
                                "Signup",
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    color: Colors.white,
                                    fontSize: 21.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 50.0),
                        alignment: Alignment.center,
                        child: Text(
                          'Terms and Conditions',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
        ],
      ),
    );
  }

  Widget _buildTextFeild({
    String? hint,
    TextEditingController? controller,
    TextInputType? keyboardType,
    required bool obscure,
    required TextAlign textAlign,
    Widget? icon,
  }) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Container(
        height: 55.0,
        color: Colors.white70,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: TextField(
              textAlign: textAlign,
              obscureText: obscure,
              controller: controller,
              keyboardType: keyboardType,
              autocorrect: false,
              autofocus: false,
              onChanged: (String value) {
                print('onChanged called');
                isEmpty();
              },
              decoration: InputDecoration(
                icon: icon,
                contentPadding: EdgeInsets.all(8.0),
                filled: true,
                fillColor: Colors.transparent,
                hintText: hint,
//        border: OutlineInputBorder(
//          borderSide: BorderSide(color: Colors.black),
//          borderRadius: BorderRadius.circular(0.0),
//        ),
//        focusedBorder: OutlineInputBorder(
//          borderSide: BorderSide(color: Colors.black),
//          borderRadius: BorderRadius.circular(0.0),
//        ),
//        enabledBorder: OutlineInputBorder(
//          borderSide: BorderSide(color: Colors.black),
//          borderRadius: BorderRadius.circular(0.0),
//        ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool isEmpty() {
    setState(() {
      if ((_emailController.text.trim() != '' || email!.text.trim() != '') &&
          (_passwordController.text.trim() != '') &&
          (_fullNameController.text.trim() != '')) {
        isEnable = true;
      } else {
        isEnable = false;
      }
    });
    return isEnable;
  }

  void _buildShowDialog({String? error, String? errorDetails}) {
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
