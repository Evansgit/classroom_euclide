import 'package:crypto_template/Screen/FullApps/Marketplace/widget/app_/marketplace.dart';
import 'package:crypto_template/Screen/FullApps/Marketplace/widget/app_/social_icons.dart';
import 'package:flutter/material.dart';


import '../../../../Library/Carousel/CarouselPro.dart';

class LoginScreen36 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginScreen36State();
  }
}

class _LoginScreen36State extends State<LoginScreen36> {
  late bool loading;
  bool isEnable = false;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() => loading = false);
  }

  @override
  void dispose() {
    // _emailController.dispose();
    // _passwordController.dispose();
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
              images: [
                AssetImage(
                    'lib/Screen/FullApps/Marketplace/assets/img/loginImage1.jpg'),
                AssetImage(
                    'lib/Screen/FullApps/Marketplace/assets/img/loginImage3.jpg'),
                AssetImage(
                    "lib/Screen/FullApps/Marketplace/assets/img/loginImage2.jpg"),
              ],
              onImageChange: (int, int2) {},
              onImageTap: (int) {},
              overlayShadowColors: Colors.black12,
              radius: Radius.circular(0.1),
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
          Padding(
            padding: const EdgeInsets.only(top: 35.0),
            child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                ),
                color: Colors.white,
                onPressed: () {
                  setState(() {
                    loading = false;
                  });
                  Navigator.of(context).pop();
                }),
          ),
          loading
              ? Center(child: CircularProgressIndicator())
              : Container(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: loading
                        ? CircularProgressIndicator()
                        : ListView(
                            shrinkWrap: true,
                            children: <Widget>[
                              Container(
                                child: MarketPlaceText(),
                                margin: EdgeInsets.only(bottom: 70.0),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20.0),
                                child: _buildTextFeild(
                                    icon: Icon(Icons.email),
                                    controller: _emailController,
                                    hint: 'Email',
                                    obscure: false,
                                    keyboardType: TextInputType.emailAddress,
                                    textAlign: TextAlign.start),
                              ),
                              _buildSpacing(),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20.0),
                                child: _buildTextFeild(
                                    icon: Icon(Icons.vpn_key),
                                    controller: _passwordController,
                                    hint: 'Password',
                                    obscure: true,
                                    textAlign: TextAlign.start),
                              ),
                              _buildForgotPasswordFlatButton(),
                              _buildSpacing(),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: InkWell(
                                  onTap: () {},
                                  child: Container(
                                    height: 50.0,
                                    width: double.infinity,
                                    color: Colors.blue,
                                    child: Center(
                                      child: Text(
                                        "Login",
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
                              SocialIcons(
                                onPressed: () {},
                              ),
                              _buildCreateAccountFlatButton(),
                            ],
                          ),
                  ),
                ),
        ],
      ),
    );
  }

  Widget _buildSpacing() {
    return SizedBox(height: 10.0);
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

  void _submitForm() {}

  Widget _buildForgotPasswordFlatButton() {
    return Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0.0, backgroundColor: Colors.transparent,
        ),
        child: Text('Forgot password?',
            style: TextStyle(
                fontFamily: "Sofia",
                fontWeight: FontWeight.w300,
                fontSize: 15.0,
                color: Colors.white)),
        onPressed: () {
          print('Forgot pass');
          setState(() {
            loading = false;
          });
        },
      ),
    );
  }

  Widget _buildCreateAccountFlatButton() {
    return Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0.0, backgroundColor: Colors.transparent,
        ),
        child: Text('Don\'t have an account',
            style: TextStyle(
                fontFamily: "Sofia",
                fontWeight: FontWeight.w300,
                fontSize: 15.0,
                color: Colors.white)),
        onPressed: () {
          setState(() {
            loading = false;
          });
        },
      ),
    );
  }

  Widget _buildTextFeild({
    String? hint,
    TextEditingController? controller,
    TextInputType? keyboardType,
    required bool obscure,
    Widget? icon,
    required TextAlign textAlign,
  }) {
    return Container(
      height: 58.0,
      color: Colors.white70,
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 10.0),
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
//            border: OutlineInputBorder(
//              borderSide: BorderSide(color: Colors.black),
//              borderRadius: BorderRadius.circular(0.0),
//            ),
//            focusedBorder: OutlineInputBorder(
//              borderSide: BorderSide(color: Colors.black),
//              borderRadius: BorderRadius.circular(0.0),
//            ),
//            enabledBorder: OutlineInputBorder(
//              borderSide: BorderSide(color: Colors.black),
//              borderRadius: BorderRadius.circular(0.0),
//            ),
          ),
        ),
      ),
    );
  }

  bool isEmpty() {
    setState(() {
      if (_emailController.text.trim() != '' &&
          _passwordController.text.trim() != '') {
        isEnable = true;
      } else {
        isEnable = false;
      }
    });
    return isEnable;
  }
}
